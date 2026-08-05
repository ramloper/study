"use client";

import { useEffect, useState } from "react";
import type { ProgressStats } from "@study/shared";

import { Card, CardContent } from "@/components/ui/card";
import { Separator } from "@/components/ui/separator";
import { formatRecordTime, getProgressStats, pct } from "@/lib/progress";
import { cn } from "@/lib/utils";

export function ProgressView() {
  const [stats, setStats] = useState<ProgressStats | null>(null);

  useEffect(() => {
    setStats(getProgressStats());
  }, []);

  if (!stats) {
    return <div className="flex-1 p-9" />;
  }

  return (
    <div className="flex flex-1 flex-col gap-6 overflow-y-auto p-9">
      <h1 className="text-[22px] font-extrabold">진도</h1>

      <div className="grid gap-3 sm:grid-cols-3">
        <StatCard
          accent
          label="오늘"
          value={`${stats.todaySolved}문제`}
          sub={`정답률 ${pct(stats.todayCorrect, stats.todaySolved)}`}
        />
        <StatCard
          label="이번 주"
          value={`${stats.weekSolved}문제`}
          sub={`연속 ${stats.streak}일 학습`}
        />
        <StatCard
          label="누적"
          value={`${stats.totalSolved}문제`}
          sub={`총 정답률 ${pct(stats.totalCorrect, stats.totalSolved)}`}
        />
      </div>

      <div className="flex flex-col gap-2.5">
        <h2 className="text-[15px] font-bold text-muted-foreground">
          최근 기록
        </h2>

        {stats.recent.length === 0 ? (
          <div className="rounded-xl border border-dashed border-border px-5 py-10 text-center text-sm text-muted-foreground">
            아직 푼 문제가 없어요. 알림을 켜고 첫 문제를 기다려 보세요.
          </div>
        ) : (
          <Card className="gap-0 overflow-hidden py-0 ring-1 ring-border">
            <CardContent className="p-0">
              {stats.recent.map((r, i) => (
                <div key={r.id}>
                  {i > 0 && <Separator />}
                  <div className="flex items-center gap-3.5 px-[18px] py-3.5 text-sm">
                    <span
                      className={cn(
                        "size-2 shrink-0 rounded-full",
                        r.result === "correct"
                          ? "bg-emerald-500"
                          : "bg-destructive"
                      )}
                    />
                    <span className="w-16 shrink-0 text-[13px] font-bold text-muted-foreground">
                      {r.subject}
                    </span>
                    <span className="min-w-0 flex-1 truncate text-foreground/90">
                      {r.title}
                    </span>
                    <span
                      className={cn(
                        "shrink-0 text-[12.5px] font-semibold",
                        r.result === "correct"
                          ? "text-emerald-600"
                          : "text-destructive"
                      )}
                    >
                      {r.result === "correct" ? "정답" : "오답"}
                    </span>
                    <span className="shrink-0 text-[12.5px] text-muted-foreground">
                      {formatRecordTime(r.at)}
                    </span>
                  </div>
                </div>
              ))}
            </CardContent>
          </Card>
        )}
      </div>
    </div>
  );
}

function StatCard({
  label,
  value,
  sub,
  accent,
}: {
  label: string;
  value: string;
  sub: string;
  accent?: boolean;
}) {
  return (
    <Card
      className={cn(
        "rounded-[13px] py-5",
        accent ? "bg-primary/10 ring-0" : "bg-muted/50 ring-0"
      )}
    >
      <CardContent className="flex flex-col gap-2 px-5 py-0">
        <span
          className={cn(
            "text-xs font-bold",
            accent ? "text-primary" : "text-muted-foreground"
          )}
        >
          {label}
        </span>
        <span className="text-[28px] font-extrabold leading-none">{value}</span>
        <span className="text-[13px] text-muted-foreground">{sub}</span>
      </CardContent>
    </Card>
  );
}
