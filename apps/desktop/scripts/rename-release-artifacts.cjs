/**
 * electron-builder afterAllArtifactBuild hook.
 * Renames installers to friendly names.
 */
const fs = require("fs");
const path = require("path");

/** @param {import('electron-builder').BuildResult} context */
module.exports = async function renameReleaseArtifacts(context) {
  const out = context.outDir;
  const renamed = [];

  const map = [
    // mac dmg
    { test: /arm64\.dmg$/i, name: "Mac.dmg" },
    { test: /x64\.dmg$/i, name: "Mac-Intel.dmg" },
    // mac zip
    { test: /arm64\.zip$/i, name: "Mac.zip" },
    { test: /x64\.zip$/i, name: "Mac-Intel.zip" },
    // windows
    { test: /\.exe$/i, name: "Windows.exe" },
  ];

  const files = fs.readdirSync(out);
  for (const file of files) {
    const full = path.join(out, file);
    if (!fs.statSync(full).isFile()) continue;

    for (const { test, name } of map) {
      if (!test.test(file)) continue;
      const dest = path.join(out, name);
      if (full === dest) break;
      if (fs.existsSync(dest)) fs.unlinkSync(dest);
      fs.renameSync(full, dest);
      renamed.push(`${file} → ${name}`);
      break;
    }
  }

  if (renamed.length) {
    console.log("[rename-artifacts]", renamed.join("\n  "));
  }

  // Return list of paths to publish (all friendly files in outDir)
  return fs
    .readdirSync(out)
    .filter((f) => /\.(dmg|zip|exe|AppImage)$/i.test(f))
    .map((f) => path.join(out, f));
};
