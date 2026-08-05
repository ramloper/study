/**
 * Installer download URLs.
 * Set these in Vercel env after uploading builds (GitHub Releases, R2, etc.)
 */
export type DownloadLinks = {
  macArm64: string | null;
  macX64: string | null;
  winX64: string | null;
  version: string;
};

export function getDownloadLinks(): DownloadLinks {
  return {
    macArm64: process.env.NEXT_PUBLIC_DOWNLOAD_MAC_ARM64?.trim() || null,
    macX64: process.env.NEXT_PUBLIC_DOWNLOAD_MAC_X64?.trim() || null,
    winX64: process.env.NEXT_PUBLIC_DOWNLOAD_WIN_X64?.trim() || null,
    version: process.env.NEXT_PUBLIC_APP_VERSION?.trim() || "0.1.0",
  };
}

export function hasAnyDownload(links: DownloadLinks): boolean {
  return Boolean(links.macArm64 || links.macX64 || links.winX64);
}
