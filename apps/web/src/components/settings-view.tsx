"use client";

import { useEffect, useState } from "react";
import { useRouter } from "next/navigation";
import {
  DEFAULT_ALARM_SETTINGS,
  NOTIFICATION,
  hourOptions,
  type AlarmSettings,
  type IntervalUnit,
} from "@study/shared";
import { toast } from "sonner";

import { SubjectPicker } from "@/components/subject-picker";
import { Button } from "@/components/ui/button";
import { Card, CardContent } from "@/components/ui/card";
import { Checkbox } from "@/components/ui/checkbox";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { Separator } from "@/components/ui/separator";
import { Switch } from "@/components/ui/switch";
import { signOut } from "@/lib/auth";
import {
  getDesktopNextAlarm,
  isDesktop,
  loadAlarmSettings,
  openOsNotificationSettings,
  saveAlarmSettings,
  testDesktopAlarm,
} from "@/lib/desktop";
import { tryCreateClient } from "@/lib/supabase/client";
import {
  listSubjectChoices,
  saveSubjectSelection,
  type SubjectChoice,
} from "@/lib/subjects";
import { cn } from "@/lib/utils";

const HOURS = hourOptions();

export function SettingsView() {
  const router = useRouter();
  const [settings, setSettings] = useState<AlarmSettings>(DEFAULT_ALARM_SETTINGS);
  const [subjects, setSubjects] = useState<SubjectChoice[]>([]);
  const [selectedIds, setSelectedIds] = useState<string[]>([]);
  const [ready, setReady] = useState(false);
  const [savingAlarm, setSavingAlarm] = useState(false);
  const [savingSubjects, setSavingSubjects] = useState(false);
  const [testingAlarm, setTestingAlarm] = useState(false);
  const [userEmail, setUserEmail] = useState<string | null>(null);
  const [desktopMode, setDesktopMode] = useState(false);
  /** Electron process.platform: "darwin" | "win32" | … */
  const [osPlatform, setOsPlatform] = useState<string | null>(null);
  const [nextAtLabel, setNextAtLabel] = useState<string | null>(null);

  useEffect(() => {
    void (async () => {
      setDesktopMode(isDesktop());
      if (typeof window !== "undefined" && window.desktop?.platform) {
        setOsPlatform(window.desktop.platform);
      } else if (typeof window !== "undefined" && window.desktop?.getInfo) {
        try {
          const info = await window.desktop.getInfo();
          setOsPlatform(info.platform);
        } catch {
          /* ignore */
        }
      }
      const alarm = await loadAlarmSettings(DEFAULT_ALARM_SETTINGS);
      setSettings(alarm);

      if (isDesktop()) {
        await saveAlarmSettings(alarm);
        const next = await getDesktopNextAlarm();
        if (next) setNextAtLabel(new Date(next).toLocaleString("ko-KR"));
      }

      const supabase = tryCreateClient();
      if (supabase) {
        const {
          data: { user },
        } = await supabase.auth.getUser();
        if (user) {
          setUserEmail(user.email ?? null);
          try {
            const choices = await listSubjectChoices(supabase, user.id);
            setSubjects(choices);
            setSelectedIds(
              choices.filter((c) => c.is_enabled).map((c) => c.id)
            );
          } catch (e) {
            toast.error(
              e instanceof Error ? e.message : "주제를 불러오지 못했어요"
            );
          }
        }
      }
      setReady(true);
    })();
  }, []);

  const timeError = settings.endHour <= settings.startHour;

  function patch(partial: Partial<AlarmSettings>) {
    setSettings((prev) => ({ ...prev, ...partial }));
  }

  async function onSaveAlarm() {
    if (timeError) {
      toast.error("종료 시각은 시작 시각보다 늦어야 해요");
      return;
    }
    setSavingAlarm(true);
    try {
      const res = await saveAlarmSettings(settings);
      if (res?.nextAt) {
        setNextAtLabel(new Date(res.nextAt).toLocaleString("ko-KR"));
      } else if (isDesktop()) {
        const next = await getDesktopNextAlarm();
        setNextAtLabel(
          next ? new Date(next).toLocaleString("ko-KR") : "예약 없음"
        );
      }

      const supabase = tryCreateClient();
      if (supabase) {
        const {
          data: { user },
        } = await supabase.auth.getUser();
        if (user) {
          const { error } = await supabase.from("alarm_settings").upsert({
            user_id: user.id,
            enabled: settings.enabled,
            start_hour: settings.startHour,
            end_hour: settings.endHour,
            interval_value: settings.interval,
            interval_unit: settings.intervalUnit,
            weekdays_only: settings.weekdaysOnly,
          });
          if (error) throw error;
        }
      }

      if (!isDesktop()) {
        toast.success(
          "설정을 저장했어요. 알림은 데스크톱 앱을 실행해야 울려요."
        );
      } else {
        toast.success(
          res?.nextAt
            ? `알람 저장 · 다음 ${new Date(res.nextAt).toLocaleString("ko-KR")}`
            : "알람 설정을 저장했어요"
        );
      }
    } catch (e) {
      toast.error(e instanceof Error ? e.message : "저장 실패");
    } finally {
      setSavingAlarm(false);
    }
  }

  async function onTestAlarm() {
    setTestingAlarm(true);
    try {
      const res = await testDesktopAlarm();
      if (res.reason === "not-desktop") {
        toast.error(
          "브라우저에서는 테스트할 수 없어요. 데스크톱 앱을 실행해 주세요."
        );
        return;
      }
      // Always attempt; if OS blocks, user simply won't see a banner
      const hint =
        osPlatform === "win32"
          ? "안 보이면 Windows 설정 → 시스템 → 알림 에서 Study Alarm 을 확인해 주세요."
          : osPlatform === "darwin"
            ? "안 보이면 macOS 시스템 설정 → 알림 → Study Alarm 을 확인해 주세요."
            : "안 보이면 OS 알림 설정에서 Study Alarm 허용을 확인해 주세요.";
      toast.success(`테스트 알림을 요청했어요. ${hint}`);
    } catch (e) {
      toast.error(e instanceof Error ? e.message : "테스트 실패");
    } finally {
      setTestingAlarm(false);
    }
  }

  async function onSaveSubjects() {
    if (selectedIds.length === 0) {
      toast.error("공부할 주제를 하나 이상 선택해 주세요");
      return;
    }
    const supabase = tryCreateClient();
    if (!supabase) {
      toast.error("Supabase가 설정되지 않았어요");
      return;
    }
    const {
      data: { user },
    } = await supabase.auth.getUser();
    if (!user) {
      toast.error("로그인이 필요해요");
      return;
    }

    setSavingSubjects(true);
    try {
      const allIds = subjects.map((s) => s.id);
      for (const id of allIds) {
        const enabled = selectedIds.includes(id);
        await supabase.from("user_subjects").upsert(
          {
            user_id: user.id,
            subject_id: id,
            is_enabled: enabled,
          },
          { onConflict: "user_id,subject_id" }
        );
      }
      await saveSubjectSelection(supabase, user.id, selectedIds);

      const choices = await listSubjectChoices(supabase, user.id);
      setSubjects(choices);
      setSelectedIds(choices.filter((c) => c.is_enabled).map((c) => c.id));
      toast.success("공부할 주제를 저장했어요");
      router.refresh();
    } catch (e) {
      toast.error(e instanceof Error ? e.message : "주제 저장 실패");
    } finally {
      setSavingSubjects(false);
    }
  }

  async function onLogout() {
    try {
      await signOut();
      toast.success("로그아웃했어요");
      router.replace("/login");
      router.refresh();
    } catch {
      toast.error("로그아웃에 실패했어요");
    }
  }

  if (!ready) {
    return <div className="flex-1 p-9" />;
  }

  return (
    <div className="flex max-w-[560px] flex-1 flex-col gap-5 overflow-y-auto p-9">
      <h1 className="text-[22px] font-extrabold">설정</h1>

      <Card className="rounded-[13px] py-4">
        <CardContent className="flex items-center justify-between gap-4 px-5 py-0">
          <div className="min-w-0">
            <p className="text-[13px] font-semibold text-muted-foreground">
              계정
            </p>
            <p className="truncate text-[15px] font-bold">
              {userEmail ?? "로그인된 계정"}
            </p>
          </div>
          <Button
            variant="outline"
            className="shrink-0 font-semibold text-destructive hover:bg-destructive/10 hover:text-destructive"
            onClick={() => void onLogout()}
          >
            로그아웃
          </Button>
        </CardContent>
      </Card>

      <section className="flex flex-col gap-3">
        <div>
          <h2 className="text-[15px] font-bold">공부할 주제</h2>
          <p className="text-[13px] text-muted-foreground">
            선택한 주제에서만 문제가 나와요. 최소 1개 필요해요.
          </p>
        </div>
        <SubjectPicker
          subjects={subjects}
          selectedIds={selectedIds}
          onChange={setSelectedIds}
          disabled={savingSubjects}
        />
        {selectedIds.length === 0 && (
          <p className="text-[13px] font-semibold text-destructive">
            주제를 하나도 고르지 않으면 문제를 출제하지 않아요.
          </p>
        )}
        <Button
          className="h-10 w-fit font-bold"
          disabled={savingSubjects || selectedIds.length === 0}
          onClick={() => void onSaveSubjects()}
        >
          {savingSubjects ? "저장 중…" : "주제 저장"}
        </Button>
      </section>

      <Separator />

      <section className="flex flex-col gap-3">
        <h2 className="text-[15px] font-bold">학습 알람</h2>

        {!desktopMode ? (
          <div className="rounded-xl border border-amber-500/35 bg-amber-500/10 px-3.5 py-3 text-[13px] leading-relaxed">
            <p className="font-bold text-foreground">
              지금 브라우저로 보고 있어요
            </p>
            <p className="mt-1 text-muted-foreground">
              OS 알림은 데스크톱 앱(
              <code className="rounded bg-muted px-1 text-xs">
                pnpm dev:desktop
              </code>
              )을 실행해야 울려요.
            </p>
          </div>
        ) : (
          <div className="rounded-xl border border-border bg-muted/40 px-3.5 py-3 text-[13px] leading-relaxed">
            <p className="font-bold text-foreground">알림이 안 울릴 때</p>
            {osPlatform === "win32" ? (
              <p className="mt-1 text-muted-foreground">
                테스트 알림은 화면{" "}
                <strong className="text-foreground">오른쪽 아래</strong>에
                잠깐 떴다가, 놓치면{" "}
                <strong className="text-foreground">Win + N</strong> (알림
                센터)에 쌓여요.{" "}
                <strong className="text-foreground">
                  설정 → 시스템 → 알림
                </strong>
                에서 Study Alarm 이 켜져 있는지,{" "}
                <strong className="text-foreground">집중 지원</strong>이 꺼져
                있는지도 확인해 주세요.
              </p>
            ) : (
              <p className="mt-1 text-muted-foreground">
                macOS{" "}
                <strong className="text-foreground">
                  시스템 설정 → 알림 → Study Alarm
                </strong>
                에서 <strong className="text-foreground">알림 허용</strong>이
                켜져 있어야 해요. 앱의 알람 스위치와는 별개입니다.
              </p>
            )}
            {nextAtLabel && (
              <p className="mt-1 text-muted-foreground">
                다음 스케줄: {nextAtLabel}
              </p>
            )}
            <p className="mt-1 text-muted-foreground">
              {osPlatform === "win32"
                ? "창을 닫아도 트레이(알림 영역)에 남아 있어야 해요. 완전 종료하면 스케줄이 멈춥니다."
                : "창을 닫아도 메뉴바 트레이에 남아 있어야 해요. 완전 종료하면 스케줄이 멈춥니다."}
            </p>
            <Button
              type="button"
              variant="outline"
              size="sm"
              className="mt-2 h-8 font-semibold"
              onClick={() => void openOsNotificationSettings()}
            >
              {osPlatform === "win32"
                ? "Windows 알림 설정 열기"
                : "macOS 알림 설정 열기"}
            </Button>
          </div>
        )}

        <Card className="rounded-[13px] bg-muted/50 py-4 ring-0">
          <CardContent className="flex items-center justify-between gap-4 px-5 py-0">
            <div className="flex flex-col gap-0.5">
              <strong className="text-[15px] font-bold">알람 스케줄</strong>
              <span className="text-[13px] text-muted-foreground">
                {settings.enabled
                  ? "켜져 있어요 (시간대·간격으로 알림 예약)"
                  : "꺼져 있어요"}
              </span>
            </div>
            <Switch
              checked={settings.enabled}
              onCheckedChange={(checked) => patch({ enabled: checked })}
            />
          </CardContent>
        </Card>

        <Card
          className={cn(
            "rounded-[13px] py-5 transition-opacity",
            !settings.enabled && "pointer-events-none opacity-45"
          )}
        >
          <CardContent className="flex flex-col gap-3.5 px-5 py-0">
            <div className="grid grid-cols-2 gap-3.5">
              <div className="flex flex-col gap-1.5">
                <Label className="text-[13px] font-semibold text-muted-foreground">
                  시작 시각
                </Label>
                <Select
                  value={String(settings.startHour)}
                  onValueChange={(v) => {
                    if (v != null) patch({ startHour: Number(v) });
                  }}
                >
                  <SelectTrigger className="h-10 w-full rounded-lg">
                    <SelectValue />
                  </SelectTrigger>
                  <SelectContent>
                    {HOURS.map((h) => (
                      <SelectItem key={h.value} value={String(h.value)}>
                        {h.label}
                      </SelectItem>
                    ))}
                  </SelectContent>
                </Select>
              </div>

              <div className="flex flex-col gap-1.5">
                <Label className="text-[13px] font-semibold text-muted-foreground">
                  종료 시각
                </Label>
                <Select
                  value={String(settings.endHour)}
                  onValueChange={(v) => {
                    if (v != null) patch({ endHour: Number(v) });
                  }}
                >
                  <SelectTrigger
                    className={cn(
                      "h-10 w-full rounded-lg",
                      timeError && "border-destructive"
                    )}
                  >
                    <SelectValue />
                  </SelectTrigger>
                  <SelectContent>
                    {HOURS.map((h) => (
                      <SelectItem key={h.value} value={String(h.value)}>
                        {h.label}
                      </SelectItem>
                    ))}
                  </SelectContent>
                </Select>
              </div>
            </div>

            {timeError && (
              <p className="text-[13px] font-semibold text-destructive">
                종료 시각은 시작 시각보다 늦어야 해요
              </p>
            )}

            <div className="flex items-end gap-2.5">
              <div className="flex flex-1 flex-col gap-1.5">
                <Label className="text-[13px] font-semibold text-muted-foreground">
                  간격
                </Label>
                <Input
                  type="number"
                  min={1}
                  value={settings.interval}
                  onChange={(e) =>
                    patch({
                      interval: Math.max(1, Number(e.target.value) || 1),
                    })
                  }
                  className="h-10 rounded-lg"
                />
              </div>
              <Select
                value={settings.intervalUnit}
                onValueChange={(v) => {
                  if (v === "min" || v === "hour") {
                    patch({ intervalUnit: v as IntervalUnit });
                  }
                }}
              >
                <SelectTrigger className="h-10 w-[120px] rounded-lg">
                  <SelectValue />
                </SelectTrigger>
                <SelectContent>
                  <SelectItem value="min">분마다</SelectItem>
                  <SelectItem value="hour">시간마다</SelectItem>
                </SelectContent>
              </Select>
            </div>

            <label className="flex cursor-pointer items-center gap-2.5 text-sm font-semibold">
              <Checkbox
                checked={settings.weekdaysOnly}
                onCheckedChange={(checked) =>
                  patch({ weekdaysOnly: checked === true })
                }
              />
              평일에만 알림
            </label>

            <div className="rounded-lg bg-muted/60 px-3.5 py-3 text-[13px] text-muted-foreground">
              알림 미리보기 —{" "}
              <strong className="text-foreground/80">
                {NOTIFICATION.title}
              </strong>
              {" · "}
              {NOTIFICATION.body}
            </div>
          </CardContent>
        </Card>

        <div className="flex flex-wrap gap-2">
          <Button
            className="h-11 rounded-xl px-8 font-bold"
            disabled={savingAlarm}
            onClick={() => void onSaveAlarm()}
          >
            {savingAlarm ? "저장 중…" : "알람 저장"}
          </Button>
          <Button
            type="button"
            variant="outline"
            className="h-11 rounded-xl px-5 font-semibold"
            disabled={testingAlarm}
            onClick={() => void onTestAlarm()}
          >
            {testingAlarm ? "전송 중…" : "지금 테스트 알림"}
          </Button>
        </div>
      </section>
    </div>
  );
}
