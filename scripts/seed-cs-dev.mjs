/**
 * Seed CS/dev subjects + questions into Supabase.
 *
 *   export NEXT_PUBLIC_SUPABASE_URL=...
 *   export SUPABASE_SERVICE_ROLE_KEY=...   # service_role (not anon!)
 *   pnpm seed:cs
 */
import { createHash } from "node:crypto";
import { createRequire } from "node:module";
import { readFileSync, existsSync } from "node:fs";
import { resolve, dirname } from "node:path";
import { fileURLToPath } from "node:url";

const root = resolve(dirname(fileURLToPath(import.meta.url)), "..");
// Resolve deps from apps/web (pnpm monorepo)
const require = createRequire(resolve(root, "apps/web/package.json"));
const { createClient } = require("@supabase/supabase-js");

function loadEnvLocal() {
  const p = resolve(root, "apps/web/.env.local");
  if (!existsSync(p)) return;
  for (const line of readFileSync(p, "utf8").split("\n")) {
    const m = line.match(/^\s*([A-Z0-9_]+)\s*=\s*(.*)\s*$/);
    if (!m) continue;
    let val = m[2].replace(/^["']|["']$/g, "");
    if (!process.env[m[1]]) process.env[m[1]] = val;
  }
}
loadEnvLocal();

const url = process.env.NEXT_PUBLIC_SUPABASE_URL?.trim();
const key = process.env.SUPABASE_SERVICE_ROLE_KEY?.trim();
if (!url || !key) {
  console.error("Need NEXT_PUBLIC_SUPABASE_URL + SUPABASE_SERVICE_ROLE_KEY");
  process.exit(1);
}

// JWT payload role check (anon cannot insert questions under RLS)
try {
  const payload = JSON.parse(
    Buffer.from(key.split(".")[1], "base64url").toString("utf8")
  );
  if (payload.role && payload.role !== "service_role") {
    console.error(`
[seed:cs] Wrong key role: "${payload.role}"

Settings → API 에서 **service_role** 키를 복사하세요.
지금 넣은 건 anon 키라 시드 insert가 막힙니다.
`);
    process.exit(1);
  }
} catch {
  /* ignore parse errors */
}

function uid(s) {
  const h = createHash("md5").update(s).digest("hex");
  return [h.slice(0, 8), h.slice(8, 12), h.slice(12, 16), h.slice(16, 20), h.slice(20)].join("-");
}

const SUBJECTS = [
  { id: "11111111-1111-1111-1111-111111111101", name: "CS 기초", slug: "cs-basics", sort_order: 10 },
  { id: "11111111-1111-1111-1111-111111111103", name: "자료구조", slug: "data-structures", sort_order: 30 },
  { id: "11111111-1111-1111-1111-111111111105", name: "네트워크", slug: "network", sort_order: 40 },
  { id: "11111111-1111-1111-1111-111111111106", name: "운영체제", slug: "operating-systems", sort_order: 50 },
  { id: "11111111-1111-1111-1111-111111111107", name: "데이터베이스", slug: "database", sort_order: 60 },
  { id: "11111111-1111-1111-1111-111111111108", name: "프론트엔드", slug: "frontend", sort_order: 70 },
];

const bySlug = Object.fromEntries(SUBJECTS.map((s) => [s.name, s.id]));
// map subject display name -> id
const subjectId = {
  "CS 기초": "11111111-1111-1111-1111-111111111101",
  자료구조: "11111111-1111-1111-1111-111111111103",
  네트워크: "11111111-1111-1111-1111-111111111105",
  운영체제: "11111111-1111-1111-1111-111111111106",
  데이터베이스: "11111111-1111-1111-1111-111111111107",
  프론트엔드: "11111111-1111-1111-1111-111111111108",
};

const questions = JSON.parse(
  readFileSync(resolve(root, "content/cs-dev-questions.json"), "utf8")
);

const supabase = createClient(url, key, {
  auth: { persistSession: false, autoRefreshToken: false },
});

async function main() {
  console.log(`[seed:cs] ${questions.length} questions`);
  for (const s of SUBJECTS) {
    const { error } = await supabase.from("subjects").upsert(
      { ...s, is_active: true },
      { onConflict: "id" }
    );
    if (error) throw error;
  }
  console.log("[seed:cs] subjects ok");

  let i = 0;
  for (const q of questions) {
    i++;
    const sid = subjectId[q.subject];
    if (!sid) throw new Error(`unknown subject ${q.subject}`);
    const qid = uid(`cs-q-${q.id}`);
    const { error: qErr } = await supabase.from("questions").upsert(
      {
        id: qid,
        subject_id: sid,
        type: q.type,
        body: q.body,
        difficulty: q.difficulty ?? 2,
        number: q.number,
        is_active: true,
      },
      { onConflict: "id" }
    );
    if (qErr) throw new Error(`q ${q.id}: ${qErr.message}`);

    let correctOptionId = null;
    if (q.type === "mcq" && q.options) {
      const opts = q.options.map((body, sort_order) => ({
        id: uid(`cs-o-${q.id}-${sort_order}`),
        question_id: qid,
        body,
        sort_order,
      }));
      const { error: oErr } = await supabase
        .from("question_options")
        .upsert(opts, { onConflict: "id" });
      if (oErr) throw new Error(`opt ${q.id}: ${oErr.message}`);
      correctOptionId = opts[q.answer].id;
    }

    const { error: aErr } = await supabase.from("question_answers").upsert(
      {
        question_id: qid,
        correct_option_id: correctOptionId,
        answer_text: String(q.answerLabel ?? q.answer),
        explanation: q.explain,
        concepts: q.concepts ?? [],
      },
      { onConflict: "question_id" }
    );
    if (aErr) throw new Error(`ans ${q.id}: ${aErr.message}`);

    if (i % 20 === 0) console.log(`[seed:cs] ${i}/${questions.length}`);
  }
  console.log(`[seed:cs] done ${i}`);
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
