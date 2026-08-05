#!/usr/bin/env python3
"""
Industrial safety PDF: high-quality re-extract.

Strategy (hybrid):
  1) Body / options / answers from embedded text (pdfplumber 2-col) — layout OK
  2) Explanations from page-render + tesseract kor+eng (cleaner Hangul prose)

Incremental: caches rendered pages + OCR text under /tmp/sanan_ocr/
"""
from __future__ import annotations

import json
import re
import subprocess
import sys
import time
from pathlib import Path

import pdfplumber
import pytesseract
from PIL import Image

PDF = Path("/Users/kimwooram/Downloads/2026 에듀윌 산업안전기사_1 기출문제편.pdf")
ROOT = Path(__file__).resolve().parents[1]
OUT = Path("/tmp/sanan_ocr")
PAGES = OUT / "pages"
TEXTS = OUT / "texts"
EXAM_DIR = OUT / "exams"
for d in (OUT, PAGES, TEXTS, EXAM_DIR):
    d.mkdir(parents=True, exist_ok=True)

FINAL_JSON = ROOT / "content" / "industrial-safety-questions.json"
DPI = 220

RANGES: list[tuple[str, int, int]] = [
    ("2025-1", 6, 32),
    ("2025-2", 33, 58),
    ("2025-3", 59, 85),
    ("2024-1", 86, 113),
    ("2024-2", 114, 140),
    ("2024-3", 141, 171),
    ("2023-1", 172, 199),
    ("2023-2", 200, 228),
    ("2023-3", 229, 257),
    ("2022-1", 258, 285),
    ("2022-2", 286, 316),
    ("2022-3", 317, 344),
    ("2021-1", 345, 372),
    ("2021-2", 373, 399),
    ("2021-3", 400, 427),
    ("2020-12", 428, 453),
    ("2020-3", 454, 480),
    ("2020-4", 481, 507),
    ("2019-1", 508, 533),
    ("2019-2", 534, 559),
    ("2019-3", 560, 591),
]

CIRC = {"①": 0, "②": 1, "③": 2, "④": 3}
MARK = ["①", "②", "③", "④"]


def log(msg: str) -> None:
    print(msg, flush=True)


def clean(s: str) -> str:
    s = re.sub(r"\s+", " ", s)
    s = re.sub(r"CHAPTER\s*\d+[^\n]*", " ", s, flags=re.I)
    return s.strip(" ·•-\t|")


def parse_answers(text: str) -> dict[int, int]:
    ans: dict[int, int] = {}
    for line in text.splitlines():
        if "정답" not in line:
            continue
        for m in re.finditer(r"(\d{3})\s*([①②③④])", line):
            n = int(m.group(1))
            if 1 <= n <= 120:
                ans[n] = CIRC[m.group(2)]
    return ans


def parse_col_structure(text: str, answers: dict[int, int], exam: str) -> dict[int, dict]:
    """Body+options from embedded text layer."""
    if not text:
        return {}
    markers: list[tuple[int, int]] = []
    for m in re.finditer(r"(?m)^\s*(\d{3})\s*$", text):
        n = int(m.group(1))
        if 1 <= n <= 120:
            markers.append((n, m.end()))
    for m in re.finditer(r"(?m)^\s*(\d{3})\s+(\S)", text):
        n = int(m.group(1))
        if 1 <= n <= 120:
            markers.append((n, m.start(2)))
    markers = sorted({(n, p) for n, p in markers}, key=lambda x: x[1])

    out: dict[int, dict] = {}
    for i, (n, pos) in enumerate(markers):
        end = markers[i + 1][1] - 1 if i + 1 < len(markers) else min(len(text), pos + 1000)
        block = text[pos:end]
        oms = list(re.finditer(r"([①②③④])\s*([^\n①②③④]{1,180})", block))
        if len(oms) < 4:
            continue
        options: list[str] = []
        seen: set[str] = set()
        for om in oms:
            mark = om.group(1)
            if mark in seen:
                if mark == "①":
                    options = []
                    seen = set()
                else:
                    continue
            o = clean(om.group(2))
            if len(o) < 1 or len(o) > 150:
                break
            if re.search(r"CHAPTER|정답|기출문제편", o):
                break
            options.append(o)
            seen.add(mark)
            if len(options) == 4:
                break
        if len(options) != 4 or n not in answers:
            continue
        body = clean(block[: oms[0].start()])
        body = re.sub(r"^\d+\s*", "", body)
        if len(body) < 12 or len(body) > 240:
            continue
        if not re.search(r"[가-힣]{6,}", body):
            continue
        if re.search(r"정답|기출문제편|확실한 합격", body):
            continue
        if not re.search(
            r"(것은|인가|하는가|말인가|있는가|옳은|틀린|해당|설명|기준|조건|방법|종류|단계|얼마|몇|어느|\?)",
            body,
        ):
            continue
        if any(re.search(r"0\d{2}", o) for o in options):
            continue
        ai = answers[n]
        out[n] = {
            "exam": exam,
            "number": n,
            "body": body,
            "options": options,
            "answer": ai,
            "answerLabel": f"{MARK[ai]} {options[ai]}",
            "explain": "",  # filled later from OCR
            "concepts": ["산업안전기사", exam],
            "difficulty": 2,
        }
    return out


def extract_structure_for_exam(name: str, start: int, end: int) -> list[dict]:
    cache = EXAM_DIR / f"{name}-structure.json"
    if cache.exists():
        data = json.loads(cache.read_text(encoding="utf-8"))
        log(f"[structure cache] {name}: {len(data)}")
        return data

    log(f"[structure] {name} pages {start}-{end}")
    full: list[str] = []
    left_all: list[str] = []
    right_all: list[str] = []
    with pdfplumber.open(PDF) as pdf:
        for pi in range(start - 1, min(end, len(pdf.pages))):
            page = pdf.pages[pi]
            mid = page.width / 2
            left = page.crop((0, 0, mid - 5, page.height))
            right = page.crop((mid + 5, 0, page.width, page.height))
            full.append(page.extract_text() or "")
            left_all.append(left.extract_text() or "")
            right_all.append(right.extract_text() or "")
    answers = parse_answers("\n".join(full))
    L = parse_col_structure("\n".join(left_all), answers, name)
    R = parse_col_structure("\n".join(right_all), answers, name)
    merged = {**L, **R}
    qs = [merged[k] for k in sorted(merged)]
    cache.write_text(json.dumps(qs, ensure_ascii=False, indent=2), encoding="utf-8")
    log(f"[structure] {name}: {len(qs)} (answers footer {len(answers)})")
    return qs


def render_page(page_no: int) -> Path:
    existing = list(PAGES.glob(f"p{page_no:04d}*.png"))
    if existing:
        return existing[0]
    prefix = PAGES / f"p{page_no:04d}"
    subprocess.run(
        [
            "pdftoppm",
            "-png",
            "-r",
            str(DPI),
            "-f",
            str(page_no),
            "-l",
            str(page_no),
            str(PDF),
            str(prefix),
        ],
        check=True,
        capture_output=True,
    )
    existing = list(PAGES.glob(f"p{page_no:04d}*.png"))
    if not existing:
        raise FileNotFoundError(f"page {page_no}")
    return existing[0]


def ocr_image(img: Image.Image) -> str:
    return pytesseract.image_to_string(img, lang="kor+eng", config="--oem 1 --psm 6")


def ocr_page_cached(page_no: int) -> str:
    cache = TEXTS / f"p{page_no:04d}.txt"
    # re-OCR if old low-quality short file from pilot (optional keep)
    if cache.exists() and cache.stat().st_size > 200:
        # if file mentions ===LEFT=== keep
        t = cache.read_text(encoding="utf-8")
        if "===LEFT===" in t:
            return t
    png = render_page(page_no)
    im = Image.open(png).convert("RGB")
    w, h = im.size
    mid = w // 2
    left = im.crop((int(w * 0.02), int(h * 0.03), mid - 3, int(h * 0.97)))
    right = im.crop((mid + 3, int(h * 0.03), int(w * 0.98), int(h * 0.97)))
    lt = ocr_image(left)
    rt = ocr_image(right)
    text = f"===LEFT===\n{lt}\n===RIGHT===\n{rt}\n"
    cache.write_text(text, encoding="utf-8")
    return text


def extract_explains_from_ocr(ocr_text: str) -> dict[int, str]:
    """Map question number -> explanation Hangul from OCR text."""
    text = ocr_text.replace("\x0c", "\n")
    explains: dict[int, str] = {}

    for m in re.finditer(
        r"(?m)^\s*(\d{3})\s*$([\s\S]*?)(?=^\s*\d{3}\s*$|^\s*\d{3}\s+|\Z)",
        text,
    ):
        n = int(m.group(1))
        if not (1 <= n <= 120):
            continue
        block = m.group(2)
        lines = block.splitlines()
        prose: list[str] = []
        seen_stem = False
        for line in lines:
            s = line.strip().lstrip("|ㅣ").strip()
            if not s:
                continue
            if re.search(r"CHAPTER|정답\s*[|I]|기출문제편|자동 채점", s, re.I):
                break

            hangul = len(re.findall(r"[가-힣]", s))

            # Question stem (skip)
            if re.search(r"(것은|인가|하는가|말인가)\s*\??\s*$", s) or (
                hangul >= 8 and s.endswith("?")
            ):
                seen_stem = True
                continue

            # Option lines (skip) — marks OCR as @®© etc.
            if re.match(r"^[@®©①②③④0-9\(]", s) and hangul < 18:
                continue
            if re.search(r"[@®©]", s) and hangul < 15 and len(s) < 60:
                continue

            # Prefer explanation-like lines
            is_exp = bool(
                re.search(
                    r"(한다|이다|이다\.|해당|말한다|의미한다|필요|기준|원칙|단계|법칙|따라|경우|특징)",
                    s,
                )
                or s.startswith("ㆍ")
                or s.startswith("•")
                or s.startswith("·")
                or s.startswith("+")
            )
            if hangul >= 10 and (is_exp or (seen_stem and hangul >= 14)):
                # skip if still looks like option list fragment
                if re.fullmatch(r"[@®©①-④\s\d\[\]%.,A-Za-z\-]+", s):
                    continue
                prose.append(s)

        if not prose:
            continue
        exp = clean(" ".join(prose))
        exp = re.sub(r"^[@®©①-④\d\)\.\s]+", "", exp)
        exp = re.sub(r"\s*Identification\)?", "", exp, flags=re.I)
        hangul = len(re.findall(r"[가-힣]", exp))
        if hangul >= 12 and hangul / max(len(exp), 1) >= 0.4:
            exp = re.sub(r"\s*CHAPTER.*$", "", exp, flags=re.I)
            # drop if still mostly question body keywords without 한다/이다
            if re.search(r"(것은|하는가)\s*$", exp):
                continue
            explains[n] = exp[:550]
    return explains


def attach_explains(qs: list[dict], start: int, end: int, name: str) -> list[dict]:
    cache = EXAM_DIR / f"{name}-with-explain.json"
    if cache.exists():
        data = json.loads(cache.read_text(encoding="utf-8"))
        log(f"[explain cache] {name}: {len(data)}")
        return data

    log(f"[ocr] {name} pages {start}-{end}")
    t0 = time.time()
    all_explains: dict[int, str] = {}
    for p in range(start, end + 1):
        try:
            t = ocr_page_cached(p)
            got = extract_explains_from_ocr(t)
            # later page can override if longer
            for n, e in got.items():
                if n not in all_explains or len(e) > len(all_explains[n]):
                    all_explains[n] = e
            if (p - start) % 3 == 0:
                log(f"  OCR {p}/{end} explains so far {len(all_explains)}")
        except Exception as e:
            log(f"  OCR fail {p}: {e}")

    rich = 0
    for q in qs:
        n = q["number"]
        mark = MARK[q["answer"]]
        opt = q["options"][q["answer"]]
        if n in all_explains:
            exp = all_explains[n]
            # don't use if it's basically the question body
            if q["body"][:20] in exp:
                exp = ""
            if exp:
                q["explain"] = f"정답 {mark}. {exp}"
                rich += 1
            else:
                q["explain"] = f"정답 {mark}. {opt}"
        else:
            q["explain"] = f"정답 {mark}. {opt}"

    cache.write_text(json.dumps(qs, ensure_ascii=False, indent=2), encoding="utf-8")
    log(
        f"[ocr done] {name}: rich_explain={rich}/{len(qs)} in {time.time()-t0:.0f}s"
    )
    return qs


def main() -> int:
    if not PDF.exists():
        log(f"missing PDF: {PDF}")
        return 1

    only = sys.argv[1] if len(sys.argv) > 1 else None  # e.g. 2025-1
    all_q: list[dict] = []

    for name, a, b in RANGES:
        if only and name != only:
            continue
        qs = extract_structure_for_exam(name, a, b)
        qs = attach_explains(qs, a, b, name)
        all_q.extend(qs)

    # dedupe
    seen: set[str] = set()
    uniq: list[dict] = []
    for q in all_q:
        k = re.sub(r"\s+", "", q["body"])[:100]
        if k in seen:
            continue
        seen.add(k)
        uniq.append(q)

    for i, q in enumerate(uniq, 1):
        q["global_number"] = i

    FINAL_JSON.parent.mkdir(parents=True, exist_ok=True)
    FINAL_JSON.write_text(json.dumps(uniq, ensure_ascii=False, indent=2), encoding="utf-8")
    rich = sum(1 for q in uniq if len(re.findall(r"[가-힣]", q["explain"])) >= 30)
    log(f"[final] {len(uniq)} questions, rich_explain≈{rich} → {FINAL_JSON}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
