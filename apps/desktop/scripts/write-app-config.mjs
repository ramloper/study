/**
 * Bake STUDY_WEB_URL into dist/app-config.json for packaged builds.
 * Usage:
 *   STUDY_WEB_URL=https://your-app.vercel.app node scripts/write-app-config.mjs
 */
import fs from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const distDir = path.join(__dirname, "..", "dist");
fs.mkdirSync(distDir, { recursive: true });

const webUrl =
  process.env.STUDY_WEB_URL?.trim() ||
  process.env.NEXT_PUBLIC_SITE_URL?.trim() ||
  "http://localhost:3000";

const config = {
  webUrl,
  builtAt: new Date().toISOString(),
};

const out = path.join(distDir, "app-config.json");
fs.writeFileSync(out, JSON.stringify(config, null, 2), "utf8");
console.log("[app-config]", out, "→", webUrl);
