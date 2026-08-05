import type { AlarmSettings } from "./types";

export function isWeekday(date = new Date()): boolean {
  const d = date.getDay();
  return d >= 1 && d <= 5;
}

export function intervalMs(settings: AlarmSettings): number {
  const n = Math.max(1, settings.interval || 1);
  return settings.intervalUnit === "hour"
    ? n * 60 * 60 * 1000
    : n * 60 * 1000;
}

/**
 * Next fire time after `from`. Null if disabled or invalid window.
 */
export function getNextFireAt(
  settings: AlarmSettings,
  from: Date = new Date()
): Date | null {
  if (!settings.enabled) return null;
  if (settings.endHour <= settings.startHour) return null;

  const ms = intervalMs(settings);
  let cursor = new Date(from.getTime());

  for (let day = 0; day < 8; day++) {
    const dayStart = new Date(cursor);
    dayStart.setHours(settings.startHour, 0, 0, 0);
    const dayEnd = new Date(cursor);
    dayEnd.setHours(settings.endHour, 0, 0, 0);

    if (settings.weekdaysOnly && !isWeekday(dayStart)) {
      cursor = new Date(dayStart);
      cursor.setDate(cursor.getDate() + 1);
      cursor.setHours(0, 0, 0, 0);
      continue;
    }

    let candidate: Date;
    if (from < dayStart) {
      candidate = new Date(dayStart);
    } else if (from >= dayEnd) {
      cursor = new Date(dayStart);
      cursor.setDate(cursor.getDate() + 1);
      cursor.setHours(0, 0, 0, 0);
      continue;
    } else {
      const elapsed = from.getTime() - dayStart.getTime();
      const steps = Math.floor(elapsed / ms) + 1;
      candidate = new Date(dayStart.getTime() + steps * ms);
    }

    if (candidate.getTime() <= from.getTime()) {
      candidate = new Date(candidate.getTime() + ms);
    }

    if (candidate < dayEnd && candidate > from) {
      return candidate;
    }

    cursor = new Date(dayStart);
    cursor.setDate(cursor.getDate() + 1);
    cursor.setHours(0, 0, 0, 0);
  }

  return null;
}

export function formatAlarmSummary(settings: AlarmSettings): string {
  if (!settings.enabled) return "알람이 꺼져 있어요";
  const unit = settings.intervalUnit === "min" ? "분" : "시간";
  const week = settings.weekdaysOnly ? " · 평일" : "";
  return `${pad(settings.startHour)}:00 – ${pad(settings.endHour)}:00 · ${settings.interval}${unit} 간격${week}`;
}

export function formatNextAlarm(date: Date | null): string {
  if (!date) return "—";
  const h = date.getHours();
  const m = date.getMinutes();
  const period = h < 12 ? "오전" : "오후";
  const h12 = h === 0 ? 12 : h > 12 ? h - 12 : h;
  return `${period} ${h12}:${String(m).padStart(2, "0")}`;
}

function pad(n: number) {
  return String(n).padStart(2, "0");
}

export function hourOptions(): { value: number; label: string }[] {
  return Array.from({ length: 15 }, (_, i) => {
    const h = i + 7;
    const label =
      h < 12
        ? `오전 ${h}:00`
        : `오후 ${h === 12 ? 12 : h - 12}:00`;
    return { value: h, label };
  });
}
