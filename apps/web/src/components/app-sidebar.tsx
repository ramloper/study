"use client";

import Link from "next/link";
import { usePathname, useRouter } from "next/navigation";
import { Home, LineChart, LogOut, Settings } from "lucide-react";
import { toast } from "sonner";

import { cn } from "@/lib/utils";
import { buttonVariants } from "@/components/ui/button";
import { signOut } from "@/lib/auth";

const NAV = [
  { href: "/", label: "홈", icon: Home },
  { href: "/progress", label: "진도", icon: LineChart },
  { href: "/settings", label: "설정", icon: Settings },
] as const;

export function AppSidebar() {
  const pathname = usePathname();
  const router = useRouter();
  const hideOnQuestion = pathname.startsWith("/question");

  async function onLogout() {
    try {
      await signOut();
      toast.success("로그아웃했어요");
      router.replace("/login");
      router.refresh();
    } catch {
      toast.error("로그아웃에 실패했어요");
    }
  }

  return (
    <aside
      className={cn(
        "flex w-[84px] shrink-0 flex-col items-center gap-1.5 border-r border-border bg-background py-4 transition-opacity",
        hideOnQuestion && "opacity-90"
      )}
    >
      <div className="mb-3.5 flex size-9 items-center justify-center rounded-[10px] bg-primary">
        <span className="block size-3.5 rotate-45 rounded-full border-[2.5px] border-primary-foreground border-b-transparent" />
      </div>

      {NAV.map(({ href, label, icon: Icon }) => {
        const active =
          href === "/"
            ? pathname === "/"
            : pathname === href || pathname.startsWith(`${href}/`);

        return (
          <Link
            key={href}
            href={href}
            className={cn(
              buttonVariants({
                variant: active ? "secondary" : "ghost",
                size: "sm",
              }),
              "h-auto w-16 flex-col gap-1 rounded-lg px-0 py-2 text-xs font-semibold",
              active
                ? "bg-primary/10 text-primary hover:bg-primary/15 hover:text-primary"
                : "text-muted-foreground"
            )}
          >
            <Icon className="size-4" />
            {label}
          </Link>
        );
      })}

      <div className="mt-auto flex flex-col items-center pt-2">
        <button
          type="button"
          onClick={() => void onLogout()}
          className={cn(
            buttonVariants({ variant: "ghost", size: "sm" }),
            "h-auto w-16 flex-col gap-1 rounded-lg px-0 py-2 text-xs font-semibold text-muted-foreground hover:text-destructive"
          )}
          title="로그아웃"
        >
          <LogOut className="size-4" />
          로그아웃
        </button>
      </div>
    </aside>
  );
}
