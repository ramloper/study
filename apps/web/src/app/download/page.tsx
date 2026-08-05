import type { Metadata } from "next";

import { DownloadView } from "@/components/download-view";
import { getDownloadLinks } from "@/lib/downloads";

export const metadata: Metadata = {
  title: "다운로드 · Study Alarm",
  description: "Study Alarm macOS / Windows 설치 파일 다운로드",
};

export default function DownloadPage() {
  const links = getDownloadLinks();
  return <DownloadView links={links} />;
}
