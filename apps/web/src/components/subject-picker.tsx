"use client";

import { Checkbox } from "@/components/ui/checkbox";
import { cn } from "@/lib/utils";
import type { SubjectChoice } from "@/lib/subjects";

type Props = {
  subjects: SubjectChoice[];
  selectedIds: string[];
  onChange: (ids: string[]) => void;
  disabled?: boolean;
};

export function SubjectPicker({
  subjects,
  selectedIds,
  onChange,
  disabled,
}: Props) {
  const selected = new Set(selectedIds);

  function toggle(id: string, next: boolean) {
    const set = new Set(selectedIds);
    if (next) set.add(id);
    else set.delete(id);
    onChange([...set]);
  }

  if (subjects.length === 0) {
    return (
      <p className="text-sm text-muted-foreground">
        등록된 주제가 없어요. Supabase에 시드를 적용했는지 확인해 주세요.
      </p>
    );
  }

  return (
    <ul className="flex flex-col gap-2">
      {subjects.map((s) => {
        const checked = selected.has(s.id);
        return (
          <li key={s.id}>
            <label
              className={cn(
                "flex cursor-pointer items-center gap-3 rounded-xl border px-4 py-3.5 transition-colors",
                checked
                  ? "border-primary bg-primary/10"
                  : "border-border bg-background hover:border-primary/40",
                disabled && "pointer-events-none opacity-60"
              )}
            >
              <Checkbox
                checked={checked}
                disabled={disabled}
                onCheckedChange={(v) => toggle(s.id, v === true)}
              />
              <div className="flex min-w-0 flex-1 flex-col gap-0.5">
                <span className="text-sm font-bold">{s.name}</span>
                <span className="text-xs text-muted-foreground">{s.slug}</span>
              </div>
            </label>
          </li>
        );
      })}
    </ul>
  );
}
