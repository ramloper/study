/**
 * Build shared TS + SQL chunks from content/industrial-safety-questions.json
 */
import { createHash } from "node:crypto";
import { readFileSync, writeFileSync, mkdirSync, readdirSync, unlinkSync } from "node:fs";
import { resolve, dirname } from "node:path";
import { fileURLToPath } from "node:url";

const root = resolve(dirname(fileURLToPath(import.meta.url)), "..");
const qs = JSON.parse(
  readFileSync(resolve(root, "content/industrial-safety-questions.json"), "utf8")
);

function uid(s) {
  const h = createHash("md5").update(s).digest("hex");
  return [h.slice(0, 8), h.slice(8, 12), h.slice(12, 16), h.slice(16, 20), h.slice(20)].join("-");
}
function js(s) {
  return JSON.stringify(s);
}

const lines = [
  'import type { Question } from "./types";',
  "",
  "/**",
  ` * 산업안전기사 필기 ${qs.length}문항 — hybrid extract (text structure + OCR explain)`,
  " * 개인 학습용. 공개 재배포 금지.",
  " */",
  "export const INDUSTRIAL_SAFETY_QUESTIONS: Question[] = [",
];
for (let i = 0; i < qs.length; i++) {
  const q = qs[i];
  const qid = `isan-${q.exam}-${String(q.number).padStart(3, "0")}`;
  const opts = q.options.map(js).join(", ");
  lines.push(
    "  {",
    `    id: ${js(qid)},`,
    `    type: "mcq",`,
    `    subject: "산업안전기사",`,
    `    number: ${i + 1},`,
    `    body: ${js(q.body)},`,
    `    options: [${opts}],`,
    `    answer: ${q.answer},`,
    `    answerLabel: ${js(q.answerLabel)},`,
    `    explain: ${js(q.explain)},`,
    `    concepts: ${js(["산업안전기사", q.exam])},`,
    "    difficulty: 2,",
    "  },"
  );
}
lines.push("];\n");
writeFileSync(
  resolve(root, "packages/shared/src/questions-industrial-safety.ts"),
  lines.join("\n"),
  "utf8"
);

const subj = "11111111-1111-1111-1111-111111111104";
const chunkDir = resolve(root, "supabase/seed-chunks");
mkdirSync(chunkDir, { recursive: true });
for (const f of readdirSync(chunkDir)) {
  if (f.endsWith(".sql")) unlinkSync(resolve(chunkDir, f));
}
writeFileSync(
  resolve(chunkDir, "00-subject.sql"),
  `-- subject\ninsert into public.subjects (id, name, slug, sort_order) values\n  ('${subj}', '산업안전기사', 'industrial-safety', 5)\non conflict (slug) do update set name = excluded.name, is_active = true;\n`,
  "utf8"
);

const CHUNK = 40;
for (let pi = 0; pi < qs.length; pi += CHUNK) {
  const part = qs.slice(pi, pi + CHUNK);
  const cn = Math.floor(pi / CHUNK) + 1;
  const sql = [`-- chunk ${cn}`];
  for (let j = 0; j < part.length; j++) {
    const q = part[j];
    const number = pi + j + 1;
    const qid = uid(`isan-q-${q.exam}-${q.number}`);
    const body = q.body.replace(/'/g, "''");
    sql.push(
      `insert into public.questions (id, subject_id, type, body, difficulty, number) values\n  ('${qid}', '${subj}', 'mcq', '${body}', 2, ${number})\non conflict (id) do update set body = excluded.body, number = excluded.number;`
    );
    const oids = [];
    for (let k = 0; k < q.options.length; k++) {
      const oid = uid(`isan-o-${q.exam}-${q.number}-${k}`);
      oids.push(oid);
      const ob = q.options[k].replace(/'/g, "''");
      sql.push(
        `insert into public.question_options (id, question_id, body, sort_order) values\n  ('${oid}', '${qid}', '${ob}', ${k})\non conflict (id) do update set body = excluded.body;`
      );
    }
    const al = q.answerLabel.replace(/'/g, "''");
    const ex = q.explain.replace(/'/g, "''");
    const exam = q.exam.replace(/'/g, "''");
    sql.push(
      `insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values\n  ('${qid}', '${oids[q.answer]}', '${al}', '${ex}', array['산업안전기사','${exam}'])\non conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;`
    );
    sql.push("");
  }
  writeFileSync(resolve(chunkDir, `${String(cn).padStart(2, "0")}-questions.sql`), sql.join("\n"), "utf8");
}

console.log(`exported ${qs.length} questions → TS + ${Math.ceil(qs.length / CHUNK)} SQL chunks`);
