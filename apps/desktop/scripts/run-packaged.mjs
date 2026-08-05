/**
 * Launch packaged "Study Alarm.app" so macOS notifications use our icon,
 * not the Electron atom (com.github.Electron).
 */
import { spawn } from "node:child_process";
import fs from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";
import { execFileSync } from "node:child_process";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const desktopRoot = path.join(__dirname, "..");
const arch = process.arch === "arm64" ? "mac-arm64" : "mac";
const appPath = path.join(
  desktopRoot,
  "release",
  arch,
  "Study Alarm.app"
);
const binPath = path.join(
  appPath,
  "Contents",
  "MacOS",
  "Study Alarm"
);

if (!fs.existsSync(binPath)) {
  console.log("[run-packaged] Study Alarm.app not found — packaging…");
  execFileSync(
    "pnpm",
    ["exec", "electron-builder", "--mac", "dir", "--config", "electron-builder.yml"],
    { cwd: desktopRoot, stdio: "inherit" }
  );
}

if (!fs.existsSync(binPath)) {
  console.error("[run-packaged] package failed:", binPath);
  process.exit(1);
}

const webUrl = process.env.STUDY_WEB_URL || "http://127.0.0.1:3000";
console.log("[run-packaged] starting", appPath);
console.log("[run-packaged] STUDY_WEB_URL =", webUrl);

const child = spawn(binPath, [], {
  cwd: desktopRoot,
  env: {
    ...process.env,
    STUDY_WEB_URL: webUrl,
  },
  stdio: "inherit",
});

child.on("exit", (code) => process.exit(code ?? 0));
