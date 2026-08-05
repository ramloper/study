"use client";

import { useEffect, useMemo, useState } from "react";
import { Apple, Download, Monitor } from "lucide-react";

import { buttonVariants } from "@/components/ui/button";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import type { DownloadLinks } from "@/lib/downloads";
import { cn } from "@/lib/utils";

type OsHint = "mac-arm" | "mac-intel" | "windows" | "other";

function detectOs(): OsHint {
  if (typeof navigator === "undefined") return "other";
  const ua = navigator.userAgent;
  const platform = navigator.platform || "";

  if (/Windows/i.test(ua)) return "windows";

  const isMac = /Mac/i.test(platform) || /Mac OS/i.test(ua);
  if (isMac) {
    // Rough: many M-series still say MacIntel in UA. Prefer arm if mentioned.
    if (/arm|aarch64/i.test(ua)) return "mac-arm";
    // Default Apple Silicon for recent Macs; user can pick Intel manually
    return "mac-arm";
  }
  return "other";
}

type Props = {
  links: DownloadLinks;
};

export function DownloadView({ links }: Props) {
  const [hint, setHint] = useState<OsHint>("other");

  useEffect(() => {
    setHint(detectOs());
  }, []);

  const recommended = useMemo(() => {
    if (hint === "windows" && links.winX64) return "win" as const;
    if (hint === "mac-intel" && links.macX64) return "mac-x64" as const;
    if ((hint === "mac-arm" || hint === "other") && links.macArm64)
      return "mac-arm" as const;
    if (links.macX64) return "mac-x64" as const;
    if (links.winX64) return "win" as const;
    return null;
  }, [hint, links]);

  const any =
    Boolean(links.macArm64) || Boolean(links.macX64) || Boolean(links.winX64);

  return (
    <div className="mx-auto flex w-full max-w-2xl flex-1 flex-col gap-8 px-6 py-12">
      <div className="text-center">
        <div className="mx-auto mb-4 flex size-14 items-center justify-center rounded-2xl bg-primary">
          <span className="block size-6 rotate-45 rounded-full border-[3px] border-primary-foreground border-b-transparent" />
        </div>
        <h1 className="text-2xl font-extrabold tracking-tight">
          Study Alarm 다운로드
        </h1>
        <p className="mt-2 text-sm text-muted-foreground">
          이 서비스는 <strong className="text-foreground">데스크톱 앱</strong>
          으로 사용해요. OS에 맞는 파일을 받아 설치해 주세요.
        </p>
        <p className="mt-1 text-xs text-muted-foreground">
          버전 {links.version}
        </p>
      </div>

      {!any && (
        <Card className="border-amber-500/40 bg-amber-500/10">
          <CardContent className="px-5 py-4 text-sm leading-relaxed text-foreground">
            <p className="font-bold">아직 설치 파일 링크가 연결되지 않았어요</p>
            <p className="mt-1 text-muted-foreground">
              관리자가 GitHub Releases 등에 DMG/EXE를 올린 뒤, Vercel 환경 변수에
              다운로드 URL을 넣으면 이 페이지에서 받을 수 있어요.
            </p>
            <p className="mt-2 text-xs text-muted-foreground">
              필요 변수:{" "}
              <code className="rounded bg-muted px-1">
                NEXT_PUBLIC_DOWNLOAD_MAC_ARM64
              </code>
              ,{" "}
              <code className="rounded bg-muted px-1">
                NEXT_PUBLIC_DOWNLOAD_MAC_X64
              </code>
              ,{" "}
              <code className="rounded bg-muted px-1">
                NEXT_PUBLIC_DOWNLOAD_WIN_X64
              </code>
            </p>
          </CardContent>
        </Card>
      )}

      <div className="grid gap-4 sm:grid-cols-2">
        {/* Mac */}
        <Card
          className={cn(
            "overflow-hidden",
            (recommended === "mac-arm" || recommended === "mac-x64") &&
              "ring-2 ring-primary/40"
          )}
        >
          <CardHeader className="pb-2">
            <CardTitle className="flex items-center gap-2 text-lg font-extrabold">
              <Apple className="size-5" />
              macOS
            </CardTitle>
            <p className="text-xs text-muted-foreground">
              {(recommended === "mac-arm" || recommended === "mac-x64") &&
                "이 Mac에 맞는 파일을 추천해요"}
            </p>
          </CardHeader>
          <CardContent className="flex flex-col gap-2.5">
            <DownloadButton
              href={links.macArm64}
              label="Mac (Apple Silicon)"
              sub="Mac.dmg · M1/M2/M3…"
              primary={recommended === "mac-arm"}
            />
            <DownloadButton
              href={links.macX64}
              label="Mac (Intel)"
              sub="Mac-Intel.dmg · 구형 Mac"
              primary={recommended === "mac-x64"}
            />
            <p className="text-[11px] leading-relaxed text-muted-foreground">
              칩 확인:  → 이 Mac에 관하여. Apple이면 Silicon, Intel이면 Intel
              버전.
            </p>
          </CardContent>
        </Card>

        {/* Windows */}
        <Card
          className={cn(
            "overflow-hidden",
            recommended === "win" && "ring-2 ring-primary/40"
          )}
        >
          <CardHeader className="pb-2">
            <CardTitle className="flex items-center gap-2 text-lg font-extrabold">
              <Monitor className="size-5" />
              Windows
            </CardTitle>
            <p className="text-xs text-muted-foreground">
              {recommended === "win" && "이 PC에 맞는 파일을 추천해요"}
            </p>
          </CardHeader>
          <CardContent className="flex flex-col gap-2.5">
            <DownloadButton
              href={links.winX64}
              label="Windows"
              sub="Windows.exe · 64-bit"
              primary={recommended === "win"}
            />
            <p className="text-[11px] leading-relaxed text-muted-foreground">
              설치 마법사를 따라가면 됩니다. 바탕화면·시작 메뉴 바로가기가
              생겨요.
            </p>
          </CardContent>
        </Card>
      </div>

      <div className="rounded-xl border border-border bg-muted/40 px-4 py-3 text-[13px] leading-relaxed text-muted-foreground">
        <p className="font-semibold text-foreground">설치 후</p>
        <ol className="mt-1 list-decimal space-y-0.5 pl-4">
          <li>
            Mac: DMG를 열고 <strong className="text-foreground">응용 프로그램</strong>으로
            드래그한 뒤 실행
          </li>
          <li>앱 실행 → 같은 계정으로 로그인</li>
          <li>
            macOS에서 &quot;확인되지 않은 개발자&quot; / &quot;손상됨&quot;이 뜨면: 앱을{" "}
            <strong className="text-foreground">우클릭 → 열기</strong>
          </li>
          <li>
            그래도 안 되면 터미널:
            <code className="mt-1 block rounded bg-muted px-2 py-1 text-[11px] text-foreground">
              xattr -cr &quot;/Applications/Study Alarm.app&quot;
            </code>
          </li>
          <li>
            알림 허용: Mac은 시스템 설정 → 알림 / Windows는 설정 → 시스템 → 알림
          </li>
        </ol>
      </div>
    </div>
  );
}

function DownloadButton({
  href,
  label,
  sub,
  primary,
}: {
  href: string | null;
  label: string;
  sub: string;
  primary?: boolean;
}) {
  if (!href) {
    return (
      <div className="rounded-xl border border-dashed border-border px-4 py-3 text-sm text-muted-foreground">
        <p className="font-semibold text-foreground/70">{label}</p>
        <p className="text-xs">준비 중 · 곧 업로드됩니다</p>
      </div>
    );
  }

  return (
    <a
      href={href}
      className={cn(
        buttonVariants({ variant: primary ? "default" : "outline" }),
        "h-auto w-full justify-start gap-3 rounded-xl px-4 py-3 text-left font-semibold"
      )}
      download
    >
      <Download className="size-4 shrink-0" />
      <span className="flex min-w-0 flex-1 flex-col gap-0.5">
        <span className="text-sm">{label}</span>
        <span
          className={cn(
            "text-xs font-normal",
            primary ? "text-primary-foreground/80" : "text-muted-foreground"
          )}
        >
          {sub}
        </span>
      </span>
    </a>
  );
}
