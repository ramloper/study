import { tryCreateClient } from "@/lib/supabase/client";

export async function signOut() {
  const supabase = tryCreateClient();
  if (supabase) {
    await supabase.auth.signOut();
  }
}

/** 가입 인증 메일 재전송 */
export async function resendSignupEmail(email: string) {
  const supabase = tryCreateClient();
  if (!supabase) {
    throw new Error("Supabase가 설정되지 않았어요");
  }
  if (!email.trim()) {
    throw new Error("이메일을 입력해 주세요");
  }

  const emailRedirectTo =
    typeof window !== "undefined"
      ? `${window.location.origin}/auth/callback?next=/auth/confirmed`
      : undefined;

  const { error } = await supabase.auth.resend({
    type: "signup",
    email: email.trim(),
    options: emailRedirectTo ? { emailRedirectTo } : undefined,
  });

  if (error) throw error;
}
