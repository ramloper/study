import Link from "next/link";
import { CheckCircle2 } from "lucide-react";

import { buttonVariants } from "@/components/ui/button";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { cn } from "@/lib/utils";

export default function AuthConfirmedPage() {
  return (
    <div className="flex min-h-dvh items-center justify-center bg-background p-6">
      <Card className="w-full max-w-md text-center">
        <CardHeader className="items-center gap-3">
          <div className="flex size-14 items-center justify-center rounded-full bg-primary/15 text-primary">
            <CheckCircle2 className="size-8" />
          </div>
          <CardTitle className="text-xl font-extrabold">
            이메일 인증이 완료되었어요
          </CardTitle>
        </CardHeader>
        <CardContent className="flex flex-col items-center gap-5">
          <p className="text-sm leading-relaxed text-muted-foreground">
            계정이 활성화되었습니다.
            <br />
            <strong className="font-semibold text-foreground">
              가입하신 이메일과 비밀번호
            </strong>
            로 로그인해 주세요.
          </p>
          <Link
            href="/login?verified=1"
            className={cn(buttonVariants(), "h-11 w-full font-bold")}
          >
            로그인하러 가기
          </Link>
          <p className="text-xs text-muted-foreground">
            로그인 후 공부할 주제를 선택하면 바로 시작할 수 있어요.
          </p>
        </CardContent>
      </Card>
    </div>
  );
}
