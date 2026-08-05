import type { SupabaseClient } from "@supabase/supabase-js";

import type { Database, Subject } from "@/lib/supabase/database.types";

export type SubjectChoice = Subject & {
  is_enabled: boolean;
  has_row: boolean;
};

type Client = SupabaseClient<Database>;

export async function listSubjectChoices(
  supabase: Client,
  userId: string
): Promise<SubjectChoice[]> {
  const [{ data: subjects, error: sErr }, { data: userSubjects, error: uErr }] =
    await Promise.all([
      supabase
        .from("subjects")
        .select("*")
        .eq("is_active", true)
        .order("sort_order", { ascending: true }),
      supabase.from("user_subjects").select("*").eq("user_id", userId),
    ]);

  if (sErr) throw sErr;
  if (uErr) throw uErr;

  const map = new Map(
    (userSubjects ?? []).map((u) => [u.subject_id, u] as const)
  );

  return (subjects ?? []).map((s) => {
    const row = map.get(s.id);
    return {
      ...s,
      is_enabled: row?.is_enabled ?? false,
      has_row: Boolean(row),
    };
  });
}

export async function countEnabledSubjects(
  supabase: Client,
  userId: string
): Promise<number> {
  const { count, error } = await supabase
    .from("user_subjects")
    .select("*", { count: "exact", head: true })
    .eq("user_id", userId)
    .eq("is_enabled", true);
  if (error) throw error;
  return count ?? 0;
}

/**
 * Soft toggle:
 * - enable: upsert is_enabled=true
 * - disable: update is_enabled=false (keep row)
 */
export async function setSubjectEnabled(
  supabase: Client,
  userId: string,
  subjectId: string,
  enabled: boolean,
  sortOrder = 0
) {
  const { error } = await supabase.from("user_subjects").upsert(
    {
      user_id: userId,
      subject_id: subjectId,
      is_enabled: enabled,
      sort_order: sortOrder,
    },
    { onConflict: "user_id,subject_id" }
  );
  if (error) throw error;
}

export async function saveSubjectSelection(
  supabase: Client,
  userId: string,
  enabledSubjectIds: string[]
) {
  const choices = await listSubjectChoices(supabase, userId);
  const enabledSet = new Set(enabledSubjectIds);

  // Ensure every catalog subject has a row reflecting current selection
  for (const [index, subject] of choices.entries()) {
    const shouldEnable = enabledSet.has(subject.id);
    if (!subject.has_row && !shouldEnable) continue; // never touched, stay absent
    await setSubjectEnabled(
      supabase,
      userId,
      subject.id,
      shouldEnable,
      index
    );
  }

  // Subjects that were never listed? still upsert enabled ones
  for (const [index, id] of enabledSubjectIds.entries()) {
    await setSubjectEnabled(supabase, userId, id, true, index);
  }
}
