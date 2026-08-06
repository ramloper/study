/**
 * Seed 산업안전기사 questions into Supabase (bypasses SQL Editor size limit).
 *
 * Usage:
 *   export NEXT_PUBLIC_SUPABASE_URL=https://YOUR.supabase.co
 *   export SUPABASE_SERVICE_ROLE_KEY=eyJ...   # Settings → API → service_role (secret)
 *   pnpm seed:isan
 *
 * Optional: load from apps/web/.env.local if vars not set.
 */
import { createHash } from "node:crypto";
import { createRequire } from "node:module";
import { readFileSync, existsSync } from "node:fs";
import { resolve, dirname } from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = dirname(fileURLToPath(import.meta.url));
const root = resolve(__dirname, "..");
const require = createRequire(resolve(root, "apps/web/package.json"));
const { createClient } = require("@supabase/supabase-js");

function loadEnvLocal() {
  const p = resolve(root, "apps/web/.env.local");
  if (!existsSync(p)) return;
  for (const line of readFileSync(p, "utf8").split("\n")) {
    const m = line.match(/^\s*([A-Z0-9_]+)\s*=\s*(.*)\s*$/);
    if (!m) continue;
    const key = m[1];
    let val = m[2].replace(/^["']|["']$/g, "");
    if (!process.env[key]) process.env[key] = val;
  }
}

loadEnvLocal();

const url = process.env.NEXT_PUBLIC_SUPABASE_URL?.trim();
const serviceKey = process.env.SUPABASE_SERVICE_ROLE_KEY?.trim();

if (!url || !serviceKey) {
  console.error(`
Missing env.

1) Supabase Dashboard → Project Settings → API
2) Copy:
   - Project URL  → NEXT_PUBLIC_SUPABASE_URL
   - service_role  → SUPABASE_SERVICE_ROLE_KEY  (secret, not anon)

Then:

  export NEXT_PUBLIC_SUPABASE_URL=https://xxxx.supabase.co
  export SUPABASE_SERVICE_ROLE_KEY=eyJhbG...
  pnpm seed:isan

Or put SUPABASE_SERVICE_ROLE_KEY in apps/web/.env.local (never commit).
`);
  process.exit(1);
}

try {
  const payload = JSON.parse(
    Buffer.from(serviceKey.split(".")[1], "base64url").toString("utf8")
  );
  if (payload.role && payload.role !== "service_role") {
    console.error(
      `[seed:isan] Wrong key role: "${payload.role}" — use service_role, not anon.`
    );
    process.exit(1);
  }
} catch {
  /* ignore */
}

const SUBJECT_ID = "11111111-1111-1111-1111-111111111104";

function uid(s) {
  const h = createHash("md5").update(s).digest("hex");
  return [
    h.slice(0, 8),
    h.slice(8, 12),
    h.slice(12, 16),
    h.slice(16, 20),
    h.slice(20, 32),
  ].join("-");
}

const jsonPath = resolve(root, "content/industrial-safety-questions.json");
const questions = JSON.parse(readFileSync(jsonPath, "utf8"));

const supabase = createClient(url, serviceKey, {
  auth: { persistSession: false, autoRefreshToken: false },
});

async function main() {
  console.log(`[seed] ${questions.length} questions → ${url}`);

  const { error: subErr } = await supabase.from("subjects").upsert(
    {
      id: SUBJECT_ID,
      name: "산업안전기사",
      slug: "industrial-safety",
      sort_order: 5,
      is_active: true,
    },
    { onConflict: "id" }
  );
  if (subErr) throw subErr;
  console.log("[seed] subject ok");

  const BATCH = 25;
  let ok = 0;
  for (let i = 0; i < questions.length; i += BATCH) {
    const slice = questions.slice(i, i + BATCH);
    for (let j = 0; j < slice.length; j++) {
      const q = slice[j];
      const number = i + j + 1;
      const qid = uid(`isan-q-${q.exam}-${q.number}`);

      const { error: qErr } = await supabase.from("questions").upsert(
        {
          id: qid,
          subject_id: SUBJECT_ID,
          type: "mcq",
          body: q.body,
          difficulty: 2,
          number,
          is_active: true,
        },
        { onConflict: "id" }
      );
      if (qErr) throw new Error(`question ${number}: ${qErr.message}`);

      const options = q.options.map((body, sort_order) => ({
        id: uid(`isan-o-${q.exam}-${q.number}-${sort_order}`),
        question_id: qid,
        body,
        sort_order,
      }));

      const { error: oErr } = await supabase
        .from("question_options")
        .upsert(options, { onConflict: "id" });
      if (oErr) throw new Error(`options ${number}: ${oErr.message}`);

      const correctId = options[q.answer].id;
      const { error: aErr } = await supabase.from("question_answers").upsert(
        {
          question_id: qid,
          correct_option_id: correctId,
          answer_text: q.answerLabel,
          explanation: q.explain,
          concepts: ["산업안전기사", q.exam],
        },
        { onConflict: "question_id" }
      );
      if (aErr) throw new Error(`answer ${number}: ${aErr.message}`);
      ok++;
    }
    console.log(`[seed] ${Math.min(i + BATCH, questions.length)} / ${questions.length}`);
  }

  console.log(`[seed] done — ${ok} questions`);
}

main().catch((e) => {
  console.error("[seed] failed:", e.message || e);
  process.exit(1);
});
