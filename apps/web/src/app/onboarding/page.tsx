"use client";

import { useEffect, useState } from "react";
import { useRouter } from "next/navigation";
import { toast } from "sonner";

import { SubjectPicker } from "@/components/subject-picker";
import { Button } from "@/components/ui/button";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { tryCreateClient } from "@/lib/supabase/client";
import {
  listSubjectChoices,
  saveSubjectSelection,
  type SubjectChoice,
} from "@/lib/subjects";

export default function OnboardingPage() {
  const router = useRouter();
  const [subjects, setSubjects] = useState<SubjectChoice[]>([]);
  const [selectedIds, setSelectedIds] = useState<string[]>([]);
  const [loading, setLoading] = useState(true);
  const [saving, setSaving] = useState(false);

  useEffect(() => {
    void (async () => {
      const supabase = tryCreateClient();
      if (!supabase) {
        setLoading(false);
        return;
      }
      const {
        data: { user },
      } = await supabase.auth.getUser();
      if (!user) {
        router.replace("/login");
        return;
      }
      try {
        const choices = await listSubjectChoices(supabase, user.id);
        setSubjects(choices);
        setSelectedIds(choices.filter((c) => c.is_enabled).map((c) => c.id));
      } catch (e) {
        toast.error(
          e instanceof Error ? e.message : "주제를 불러오지 못했어요"
        );
      } finally {
        setLoading(false);
      }
    })();
  }, [router]);

  async function onComplete() {
    if (selectedIds.length === 0) {
      toast.error("공부할 주제를 하나 이상 선택해 주세요");
      return;
    }
    const supabase = tryCreateClient();
    if (!supabase) return;
    const {
      data: { user },
    } = await supabase.auth.getUser();
    if (!user) return;

    setSaving(true);
    try {
      await saveSubjectSelection(supabase, user.id, selectedIds);
      toast.success("주제 선택 완료!");
      router.replace("/");
      router.refresh();
    } catch (e) {
      toast.error(e instanceof Error ? e.message : "저장에 실패했어요");
    } finally {
      setSaving(false);
    }
  }

  return (
    <div className="flex min-h-dvh items-center justify-center bg-background p-6">
      <Card className="w-full max-w-lg">
        <CardHeader>
          <p className="text-[13px] font-bold tracking-wide text-primary">
            시작하기
          </p>
          <CardTitle className="text-xl font-extrabold">
            공부할 주제를 골라 주세요
          </CardTitle>
          <p className="text-sm text-muted-foreground">
            하나 이상 선택해야 문제를 받을 수 있어요. 나중에 설정에서 바꿀 수
            있습니다.
          </p>
        </CardHeader>
        <CardContent className="flex flex-col gap-5">
          {loading ? (
            <p className="text-sm text-muted-foreground">불러오는 중…</p>
          ) : (
            <SubjectPicker
              subjects={subjects}
              selectedIds={selectedIds}
              onChange={setSelectedIds}
              disabled={saving}
            />
          )}
          {selectedIds.length === 0 && !loading && (
            <p className="text-[13px] font-semibold text-destructive">
              주제를 하나도 고르지 않으면 문제를 출제하지 않아요.
            </p>
          )}
          <Button
            className="h-11 font-bold"
            disabled={loading || saving || selectedIds.length === 0}
            onClick={() => void onComplete()}
          >
            {saving ? "저장 중…" : "선택 완료"}
          </Button>
        </CardContent>
      </Card>
    </div>
  );
}
