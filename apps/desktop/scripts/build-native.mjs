/**
 * Build macOS notification helper dylib (universal: arm64 + x86_64).
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

const armOut = path.join(nativeDir, "libstudy_notif_arm64.dylib");
const x64Out = path.join(nativeDir, "libstudy_notif_x64.dylib");

function compile(target, dest) {
  console.log("[build-native] compiling", path.basename(dest), `(${target})`);
  execFileSync(
    "swiftc",
    [
      "-emit-library",
      "-target",
      target,
      "-o",
      dest,
      src,
      "-framework",
      "UserNotifications",
      "-framework",
      "Foundation",
    ],
    { stdio: "inherit", cwd: desktopRoot }
  );
}

// Universal so arm64 CI can ship Intel Mac builds too
compile("arm64-apple-macosx11.0", armOut);
compile("x86_64-apple-macosx11.0", x64Out);

console.log("[build-native] lipo →", path.basename(out));
execFileSync("lipo", ["-create", armOut, x64Out, "-output", out], {
  stdio: "inherit",
});

// keep only the universal binary in tree
for (const f of [armOut, x64Out]) {
  try {
    fs.unlinkSync(f);
  } catch {
    /* ignore */
  }
}

console.log("[build-native] ok (universal)");
