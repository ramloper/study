"use client";

import Link from "next/link";
import { useRouter, useSearchParams } from "next/navigation";
import { Suspense, useEffect, useState } from "react";
import { toast } from "sonner";

import { Button } from "@/components/ui/button";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { resendSignupEmail } from "@/lib/auth";
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
  const [resending, setResending] = useState(false);
  const [needsConfirm, setNeedsConfirm] = useState(false);

  const configured = isSupabaseConfigured();

  useEffect(() => {
    if (verified) {
      toast.success("이메일 인증이 완료되었어요. 로그인해 주세요.");
    }
    if (errorParam && messageParam) {
      toast.error(decodeURIComponent(messageParam));
    }
  }, [verified, errorParam, messageParam]);

  async function onResend() {
    if (!email.trim()) {
      toast.error("이메일을 입력해 주세요");
      return;
    }
    setResending(true);
    try {
      await resendSignupEmail(email);
      toast.success("인증 메일을 다시 보냈어요. 메일함을 확인해 주세요.");
    } catch (e) {
      toast.error(
        e instanceof Error ? e.message : "메일 재전송에 실패했어요"
      );
    } finally {
      setResending(false);
    }
  }

  async function onSubmit(e: React.FormEvent) {
    e.preventDefault();
    const supabase = tryCreateClient();
    if (!supabase) {
      toast.error("Supabase 환경 변수를 설정해 주세요.");
      return;
    }
    setLoading(true);
    setNeedsConfirm(false);
    const { error } = await supabase.auth.signInWithPassword({
      email,
      password,
    });
    setLoading(false);
    if (error) {
      const msg = error.message.toLowerCase();
      if (msg.includes("email not confirmed") || msg.includes("not confirmed")) {
        setNeedsConfirm(true);
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

          {needsConfirm && (
            <div className="mt-4 rounded-xl border border-amber-500/30 bg-amber-500/10 px-3.5 py-3 text-[13px]">
              <p className="font-semibold text-foreground">
                이메일 인증이 필요해요
              </p>
              <p className="mt-1 text-muted-foreground">
                메일이 없다면 아래 버튼으로 다시 받을 수 있어요.
              </p>
              <Button
                type="button"
                variant="outline"
                className="mt-3 h-9 w-full font-semibold"
                disabled={resending || !email.trim()}
                onClick={() => void onResend()}
              >
                {resending ? "전송 중…" : "인증 메일 다시 보내기"}
              </Button>
            </div>
          )}

          {!needsConfirm && (
            <button
              type="button"
              className="mt-3 w-full text-center text-sm font-semibold text-primary disabled:opacity-50"
              disabled={resending || !configured}
              onClick={() => void onResend()}
            >
              {resending ? "전송 중…" : "인증 메일 다시 보내기"}
            </button>
          )}

          <p className="mt-4 text-center text-sm text-muted-foreground">
            계정이 없나요?{" "}
            <Link href="/signup" className="font-semibold text-primary">
              회원가입
            </Link>
          </p>
          <p className="mt-2 text-center text-xs text-muted-foreground">
            가입 직후라면 메일 인증을 먼저 완료해 주세요.
          </p>
          <p className="mt-3 text-center text-sm">
            <Link
              href="/download"
              className="font-semibold text-primary underline-offset-4 hover:underline"
            >
              데스크톱 앱 다운로드
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
