import { contextBridge, ipcRenderer } from "electron";
import type { AlarmSettings } from "@study/shared";

contextBridge.exposeInMainWorld("desktop", {
  platform: process.platform,
  getAlarmSettings: (): Promise<AlarmSettings> =>
    ipcRenderer.invoke("alarm:get"),
  setAlarmSettings: (
    settings: AlarmSettings
  ): Promise<{ ok: boolean; nextAt: string | null }> =>
    ipcRenderer.invoke("alarm:set", settings),
  getNextAlarm: (): Promise<{
    nextAt: string | null;
    settings: AlarmSettings;
  }> => ipcRenderer.invoke("alarm:next"),
  testAlarm: (): Promise<{ ok: boolean }> => ipcRenderer.invoke("alarm:test"),
  openNotificationSettings: (): Promise<{ ok: boolean }> =>
    ipcRenderer.invoke("notification:open-settings"),
  hideToTray: (): Promise<void> => ipcRenderer.invoke("window:hide"),
  getInfo: (): Promise<{
    isDesktop: true;
    platform: string;
    notificationsSupported: boolean;
  }> => ipcRenderer.invoke("desktop:info"),
  onOpenQuestion: (cb: () => void) => {
    const handler = () => cb();
    ipcRenderer.on("question:open", handler);
    return () => {
      ipcRenderer.removeListener("question:open", handler);
    };
  },
});
