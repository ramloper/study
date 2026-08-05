import {
  QUESTIONS,
  getNextQuestion as getLocalNext,
  getQuestionById as getLocalById,
  type Question,
} from "@study/shared";

import { tryCreateClient } from "@/lib/supabase/client";
import type { Database } from "@/lib/supabase/database.types";

type DbQuestion = Database["public"]["Tables"]["questions"]["Row"];
type DbOption = Database["public"]["Tables"]["question_options"]["Row"];
type DbAnswer = Database["public"]["Tables"]["question_answers"]["Row"];
type Client = NonNullable<ReturnType<typeof tryCreateClient>>;

function mapDbQuestion(
  q: DbQuestion,
  options: DbOption[],
  answer: DbAnswer | null,
  subjectName: string
): QuestionExtra {
  const sorted = [...options].sort((a, b) => a.sort_order - b.sort_order);
  if (q.type === "mcq") {
    const correctIdx = sorted.findIndex(
      (o) => o.id === answer?.correct_option_id
    );
    return {
      id: q.id,
      type: "mcq",
      subject: subjectName,
      number: q.number ?? 0,
      body: q.body,
      options: sorted.map((o) => o.body),
      answer: correctIdx >= 0 ? correctIdx : 0,
      answerLabel: answer?.answer_text ?? "",
      explain: answer?.explanation ?? "",
      concepts: answer?.concepts ?? [],
      difficulty: (q.difficulty as 1 | 2 | 3) ?? 2,
      _optionIds: sorted.map((o) => o.id),
    };
  }

  return {
    id: q.id,
    type: "short",
    subject: subjectName,
    number: q.number ?? 0,
    body: q.body,
    answer: answer?.answer_text ?? "",
    answerLabel: answer?.answer_text ?? "",
    explain: answer?.explanation ?? "",
    concepts: answer?.concepts ?? [],
    difficulty: (q.difficulty as 1 | 2 | 3) ?? 2,
  };
}

export type QuestionExtra = Question & { _optionIds?: string[] };

/**
 * Fetch next question from enabled subjects. Falls back to local seed if Supabase off.
 */
export async function fetchNextQuestion(
  excludeId?: string
): Promise<QuestionExtra | null> {
  const supabase = tryCreateClient();
  if (!supabase) {
    const q = excludeId ? getLocalNext(excludeId) : getLocalNext();
    return q ?? null;
  }

  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) return null;

  const { data: enabled, error: e1 } = await supabase
    .from("user_subjects")
    .select("subject_id")
    .eq("user_id", user.id)
    .eq("is_enabled", true);

  if (e1) throw e1;
  const subjectIds = (enabled ?? []).map((r) => r.subject_id);
  if (subjectIds.length === 0) return null;

  let query = supabase
    .from("questions")
    .select("*")
    .eq("is_active", true)
    .in("subject_id", subjectIds);

  if (excludeId) {
    query = query.neq("id", excludeId);
  }

  const { data: rows, error: e2 } = await query.limit(20);
  if (e2) throw e2;

  let pool = rows ?? [];
  if (!pool.length && excludeId) {
    const { data: fallback, error: e3 } = await supabase
      .from("questions")
      .select("*")
      .eq("is_active", true)
      .in("subject_id", subjectIds)
      .limit(20);
    if (e3) throw e3;
    pool = fallback ?? [];
  }
  if (!pool.length) return null;

  const pick = pool[Math.floor(Math.random() * pool.length)];
  return hydrateQuestion(supabase, pick);
}

export async function fetchQuestionById(
  id: string
): Promise<QuestionExtra | null> {
  if (id === "next") return fetchNextQuestion();

  const supabase = tryCreateClient();
  if (!supabase) {
    return getLocalById(id) ?? null;
  }

  const { data, error } = await supabase
    .from("questions")
    .select("*")
    .eq("id", id)
    .maybeSingle();

  if (error) throw error;
  if (!data) return getLocalById(id) ?? null;

  return hydrateQuestion(supabase, data);
}

async function hydrateQuestion(
  supabase: Client,
  q: DbQuestion
): Promise<QuestionExtra> {
  const [{ data: options }, { data: answer }, { data: subject }] =
    await Promise.all([
      supabase
        .from("question_options")
        .select("*")
        .eq("question_id", q.id)
        .order("sort_order"),
      supabase
        .from("question_answers")
        .select("*")
        .eq("question_id", q.id)
        .maybeSingle(),
      supabase
        .from("subjects")
        .select("name")
        .eq("id", q.subject_id)
        .maybeSingle(),
    ]);

  return mapDbQuestion(
    q,
    options ?? [],
    answer,
    subject?.name ?? "주제"
  );
}

export async function recordAttempt(input: {
  questionId: string;
  selectedIndex?: number;
  optionIds?: string[];
  answerText?: string;
  isCorrect: boolean;
}) {
  const supabase = tryCreateClient();
  if (!supabase) return;

  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) return;

  let selectedOptionId: string | null = null;
  if (
    input.selectedIndex != null &&
    input.optionIds &&
    input.optionIds[input.selectedIndex]
  ) {
    selectedOptionId = input.optionIds[input.selectedIndex];
  }

  const { error } = await supabase.from("attempts").insert({
    user_id: user.id,
    question_id: input.questionId,
    selected_option_id: selectedOptionId,
    answer_text: input.answerText ?? null,
    is_correct: input.isCorrect,
  });
  if (error) {
    console.warn("attempt insert failed", error.message);
  }
}

export function localQuestionCount() {
  return QUESTIONS.length;
}
