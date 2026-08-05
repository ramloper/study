# PDF → 문제 DB 적재 방안 (나중에 적용)

사용자가 구한 **합법 이용 가능** PDF/자료를 받았을 때 쓰는 파이프라인 초안.

## 목표

```
PDF / DOCX / 이미지
  → 텍스트·문항 구조 추출
  → 검수(사람)
  → questions / options / answers JSON
  → Supabase 일괄 insert
```

스크래핑이 아니라 **오프라인 파일 import**.

---

## 방안 비교

| 방식 | 언제 | 장점 | 단점 |
|------|------|------|------|
| **A. 수동 CSV/JSON** | 문항 수 적음 (~100) | 정확, 단순 | 노가다 |
| **B. PDF 텍스트 추출 + 규칙 파서** | 텍스트 PDF, 형식이 일정 | 자동화 가능 | 레이아웃 깨지면 실패 |
| **C. OCR (스캔 PDF)** | 이미지 위주 PDF | 스캔본 가능 | 오인식, 후처리 필수 |
| **D. LLM 구조화** | 형식이 들쭉날쭉 | 객관식/주관식 분리 잘 됨 | 비용·환각 → **검수 필수** |
| **E. 하이브리드 (권장)** | 실사용 | B/C + D + 사람 검수 | 파이프라인 구축 필요 |

**권장: E**  
PDF → 텍스트/OCR → LLM으로 문항 JSON 초안 → 사람이 검수 → DB.

---

## 권장 파이프라인 (상세)

### 1) 수집·전처리
- PDF를 `content/inbox/` 에 저장 (git LFS 또는 로컬 only, 저장소 공개 주의)
- 라이선스/이용 가능 여부 메모 (`LICENSE.txt`)
- 텍스트 PDF: `pdftotext` / `pdf-parse` / `unpdf`
- 스캔본: OCR (`tesseract` 한글, 또는 Cloud Vision / Document AI)

### 2) 문항 구조화
목표 JSON (앱 스키마 대응):

```json
{
  "subject_slug": "industrial-safety",
  "type": "mcq",
  "body": "문제 본문",
  "options": ["① …", "② …", "③ …", "④ …"],
  "answer_index": 2,
  "answer_text": "③ …",
  "explanation": "해설 (있으면)",
  "concepts": ["안전관리론"],
  "difficulty": 2,
  "number": 12,
  "source": { "file": "xxx.pdf", "page": 14 }
}
```

LLM 프롬프트 예:
- “다음 텍스트에서 객관식/주관식 문항만 추출. 없는 해설은 null. 추측 금지.”

### 3) 검수 UI (나중에 만들 기능)
- `/admin/import` (관리자 only)
- 문항 리스트 미리보기 · 수정 · 승인
- 승인분 batch insert

### 4) DB 적재
- Supabase service role (서버 only) 또는 SQL seed
- `subjects` 없으면 생성 → `questions` → `question_options` → `question_answers`

### 5) 품질 체크
- options 4개 여부
- answer_index 범위
- 중복 body 해시
- 빈 explanation 허용 여부

---

## 기술 스택 후보

| 단계 | 도구 |
|------|------|
| 텍스트 PDF | `pdf-parse`, `unpdf`, Poppler `pdftotext` |
| OCR | Tesseract(kor+eng), Apple Vision, Google Document AI |
| 구조화 | 로컬/클라우드 LLM + JSON schema |
| 배치 업로드 | Node 스크립트 + `@supabase/supabase-js` service role |
| 검수 | Next admin 페이지 |

---

## 디렉터리 제안 (나중에)

```
content/
  inbox/           # 원본 PDF (gitignore)
  extracted/       # 추출 텍스트
  staged/          # 검수 전 JSON
  approved/        # 승인 JSON
scripts/
  pdf-extract.ts
  pdf-structure.ts
  import-questions.ts
```

---

## 법적·운영 체크리스트

- [ ] PDF 이용 권한이 앱 DB 수록을 허용하는지
- [ ] 원문 그대로 vs 변형 허용 범위
- [ ] 출처 표기 필요 여부 (`source` 필드)
- [ ] 공개 배포 시 문제 노출 범위 (로그인 유저 only 등)

---

## 지금 당장 할 일 / 나중 할 일

**지금**
- 스키마 준비됨 (questions / options / answers)
- PDF 오면 이 문서 기준으로 import 스크립트 추가

**PDF 받는 즉시**
1. 샘플 2~3페이지로 추출 품질 테스트
2. 문항 패턴(번호, 선지 ①②③④) 확인
3. 파서 or LLM 템플릿 고정
4. 소량 적재 → 앱에서 풀이 확인 → 대량

---

문서 버전: 0.1
