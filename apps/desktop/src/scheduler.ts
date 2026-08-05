import { Notification, type NativeImage } from "electron";
import {
  NOTIFICATION,
  getNextFireAt,
  type AlarmSettings,
} from "@study/shared";

export type FireHandler = () => void;

// Node/Electron setTimeout is signed 32-bit ms (~24.8 days max)
const MAX_TIMEOUT_MS = 2_147_483_647;

export class AlarmScheduler {
  private timer: NodeJS.Timeout | null = null;
  private settings: AlarmSettings | null = null;
  private onFire: FireHandler;
  private nextAt: Date | null = null;

  constructor(onFire: FireHandler) {
    this.onFire = onFire;
  }

  update(settings: AlarmSettings) {
    this.settings = settings;
    this.reschedule();
  }

  stop() {
    if (this.timer) {
      clearTimeout(this.timer);
      this.timer = null;
    }
    this.nextAt = null;
  }

  getNextAt(): Date | null {
    return this.nextAt;
  }

  /** Fire once immediately (does not cancel schedule). */
  fireNow() {
    this.onFire();
  }

  private reschedule() {
    this.stop();
    if (!this.settings?.enabled) {
      console.log("[alarm] disabled — not scheduling");
      return;
    }

    const next = getNextFireAt(this.settings, new Date());
    if (!next) {
      console.log("[alarm] no next fire time (check hours / weekdays)");
      return;
    }

    this.nextAt = next;
    const delay = Math.max(500, next.getTime() - Date.now());
    console.log(
      `[alarm] next at ${next.toLocaleString()} (in ${Math.round(delay / 1000)}s)`,
      this.settings
    );

    // Cap timeout; if longer, wake and reschedule
    const wait = Math.min(delay, MAX_TIMEOUT_MS);
    this.timer = setTimeout(() => {
      if (!this.settings?.enabled) return;
      const now = Date.now();
      if (this.nextAt && now + 1000 < this.nextAt.getTime()) {
        // early wake from max timeout — reschedule
        this.reschedule();
        return;
      }
      console.log("[alarm] FIRE");
      this.onFire();
      if (this.settings) this.reschedule();
    }, wait);
  }
}

export function showStudyNotification(
  onClick: () => void,
  icon?: NativeImage | string
) {
  if (!Notification.isSupported()) {
    console.warn("[alarm] Notification API not supported");
    return null;
  }

  const opts: Electron.NotificationConstructorOptions = {
    title: NOTIFICATION.title,
    body: NOTIFICATION.body,
    silent: false,
    // Windows: "critical" is more likely to show a banner (not only Action Center)
    urgency: process.platform === "win32" ? "critical" : "normal",
    // Keep toast on screen longer so it's harder to miss
    timeoutType: process.platform === "win32" ? "never" : "default",
  };

  // Prefer absolute file path on Windows (NativeImage can fail silently for toasts)
  if (icon) {
    if (typeof icon === "string") {
      opts.icon = icon;
    } else if (!icon.isEmpty()) {
      opts.icon = icon;
    }
  }

  try {
    const n = new Notification(opts);
    n.on("click", onClick);
    n.on("show", () => {
      console.log("[alarm] notification shown");
    });
    n.on("failed", (_e, err) => {
      console.warn("[alarm] notification failed", err);
    });
    n.show();
    return n;
  } catch (e) {
    console.warn("[alarm] notification threw", e);
    return null;
  }
}
