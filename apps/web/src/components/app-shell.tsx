"use client";

import { usePathname } from "next/navigation";

import { AppSidebar } from "@/components/app-sidebar";

const BARE_PATHS = ["/login", "/signup", "/onboarding", "/auth"];

export function AppShell({ children }: { children: React.ReactNode }) {
  const pathname = usePathname();
  const bare = BARE_PATHS.some(
    (p) => pathname === p || pathname.startsWith(`${p}/`)
  );

  if (bare) {
    return <>{children}</>;
  }

  return (
    <div className="flex min-h-dvh bg-background">
      <AppSidebar />
      <main className="flex min-h-dvh min-w-0 flex-1 flex-col">{children}</main>
    </div>
  );
}
