import { shell } from "electron";

/** Open macOS / Windows notification settings pane. No status guessing. */
export function openSystemNotificationSettings() {
  if (process.platform === "darwin") {
    const urls = [
      "x-apple.systempreferences:com.apple.Notifications-Settings.extension",
      "x-apple.systempreferences:com.apple.preference.notifications",
    ];
    for (const url of urls) {
      try {
        void shell.openExternal(url);
        return { ok: true };
      } catch {
        /* next */
      }
    }
  }
  if (process.platform === "win32") {
    void shell.openExternal("ms-settings:notifications");
    return { ok: true };
  }
  return { ok: false };
}
