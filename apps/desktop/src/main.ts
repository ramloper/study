import {
  app,
  BrowserWindow,
  Notification,
  ipcMain,
  nativeImage,
  Tray,
  Menu,
  systemPreferences,
  powerMonitor,
} from "electron";
import * as fs from "node:fs";
import * as path from "node:path";
import {
  DEFAULT_ALARM_SETTINGS,
  type AlarmSettings,
} from "@study/shared";
import { openSystemNotificationSettings } from "./notification-permission";
import { AlarmScheduler, showStudyNotification } from "./scheduler";

/** Must match electron-builder `appId` + Start Menu shortcut AUMID */
const APP_USER_MODEL_ID = "com.studyalarm.app";

// Display name in notifications / tray / taskbar
app.setName("Study Alarm");

// Windows: without this, toasts show as "Electron" (or not at all) and the app
// never appears under Settings → System → Notifications.
// Must run before app.ready. Production NSIS shortcut uses the same id.
if (process.platform === "win32") {
  app.setAppUserModelId(APP_USER_MODEL_ID);
}

/** Production: baked dist/app-config.json · Dev: STUDY_WEB_URL or localhost */
function resolveAppUrl(): string {
  if (process.env.STUDY_WEB_URL?.trim()) {
    return process.env.STUDY_WEB_URL.trim();
  }
  try {
    const cfgPath = path.join(__dirname, "app-config.json");
    if (fs.existsSync(cfgPath)) {
      const cfg = JSON.parse(fs.readFileSync(cfgPath, "utf8")) as {
        webUrl?: string;
      };
      if (cfg.webUrl?.trim()) return cfg.webUrl.trim();
    }
  } catch {
    /* ignore */
  }
  return "http://localhost:3000";
}

const APP_URL = resolveAppUrl();

let mainWindow: BrowserWindow | null = null;
let tray: Tray | null = null;
let settings: AlarmSettings = { ...DEFAULT_ALARM_SETTINGS };
let isQuitting = false;

const settingsPath = () =>
  path.join(app.getPath("userData"), "alarm-settings.json");

function loadSettings(): AlarmSettings {
  try {
    if (fs.existsSync(settingsPath())) {
      const raw = fs.readFileSync(settingsPath(), "utf8");
      return { ...DEFAULT_ALARM_SETTINGS, ...JSON.parse(raw) };
    }
  } catch {
    /* ignore */
  }
  return { ...DEFAULT_ALARM_SETTINGS };
}

function persistSettings(next: AlarmSettings) {
  settings = { ...DEFAULT_ALARM_SETTINGS, ...next };
  fs.writeFileSync(settingsPath(), JSON.stringify(settings, null, 2), "utf8");
  scheduler.update(settings);
  console.log("[alarm] settings saved", settings);
}

function openQuestionFromNotification() {
  if (!mainWindow) {
    createWindow();
  }
  if (!mainWindow) return;
  if (mainWindow.isMinimized()) mainWindow.restore();
  showMainWindow();
  mainWindow.webContents.send("question:open");
  void loadAppUrl(`${APP_URL}/question/next`);
}

function resolveIconPath(): string | null {
  const candidates = [
    // packaged: extraResources
    path.join(process.resourcesPath, "assets", "icon.png"),
    path.join(process.resourcesPath, "icon.png"),
    // asar / dev
    path.join(__dirname, "..", "assets", "icon.png"),
    path.join(process.cwd(), "assets", "icon.png"),
    path.join(app.getAppPath(), "assets", "icon.png"),
  ];
  for (const iconPath of candidates) {
    if (fs.existsSync(iconPath)) return iconPath;
  }
  return null;
}

function appIcon() {
  const iconPath = resolveIconPath();
  if (!iconPath) {
    console.warn("[icon] not found");
    return nativeImage.createEmpty();
  }
  try {
    const img = nativeImage.createFromPath(iconPath);
    if (!img.isEmpty()) {
      console.log("[icon] loaded", iconPath);
      return img;
    }
  } catch {
    /* ignore */
  }
  return nativeImage.createEmpty();
}

/** Monochrome menu-bar icon (macOS template: black + alpha, system tints it). */
function trayIcon() {
  const candidates = [
    path.join(__dirname, "..", "assets", "trayTemplate.png"),
    path.join(process.cwd(), "assets", "trayTemplate.png"),
    path.join(process.resourcesPath, "assets", "trayTemplate.png"),
    path.join(app.getAppPath(), "assets", "trayTemplate.png"),
  ];
  for (const p of candidates) {
    try {
      if (!fs.existsSync(p)) continue;
      const img = nativeImage.createFromPath(p);
      if (img.isEmpty()) continue;
      // Template images render as mono in menu bar (light/dark adaptive)
      img.setTemplateImage(true);
      console.log("[tray] template icon", p);
      return img;
    } catch {
      /* next */
    }
  }
  // Fallback: convert color app icon to rough template
  const color = appIcon();
  if (!color.isEmpty()) {
    const small = color.resize({ width: 18, height: 18 });
    small.setTemplateImage(true);
    return small;
  }
  return nativeImage.createEmpty();
}

const scheduler = new AlarmScheduler(() => {
  if (!Notification.isSupported()) {
    console.warn("[alarm] notifications not supported on this OS");
    return;
  }
  // macOS: left icon = app identity (Study Alarm.app)
  // Windows/Linux: pass icon explicitly.
  if (process.platform === "darwin") {
    showStudyNotification(openQuestionFromNotification);
  } else {
    const iconPath = resolveIconPath();
    const icon = appIcon();
    showStudyNotification(
      openQuestionFromNotification,
      iconPath ?? (!icon.isEmpty() ? icon : undefined)
    );
  }
});

function showOfflinePage(reason: string) {
  if (!mainWindow) return;
  const html = `<!DOCTYPE html>
<html lang="ko"><head><meta charset="utf-8"/>
<style>
  body{font-family:-apple-system,BlinkMacSystemFont,sans-serif;display:flex;align-items:center;justify-content:center;min-height:100vh;margin:0;background:#f7f9f8;color:#1a1f1e}
  .box{max-width:420px;padding:32px;border-radius:16px;background:#fff;border:1px solid #e6ecea;box-shadow:0 8px 30px rgba(0,0,0,.06);text-align:center}
  h1{font-size:18px;margin:0 0 12px}
  p{font-size:14px;line-height:1.6;color:#5c6b67;margin:0 0 10px}
  code{background:#f0f3f2;padding:2px 6px;border-radius:6px;font-size:12px}
  button{margin-top:16px;padding:12px 20px;border:none;border-radius:10px;background:#5eb3d9;color:#fff;font-weight:700;cursor:pointer}
</style></head><body><div class="box">
  <h1>웹 서버에 연결할 수 없어요</h1>
  <p>Electron은 <code>${APP_URL}</code> 을 불러옵니다.</p>
  <p>다른 터미널에서 Next를 먼저 실행해 주세요:</p>
  <p><code>pnpm dev</code></p>
  <p style="font-size:12px;color:#999">${reason.replace(/</g, "")}</p>
  <button onclick="location.reload()">다시 시도</button>
</div>
<script>
  // auto retry every 2s
  setTimeout(() => location.href = ${JSON.stringify(APP_URL)}, 2000);
</script>
</body></html>`;
  void mainWindow.loadURL(
    `data:text/html;charset=utf-8,${encodeURIComponent(html)}`
  );
}

async function loadAppUrl(url: string = APP_URL) {
  if (!mainWindow) return;
  try {
    console.log("[window] loading", url);
    await mainWindow.loadURL(url);
  } catch (e) {
    const msg = e instanceof Error ? e.message : String(e);
    console.error("[window] load failed", msg);
    showOfflinePage(msg);
  }
}

function createWindow() {
  if (mainWindow) {
    mainWindow.show();
    return;
  }

  const icon = appIcon();
  mainWindow = new BrowserWindow({
    width: 960,
    height: 720,
    minWidth: 800,
    minHeight: 600,
    title: "Study Alarm",
    icon: icon.isEmpty() ? undefined : icon,
    webPreferences: {
      preload: path.join(__dirname, "preload.js"),
      contextIsolation: true,
      nodeIntegration: false,
      sandbox: false,
    },
    show: false,
  });

  mainWindow.once("ready-to-show", () => {
    showMainWindow();
  });

  mainWindow.webContents.on(
    "did-fail-load",
    (_e, code, desc, validatedURL, isMainFrame) => {
      if (!isMainFrame) return;
      // ignore aborted (-3) when navigating away
      if (code === -3) return;
      console.error("[window] did-fail-load", code, desc, validatedURL);
      showOfflinePage(`${desc} (${code})`);
    }
  );

  mainWindow.webContents.on("did-finish-load", () => {
    console.log("[window] did-finish-load", mainWindow?.webContents.getURL());
  });

  void loadAppUrl(APP_URL);

  // Docker-style: window visible → Dock on; hide to tray → Dock off
  mainWindow.on("show", () => {
    setDockVisible(true);
  });
  mainWindow.on("hide", () => {
    setDockVisible(false);
  });

  mainWindow.on("close", (e) => {
    if (!isQuitting) {
      e.preventDefault();
      hideMainWindow();
    }
  });

  mainWindow.on("closed", () => {
    mainWindow = null;
    setDockVisible(false);
  });
}

/** Docker-like: show Dock only while the main window is open */
function setDockVisible(visible: boolean) {
  if (process.platform !== "darwin" || !app.dock) return;
  if (visible) {
    app.dock.show();
    const icon = appIcon();
    if (!icon.isEmpty()) app.dock.setIcon(icon);
  } else {
    app.dock.hide();
  }
}

function showMainWindow() {
  if (!mainWindow) createWindow();
  if (!mainWindow) return;
  setDockVisible(true);
  mainWindow.show();
  mainWindow.focus();
}

function hideMainWindow() {
  mainWindow?.hide();
  setDockVisible(false);
}

function createTray() {
  let icon = trayIcon();
  if (icon.isEmpty()) {
    // last-resort 16px black circle arc as template
    icon = nativeImage.createFromDataURL(
      "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAnUlEQVRYR+2WQQ6AIAwE+f+n8WjiQYwR2l2IxMRqL9DtTCktSghhjDHAOefO+bXWSimllFJKKeecc84555xzzjnnnHPOOeecc84555xz/gA2JwQh3y+8VwAAAABJRU5ErkJggg=="
    );
    icon.setTemplateImage(true);
  }

  tray = new Tray(icon);
  tray.setToolTip("Study Alarm");
  tray.setContextMenu(
    Menu.buildFromTemplate([
      {
        label: "열기",
        click: () => showMainWindow(),
      },
      {
        label: "페이지 새로고침",
        click: () => void loadAppUrl(APP_URL),
      },
      {
        label: "지금 한 문제",
        click: () => openQuestionFromNotification(),
      },
      {
        label: "테스트 알림",
        click: () => scheduler.fireNow(),
      },
      { type: "separator" },
      {
        label: "종료",
        click: () => {
          isQuitting = true;
          app.quit();
        },
      },
    ])
  );
  tray.on("click", () => {
    if (mainWindow?.isVisible()) {
      hideMainWindow();
    } else {
      showMainWindow();
    }
  });
}

app.whenReady().then(async () => {
  // Start dock-hidden; show Dock only when window is open (Docker-style)
  if (process.platform === "darwin" && app.dock) {
    app.dock.hide();
  }

  console.log("[boot] APP_URL =", APP_URL);
  console.log(
    "[boot] Notification.isSupported =",
    Notification.isSupported()
  );
  void systemPreferences;

  settings = loadSettings();
  // Tray first so user always has a handle even if window fails
  createTray();
  createWindow();
  scheduler.update(settings);

  powerMonitor.on("resume", () => {
    console.log("[alarm] system resume — reschedule");
    scheduler.update(settings);
  });

  ipcMain.handle("alarm:get", () => settings);
  ipcMain.handle("alarm:set", (_e, next: AlarmSettings) => {
    persistSettings(next);
    return { ok: true, nextAt: scheduler.getNextAt()?.toISOString() ?? null };
  });
  ipcMain.handle("alarm:next", () => ({
    nextAt: scheduler.getNextAt()?.toISOString() ?? null,
    settings,
  }));
  ipcMain.handle("alarm:test", () => {
    // Just fire — no OS-permission guessing (unreliable on Electron/macOS)
    scheduler.fireNow();
    return { ok: true };
  });
  ipcMain.handle("notification:open-settings", () =>
    openSystemNotificationSettings()
  );
  ipcMain.handle("window:hide", () => {
    mainWindow?.hide();
  });
  ipcMain.handle("desktop:info", () => ({
    isDesktop: true,
    platform: process.platform,
    notificationsSupported: Notification.isSupported(),
  }));

  app.on("activate", () => {
    showMainWindow();
  });
});

app.on("before-quit", () => {
  isQuitting = true;
  scheduler.stop();
});
