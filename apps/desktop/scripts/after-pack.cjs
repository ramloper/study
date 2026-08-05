/**
 * afterPack: ad-hoc re-sign macOS .app so Gatekeeper doesn't show
 * "Study Alarm is damaged and can't be opened" for downloaded builds.
 *
 * identity: null leaves linker-only ad-hoc signatures that fail spctl
 * ("code has no resources but signature indicates they must be present").
 */
const { execFileSync } = require("child_process");
const fs = require("fs");
const path = require("path");

/** @param {import('electron-builder').AfterPackContext} context */
exports.default = async function afterPack(context) {
  if (context.electronPlatformName !== "darwin") return;

  const appName = context.packager.appInfo.productFilename;
  const appPath = path.join(context.appOutDir, `${appName}.app`);
  if (!fs.existsSync(appPath)) {
    console.warn("[after-pack] app not found:", appPath);
    return;
  }

  console.log("[after-pack] ad-hoc codesign (deep):", appPath);

  // Sign nested helpers/frameworks + main app with ad-hoc identity "-"
  // --deep is imperfect but sufficient for unsigned local distribution;
  // without it, quarantine + broken partial signatures → "damaged" dialog.
  execFileSync(
    "codesign",
    ["--force", "--deep", "--sign", "-", "--timestamp=none", appPath],
    { stdio: "inherit" }
  );

  try {
    execFileSync("codesign", ["--verify", "--verbose=2", appPath], {
      stdio: "inherit",
    });
  } catch {
    console.warn("[after-pack] codesign --verify reported issues (often ok for ad-hoc)");
  }
};
