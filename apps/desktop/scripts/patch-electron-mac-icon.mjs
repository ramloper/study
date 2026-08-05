/**
 * Dev: make Electron.app look like Study Alarm for macOS notifications/Dock.
 * macOS keys icons by CFBundleIdentifier — must change ID, not only .icns.
 */
import fs from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";
import { execFileSync } from "node:child_process";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const desktopRoot = path.join(__dirname, "..");
const BUNDLE_ID = "com.studyalarm.app.dev";
const DISPLAY_NAME = "Study Alarm";

function findElectronApp() {
  const candidates = [];
  try {
    const electronPath = fileURLToPath(import.meta.resolve("electron"));
    candidates.push(path.join(path.dirname(electronPath), "dist", "Electron.app"));
  } catch {
    /* ignore */
  }

  const pnpmRoot = path.join(desktopRoot, "..", "..", "node_modules", ".pnpm");
  if (fs.existsSync(pnpmRoot)) {
    for (const name of fs.readdirSync(pnpmRoot)) {
      if (!name.startsWith("electron@")) continue;
      candidates.push(
        path.join(
          pnpmRoot,
          name,
          "node_modules",
          "electron",
          "dist",
          "Electron.app"
        )
      );
    }
  }

  for (const c of candidates) {
    if (fs.existsSync(c)) return c;
  }
  return null;
}

function setPlist(plist, key, value, type = "string") {
  try {
    execFileSync("/usr/libexec/PlistBuddy", [
      "-c",
      `Set :${key} ${value}`,
      plist,
    ]);
  } catch {
    try {
      execFileSync("/usr/libexec/PlistBuddy", [
        "-c",
        `Add :${key} ${type} ${value}`,
        plist,
      ]);
    } catch (e) {
      console.warn(`[patch-icon] ${key}:`, e.message);
    }
  }
}

const electronApp = findElectronApp();
const iconIcns = path.join(desktopRoot, "assets", "icon.icns");

if (!electronApp) {
  console.warn("[patch-icon] Electron.app not found — skip");
  process.exit(0);
}
if (!fs.existsSync(iconIcns)) {
  console.warn("[patch-icon] assets/icon.icns missing — skip");
  process.exit(0);
}

const resources = path.join(electronApp, "Contents", "Resources");
const plist = path.join(electronApp, "Contents", "Info.plist");
const targetIcns = path.join(resources, "electron.icns");

fs.copyFileSync(iconIcns, targetIcns);
for (const name of ["icon.icns", "app.icns"]) {
  try {
    fs.copyFileSync(iconIcns, path.join(resources, name));
  } catch {
    /* ignore */
  }
}
console.log("[patch-icon] icon →", targetIcns);

if (fs.existsSync(plist)) {
  setPlist(plist, "CFBundleDisplayName", DISPLAY_NAME);
  setPlist(plist, "CFBundleName", DISPLAY_NAME);
  setPlist(plist, "CFBundleIconFile", "electron.icns");
  // Critical: new ID so macOS does not keep Electron atom for notifications
  setPlist(plist, "CFBundleIdentifier", BUNDLE_ID);
  console.log("[patch-icon] bundle id →", BUNDLE_ID);
  console.log("[patch-icon] display name →", DISPLAY_NAME);
}

// Touch to invalidate some caches
try {
  const now = new Date();
  fs.utimesSync(targetIcns, now, now);
  fs.utimesSync(electronApp, now, now);
} catch {
  /* ignore */
}

// Refresh Launch Services registration for this app
try {
  execFileSync("bash", [
    "-lc",
    `/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -f "${electronApp}"`,
  ]);
  console.log("[patch-icon] lsregister refreshed");
} catch (e) {
  console.warn("[patch-icon] lsregister:", e.message);
}

console.log("[patch-icon] done — fully quit Electron, then reopen");
