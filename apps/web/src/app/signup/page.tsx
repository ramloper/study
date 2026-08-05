"use client";

import Link from "next/link";
import { useRouter } from "next/navigation";
import { useState } from "react";
import { Mail } from "lucide-react";
import { toast } from "sonner";

import { Button, buttonVariants } from "@/components/ui/button";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { resendSignupEmail } from "@/lib/auth";
import { isSupabaseConfigured } from "@/lib/supabase/env";
import { tryCreateClient } from "@/lib/supabase/client";
import { cn } from "@/lib/utils";

export default function SignupPage() {
  const router = useRouter();
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [displayName, setDisplayName] = useState("");
  const [loading, setLoading] = useState(false);
  const [resending, setResending] = useState(false);
  const [checkEmail, setCheckEmail] = useState(false);
  const [submittedEmail, setSubmittedEmail] = useState("");
  const configured = isSupabaseConfigured();

  async function onResend() {
    setResending(true);
    try {
      await resendSignupEmail(submittedEmail);
      toast.success("인증 메일을 다시 보냈어요");
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

    const emailRedirectTo = `${window.location.origin}/auth/callback?next=/auth/confirmed`;

    const { data, error } = await supabase.auth.signUp({
      email,
      password,
      options: {
        data: { display_name: displayName || undefined },
        emailRedirectTo,
      },
    });
    setLoading(false);

    if (error) {
      toast.error(error.message);
      return;
    }

    // 이메일 인증이 꺼져 있으면 바로 세션 → 온보딩
    if (data.session) {
      toast.success("가입 완료! 공부할 주제를 골라 주세요.");
      router.replace("/onboarding");
      router.refresh();
      return;
    }

    // 이메일 인증 필요
    setSubmittedEmail(email);
    setCheckEmail(true);
    toast.success("인증 메일을 보냈어요");
  }

  if (checkEmail) {
    return (
      <div className="flex min-h-dvh items-center justify-center bg-background p-6">
        <Card className="w-full max-w-md">
          <CardHeader className="items-center text-center">
            <div className="mb-2 flex size-14 items-center justify-center rounded-full bg-primary/15 text-primary">
              <Mail className="size-7" />
            </div>
            <CardTitle className="text-xl font-extrabold">
              이메일을 확인해 주세요
            </CardTitle>
          </CardHeader>
          <CardContent className="flex flex-col gap-4 text-center">
            <p className="text-sm leading-relaxed text-muted-foreground">
              <strong className="break-all font-semibold text-foreground">
                {submittedEmail}
              </strong>
              <br />
              으로 인증 메일을 보냈어요.
            </p>
            <div className="rounded-xl border border-primary/20 bg-primary/5 px-4 py-3 text-left text-[13px] leading-relaxed text-foreground/90">
              <p className="mb-1.5 font-bold text-primary">다음 단계</p>
              <ol className="list-decimal space-y-1 pl-4">
                <li>메일함에서 Study Alarm 인증 메일을 엽니다.</li>
                <li>
                  <strong>이메일 인증하기</strong> 버튼을 누릅니다.
                </li>
                <li>인증 완료 화면이 뜨면, 가입한 이메일·비밀번호로 로그인합니다.</li>
              </ol>
            </div>
            <p className="text-xs text-muted-foreground">
              메일이 안 보이면 스팸함을 확인해 주세요. 몇 분 걸릴 수 있어요.
            </p>
            <Button
              type="button"
              variant="outline"
              className="h-11 font-bold"
              disabled={resending}
              onClick={() => void onResend()}
            >
              {resending ? "전송 중…" : "인증 메일 다시 보내기"}
            </Button>
            <Link
              href={`/login?email=${encodeURIComponent(submittedEmail)}`}
              className={cn(buttonVariants(), "h-11 font-bold")}
            >
              로그인 화면으로
            </Link>
            <button
              type="button"
              className="text-sm font-semibold text-primary"
              onClick={() => {
                setCheckEmail(false);
                setPassword("");
              }}
            >
              다른 이메일로 다시 가입
            </button>
          </CardContent>
        </Card>
      </div>
    );
  }

  return (
    <div className="flex min-h-dvh items-center justify-center bg-background p-6">
      <Card className="w-full max-w-md">
        <CardHeader>
          <CardTitle className="text-xl font-extrabold">회원가입</CardTitle>
          <p className="text-sm text-muted-foreground">
            가입 후 이메일 인증이 필요해요.
          </p>
        </CardHeader>
        <CardContent>
          {!configured && (
            <div className="mb-4 rounded-lg border border-amber-500/40 bg-amber-500/10 px-3 py-2 text-sm">
              Supabase env가 설정되지 않았습니다.
            </div>
          )}

          <div className="mb-4 rounded-xl border border-border bg-muted/50 px-3.5 py-3 text-[13px] leading-relaxed text-muted-foreground">
            <p className="mb-1 font-bold text-foreground">가입 후 진행 순서</p>
            <ol className="list-decimal space-y-0.5 pl-4">
              <li>입력한 이메일로 인증 메일 발송</li>
              <li>메일에서 인증 링크 클릭</li>
              <li>이메일·비밀번호로 로그인</li>
              <li>공부할 주제 선택 후 시작</li>
            </ol>
          </div>

          <form className="flex flex-col gap-4" onSubmit={onSubmit}>
            <div className="flex flex-col gap-1.5">
              <Label htmlFor="displayName">닉네임 (선택)</Label>
              <Input
                id="displayName"
                value={displayName}
                onChange={(e) => setDisplayName(e.target.value)}
                className="h-10"
              />
            </div>
            <div className="flex flex-col gap-1.5">
              <Label htmlFor="email">이메일</Label>
              <Input
                id="email"
                type="email"
                required
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                className="h-10"
                placeholder="you@example.com"
              />
            </div>
            <div className="flex flex-col gap-1.5">
              <Label htmlFor="password">비밀번호 (6자 이상)</Label>
              <Input
                id="password"
                type="password"
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
              {loading ? "가입 중…" : "가입하고 인증 메일 받기"}
            </Button>
          </form>
          <p className="mt-4 text-center text-sm text-muted-foreground">
            이미 계정이 있나요?{" "}
            <Link href="/login" className="font-semibold text-primary">
              로그인
            </Link>
          </p>
        </CardContent>
      </Card>
    </div>
  );
}
