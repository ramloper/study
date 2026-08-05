import { NextResponse } from "next/server";

import { createClient } from "@/lib/supabase/server";

export async function GET(request: Request) {
  const { searchParams, origin } = new URL(request.url);
  const code = searchParams.get("code");
  const next = searchParams.get("next") ?? "/";
  const type = searchParams.get("type"); // signup | email | recovery | ...

  // Email confirm / invite: verify then show "please login" page
  const isEmailConfirm =
    next.startsWith("/auth/confirmed") ||
    type === "signup" ||
    type === "email" ||
    type === "email_change";

  if (code) {
    const supabase = await createClient();
    const { error } = await supabase.auth.exchangeCodeForSession(code);

    if (!error) {
      if (isEmailConfirm) {
        // 인증만 완료시키고, 로그인 화면으로 유도
        await supabase.auth.signOut();
        return NextResponse.redirect(`${origin}/auth/confirmed`);
      }
      return NextResponse.redirect(`${origin}${next}`);
    }
  }

  // token_hash 방식 (일부 메일 링크)
  const token_hash = searchParams.get("token_hash");
  const verifyType = searchParams.get("type");
  if (token_hash && verifyType) {
    const supabase = await createClient();
    const { error } = await supabase.auth.verifyOtp({
      type: verifyType as "signup" | "email" | "recovery" | "invite",
      token_hash,
    });
    if (!error) {
      if (
        verifyType === "signup" ||
        verifyType === "email" ||
        isEmailConfirm
      ) {
        await supabase.auth.signOut();
        return NextResponse.redirect(`${origin}/auth/confirmed`);
      }
      return NextResponse.redirect(`${origin}${next}`);
    }
  }

  return NextResponse.redirect(
    `${origin}/login?error=auth&message=${encodeURIComponent(
      "이메일 인증에 실패했어요. 링크가 만료되었을 수 있어요."
    )}`
  );
}
