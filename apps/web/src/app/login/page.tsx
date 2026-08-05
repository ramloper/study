"use client";

import Link from "next/link";
import { useRouter, useSearchParams } from "next/navigation";
import { Suspense, useEffect, useState } from "react";
import { toast } from "sonner";

import { Button } from "@/components/ui/button";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { isSupabaseConfigured } from "@/lib/supabase/env";
import { tryCreateClient } from "@/lib/supabase/client";

function LoginForm() {
  const router = useRouter();
  const searchParams = useSearchParams();
  const next = searchParams.get("next") ?? "/";
  const verified = searchParams.get("verified") === "1";
  const errorParam = searchParams.get("error");
  const messageParam = searchParams.get("message");
  const emailFromQuery = searchParams.get("email") ?? "";

  const [email, setEmail] = useState(emailFromQuery);
  const [password, setPassword] = useState("");
  const [loading, setLoading] = useState(false);

  const configured = isSupabaseConfigured();

  useEffect(() => {
    if (verified) {
      toast.success("이메일 인증이 완료되었어요. 로그인해 주세요.");
    }
    if (errorParam && messageParam) {
      toast.error(decodeURIComponent(messageParam));
    }
  }, [verified, errorParam, messageParam]);

  async function onSubmit(e: React.FormEvent) {
    e.preventDefault();
    const supabase = tryCreateClient();
    if (!supabase) {
      toast.error("Supabase 환경 변수를 설정해 주세요.");
      return;
    }
    setLoading(true);
    const { error } = await supabase.auth.signInWithPassword({
      email,
      password,
    });
    setLoading(false);
    if (error) {
      const msg = error.message.toLowerCase();
      if (msg.includes("email not confirmed") || msg.includes("not confirmed")) {
        toast.error(
          "이메일 인증이 아직 안 됐어요. 메일함의 인증 링크를 확인해 주세요."
        );
      } else {
        toast.error(error.message);
      }
      return;
    }
    toast.success("로그인했어요");
    router.replace(next);
    router.refresh();
  }

  return (
    <div className="flex min-h-dvh items-center justify-center bg-background p-6">
      <Card className="w-full max-w-md">
        <CardHeader>
          <CardTitle className="text-xl font-extrabold">로그인</CardTitle>
          <p className="text-sm text-muted-foreground">
            Study Alarm 계정으로 이어서 공부해요.
          </p>
        </CardHeader>
        <CardContent>
          {verified && (
            <div className="mb-4 rounded-xl border border-primary/25 bg-primary/10 px-3.5 py-3 text-[13px] leading-relaxed text-foreground">
              <p className="font-bold text-primary">이메일 인증 완료</p>
              <p className="mt-0.5 text-muted-foreground">
                가입하신 이메일과 비밀번호로 로그인해 주세요.
              </p>
            </div>
          )}

          {!configured && (
            <div className="mb-4 rounded-lg border border-amber-500/40 bg-amber-500/10 px-3 py-2 text-sm text-amber-900 dark:text-amber-100">
              <code className="text-xs">NEXT_PUBLIC_SUPABASE_URL</code>,{" "}
              <code className="text-xs">NEXT_PUBLIC_SUPABASE_ANON_KEY</code> 를
              설정한 뒤 다시 시작해 주세요.
            </div>
          )}
          <form className="flex flex-col gap-4" onSubmit={onSubmit}>
            <div className="flex flex-col gap-1.5">
              <Label htmlFor="email">이메일</Label>
              <Input
                id="email"
                type="email"
                autoComplete="email"
                required
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                className="h-10"
              />
            </div>
            <div className="flex flex-col gap-1.5">
              <Label htmlFor="password">비밀번호</Label>
              <Input
                id="password"
                type="password"
                autoComplete="current-password"
                required
                minLength={6}
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                className="h-10"
              />
            </div>
            <Button
              type="submit"
              className="h-11 font-bold"
              disabled={loading || !configured}
            >
              {loading ? "로그인 중…" : "로그인"}
            </Button>
          </form>

          <p className="mt-4 text-center text-sm text-muted-foreground">
            계정이 없나요?{" "}
            <Link href="/signup" className="font-semibold text-primary">
              회원가입
            </Link>
          </p>
        </CardContent>
      </Card>
    </div>
  );
}

export default function LoginPage() {
  return (
    <Suspense fallback={<div className="min-h-dvh" />}>
      <LoginForm />
    </Suspense>
  );
}
