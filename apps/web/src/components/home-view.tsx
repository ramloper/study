"use client";

import { useEffect, useMemo, useState } from "react";
import { useRouter } from "next/navigation";
import {
  DEFAULT_ALARM_SETTINGS,
  formatAlarmSummary,
  formatNextAlarm,
  getNextFireAt,
  type AlarmSettings,
} from "@study/shared";

import { Button } from "@/components/ui/button";
import { Card, CardContent } from "@/components/ui/card";
import {
  getDesktopNextAlarm,
  isDesktop,
  loadAlarmSettings,
  saveAlarmSettings,
} from "@/lib/desktop";
import { getProgressStats, pct } from "@/lib/progress";

export function HomeView() {
  const router = useRouter();
  const [settings, setSettings] = useState<AlarmSettings>(DEFAULT_ALARM_SETTINGS);
  const [desktopMode, setDesktopMode] = useState(false);
  const [nextFromDesktop, setNextFromDesktop] = useState<Date | null>(null);
  const [stats, setStats] = useState(() => ({
    todaySolved: 0,
    todayCorrect: 0,
    streak: 0,
  }));

  useEffect(() => {
    void (async () => {
      const desktop = isDesktop();
      setDesktopMode(desktop);
      const alarm = await loadAlarmSettings(DEFAULT_ALARM_SETTINGS);
      setSettings(alarm);
      if (desktop) {
        // keep main-process schedule in sync
        await saveAlarmSettings(alarm);
        const iso = await getDesktopNextAlarm();
        if (iso) setNextFromDesktop(new Date(iso));
      }
      const s = getProgressStats();
      setStats({
        todaySolved: s.todaySolved,
        todayCorrect: s.todayCorrect,
        streak: s.streak,
      });
    })();
  }, []);

  const nextAlarm = useMemo(() => {
    if (nextFromDesktop) return formatNextAlarm(nextFromDesktop);
    return formatNextAlarm(getNextFireAt(settings));
  }, [settings, nextFromDesktop]);
  const summary = useMemo(() => formatAlarmSummary(settings), [settings]);
  const accuracy = pct(stats.todayCorrect, stats.todaySolved);

  return (
    <div className="flex flex-1 flex-col items-center justify-center gap-7 p-10">
      <div className="flex flex-col items-center gap-2.5 text-center">
        <p className="text-[13px] font-bold tracking-[0.08em] text-primary">
          다음 알람
        </p>
        <p className="text-[42px] font-extrabold tracking-tight">{nextAlarm}</p>
        <p className="text-sm text-muted-foreground">{summary}</p>
        {!desktopMode && (
          <p className="mt-1 max-w-sm text-[13px] font-semibold text-amber-700 dark:text-amber-400">
            브라우저에서는 OS 알림이 울리지 않아요. Electron 앱(
            <code className="text-xs">pnpm dev:desktop</code>)을 실행해 주세요.
          </p>
        )}
      </div>

      <Button
        size="lg"
        className="h-12 rounded-xl px-11 text-[17px] font-bold shadow-[0_6px_18px_-6px_var(--primary)]"
        onClick={() => router.push("/question/next")}
      >
        지금 한 문제
      </Button>

      <div className="mt-2 flex flex-wrap justify-center gap-2.5">
        <StatChip value={String(stats.todaySolved)} label="오늘 푼 문제" />
        <StatChip value={accuracy} label="오늘 정답률" />
        <StatChip value={`${stats.streak}일`} label="연속 학습" />
      </div>
    </div>
  );
}

function StatChip({ value, label }: { value: string; label: string }) {
  return (
    <Card className="min-w-[100px] rounded-[10px] bg-muted/60 py-3 ring-0">
      <CardContent className="flex flex-col items-center gap-0.5 px-5 py-0">
        <strong className="text-xl font-extrabold">{value}</strong>
        <span className="text-xs text-muted-foreground">{label}</span>
      </CardContent>
    </Card>
  );
}
