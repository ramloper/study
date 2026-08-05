import type { AlarmSettings } from "@study/shared";

export type DesktopAPI = {
  platform: string;
  getAlarmSettings: () => Promise<AlarmSettings>;
  setAlarmSettings: (
    settings: AlarmSettings
  ) => Promise<{ ok: boolean; nextAt: string | null } | void>;
  getNextAlarm?: () => Promise<{
    nextAt: string | null;
    settings: AlarmSettings;
  }>;
  testAlarm?: () => Promise<{ ok: boolean; reason?: string }>;
  openNotificationSettings?: () => Promise<{ ok: boolean }>;
  hideToTray: () => Promise<void>;
  getInfo?: () => Promise<{
    isDesktop: true;
    platform: string;
    notificationsSupported: boolean;
  }>;
  onOpenQuestion: (cb: () => void) => () => void;
};

declare global {
  interface Window {
    desktop?: DesktopAPI;
  }
}

export function isDesktop(): boolean {
  return typeof window !== "undefined" && !!window.desktop;
}

export async function loadAlarmSettings(
  fallback: AlarmSettings
): Promise<AlarmSettings> {
  if (typeof window === "undefined") return fallback;
  if (window.desktop) {
    try {
      return await window.desktop.getAlarmSettings();
    } catch {
      /* fall through */
    }
  }
  try {
    const raw = localStorage.getItem("study.alarmSettings");
    if (raw) return { ...fallback, ...JSON.parse(raw) };
  } catch {
    /* ignore */
  }
  return fallback;
}

export async function saveAlarmSettings(
  settings: AlarmSettings
): Promise<{ nextAt: string | null } | void> {
  if (typeof window === "undefined") return;
  localStorage.setItem("study.alarmSettings", JSON.stringify(settings));
  if (window.desktop) {
    const res = await window.desktop.setAlarmSettings(settings);
    if (res && typeof res === "object" && "nextAt" in res) {
      return { nextAt: res.nextAt };
    }
  }
}

export async function testDesktopAlarm(): Promise<{
  ok: boolean;
  reason?: string;
}> {
  if (!window.desktop?.testAlarm) return { ok: false, reason: "not-desktop" };
  return window.desktop.testAlarm();
}

export async function getDesktopNextAlarm(): Promise<string | null> {
  if (!window.desktop?.getNextAlarm) return null;
  const res = await window.desktop.getNextAlarm();
  return res.nextAt;
}

export async function openOsNotificationSettings(): Promise<boolean> {
  if (!window.desktop?.openNotificationSettings) return false;
  const res = await window.desktop.openNotificationSettings();
  return res.ok;
}

export async function hideToTray(): Promise<void> {
  if (window.desktop) {
    await window.desktop.hideToTray();
  }
}
