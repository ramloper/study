/**
 * Build macOS-only notification helper dylib.
 * No-op on Windows/Linux so CI can run dist:win.
 */
import { execFileSync } from "node:child_process";
import fs from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const desktopRoot = path.join(__dirname, "..");
const nativeDir = path.join(desktopRoot, "native");
const out = path.join(nativeDir, "libstudy_notif.dylib");
const src = path.join(desktopRoot, "scripts", "study_notif_auth.swift");

fs.mkdirSync(nativeDir, { recursive: true });

if (process.platform !== "darwin") {
  console.log("[build-native] skip (not macOS)");
  process.exit(0);
}

if (!fs.existsSync(src)) {
  console.warn("[build-native] missing", src);
  process.exit(0);
}

console.log("[build-native] compiling", out);
execFileSync(
  "swiftc",
  [
    "-emit-library",
    "-o",
    out,
    src,
    "-framework",
    "UserNotifications",
    "-framework",
    "Foundation",
  ],
  { stdio: "inherit", cwd: desktopRoot }
);
console.log("[build-native] ok");
