"use client";

import { useCallback, useEffect, useMemo, useState } from "react";
import { useRouter } from "next/navigation";
import { CIRCLE_MARKS, checkShortAnswer, type Question } from "@study/shared";

import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { ScrollArea } from "@/components/ui/scroll-area";
import { Separator } from "@/components/ui/separator";
import { Skeleton } from "@/components/ui/skeleton";
import { hideToTray } from "@/lib/desktop";
import { addAttempt, getProgressStats } from "@/lib/progress";
import {
  fetchNextQuestion,
  fetchQuestionById,
  recordAttempt,
} from "@/lib/questions-api";
import { cn } from "@/lib/utils";

type QuestionExtra = Question & { _optionIds?: string[] };

type Props = {
  questionId?: string;
};

export function QuestionView({ questionId }: Props) {
  const router = useRouter();
  const [loading, setLoading] = useState(true);
  const [question, setQuestion] = useState<QuestionExtra | null>(null);
  const [empty, setEmpty] = useState(false);
  const [selected, setSelected] = useState(-1);
  const [shortInput, setShortInput] = useState("");
  const [submitted, setSubmitted] = useState(false);
  const [correct, setCorrect] = useState(false);
  const [answerOpen, setAnswerOpen] = useState(false);
  const [todayCount, setTodayCount] = useState(0);

  const loadQuestion = useCallback(async (id?: string, excludeId?: string) => {
    setLoading(true);
    setSelected(-1);
    setShortInput("");
    setSubmitted(false);
    setCorrect(false);
    setAnswerOpen(false);
    setEmpty(false);

    try {
      const q =
        id && id !== "next"
          ? await fetchQuestionById(id)
          : await fetchNextQuestion(excludeId);
      if (!q) {
        setQuestion(null);
        setEmpty(true);
      } else {
        setQuestion(q as QuestionExtra);
      }
      setTodayCount(getProgressStats().todaySolved);
    } catch (e) {
      console.error(e);
      setEmpty(true);
      setQuestion(null);
    } finally {
      setLoading(false);
    }
  }, []);

  useEffect(() => {
    void loadQuestion(questionId);
  }, [questionId, loadQuestion]);

  useEffect(() => {
    if (!window.desktop?.onOpenQuestion) return;
    return window.desktop.onOpenQuestion(() => {
      router.push("/question/next");
      void loadQuestion("next");
    });
  }, [router, loadQuestion]);

  const isMcq = question?.type === "mcq";

  const shortCorrect = useMemo(() => {
    if (!question || question.type !== "short") return false;
    return checkShortAnswer(shortInput, String(question.answer));
  }, [question, shortInput]);

  function onSubmit() {
    if (!question) return;
    if (isMcq && selected < 0) return;
    if (!isMcq && !shortInput.trim()) return;

    const ok = isMcq
      ? selected === question.answer
      : checkShortAnswer(shortInput, String(question.answer));

    setSubmitted(true);
    setCorrect(ok);
    if (!ok) setAnswerOpen(true);

    addAttempt({
      questionId: question.id,
      subject: question.subject,
      title: question.body,
      correct: ok,
    });
    void recordAttempt({
      questionId: question.id,
      selectedIndex: isMcq ? selected : undefined,
      optionIds: question._optionIds,
      answerText: !isMcq ? shortInput : undefined,
      isCorrect: ok,
    });
    setTodayCount((c) => c + 1);
  }

  function onNext() {
    const prevId = question?.id;
    if (!question) {
      void loadQuestion("next");
      return;
    }
    router.push("/question/next");
    // Always skip current; correct ones stay excluded via attempts/local progress
    void loadQuestion("next", prevId);
  }

  async function onLater() {
    await hideToTray();
    router.push("/");
  }

  const difficultyDots =
    "●".repeat(question?.difficulty ?? 2) +
    "○".repeat(3 - (question?.difficulty ?? 2));

  if (!loading && empty) {
    return (
      <div className="flex flex-1 flex-col items-center justify-center gap-4 p-10 text-center">
        <p className="text-lg font-bold">출제할 문제가 없어요</p>
        <p className="max-w-sm text-sm text-muted-foreground">
          선택한 주제의 문제를 모두 맞췄거나, 주제가 없을 수 있어요. 설정에서
          주제를 더 켜 보거나 진행 현황을 확인해 주세요.
        </p>
        <div className="flex gap-2">
          <Button onClick={() => router.push("/settings")}>설정으로</Button>
          <Button variant="outline" onClick={() => router.push("/progress")}>
            진행 현황
          </Button>
          <Button variant="outline" onClick={() => router.push("/onboarding")}>
            주제 고르기
          </Button>
        </div>
      </div>
    );
  }

  return (
    <div className="flex min-h-0 flex-1 flex-col">
      <header className="flex shrink-0 items-center gap-3 border-b border-border px-5 py-3.5">
        <Badge
          variant="secondary"
          className="rounded-full bg-primary/12 px-3 py-1 text-xs font-bold text-primary"
        >
          {question?.subject ?? "…"}
        </Badge>
        <span className="whitespace-nowrap text-[13px] text-muted-foreground">
          오늘 {todayCount}문제째
        </span>
        <div className="ml-auto flex gap-2">
          <Button
            variant="outline"
            size="sm"
            className={cn(
              "font-bold",
              answerOpen &&
                "border-primary bg-primary/10 text-primary hover:bg-primary/15 hover:text-primary"
            )}
            onClick={() => setAnswerOpen((v) => !v)}
            disabled={loading || !question}
          >
            {answerOpen ? "답안 닫기" : "답안지 바로보기"}
          </Button>
        </div>
      </header>

      {loading || !question ? (
        <div className="flex flex-1 flex-col gap-4 p-10">
          <Skeleton className="h-4 w-28" />
          <Skeleton className="h-7 w-[70%]" />
          <Skeleton className="mb-3 h-7 w-[55%]" />
          <Skeleton className="h-14 w-full rounded-xl" />
          <Skeleton className="h-14 w-full rounded-xl" />
          <Skeleton className="h-14 w-full rounded-xl" />
        </div>
      ) : (
        <div
          className={cn(
            "grid min-h-0 flex-1 transition-[grid-template-columns] duration-300 ease-out",
            answerOpen
              ? "grid-cols-1 md:grid-cols-[1fr_0.9fr]"
              : "grid-cols-1 md:grid-cols-[1fr_0fr]"
          )}
        >
          <ScrollArea className="min-h-0">
            <div className="flex min-h-full flex-col gap-5 px-9 py-8">
              <div className="flex items-center gap-2.5">
                <span className="text-[13px] font-extrabold text-primary">
                  Q{question.number}
                </span>
                <span className="text-xs text-muted-foreground">
                  난이도 {difficultyDots}
                </span>
                {submitted && (
                  <Badge
                    variant="secondary"
                    className={cn(
                      "rounded-full font-bold",
                      correct
                        ? "bg-emerald-500/15 text-emerald-700"
                        : "bg-destructive/15 text-destructive"
                    )}
                  >
                    {correct ? "맞았어요" : "아쉬워요"}
                  </Badge>
                )}
              </div>

              <p className="text-pretty text-[19px] font-bold leading-relaxed">
                {question.body}
              </p>

              {isMcq ? (
                <div className="flex flex-col gap-2.5">
                  {(question.options ?? []).map((text, i) => {
                    const isAns = i === question.answer;
                    const isSel = selected === i;
                    let state: "idle" | "selected" | "correct" | "incorrect" =
                      "idle";
                    if (submitted) {
                      if (isAns) state = "correct";
                      else if (isSel) state = "incorrect";
                    } else if (isSel) state = "selected";

                    return (
                      <button
                        key={`${text}-${i}`}
                        type="button"
                        disabled={submitted}
                        onClick={() => setSelected(i)}
                        className={cn(
                          "flex items-center gap-3 rounded-xl border-[1.5px] px-4 py-3.5 text-left text-[15px] transition-colors",
                          state === "idle" &&
                            "border-border bg-background hover:border-primary",
                          state === "selected" &&
                            "border-primary bg-primary/10",
                          state === "correct" &&
                            "border-emerald-500 bg-emerald-500/10",
                          state === "incorrect" &&
                            "border-destructive bg-destructive/10"
                        )}
                      >
                        <span
                          className={cn(
                            "flex size-6 shrink-0 items-center justify-center rounded-full border-[1.5px] text-xs font-bold",
                            state === "idle" &&
                              "border-muted-foreground/30 text-muted-foreground",
                            state === "selected" &&
                              "border-primary bg-primary text-primary-foreground",
                            state === "correct" &&
                              "border-emerald-500 bg-emerald-500 text-white",
                            state === "incorrect" &&
                              "border-destructive bg-destructive text-white"
                          )}
                        >
                          {CIRCLE_MARKS[i]}
                        </span>
                        <span className="flex-1">{text}</span>
                      </button>
                    );
                  })}
                </div>
              ) : (
                <div className="flex flex-col gap-2.5">
                  <Input
                    value={shortInput}
                    onChange={(e) => {
                      if (!submitted) setShortInput(e.target.value);
                    }}
                    placeholder="답을 입력하세요"
                    disabled={submitted}
                    className={cn(
                      "h-12 rounded-xl text-base",
                      submitted &&
                        shortCorrect &&
                        "border-emerald-500 bg-emerald-500/10",
                      submitted &&
                        !shortCorrect &&
                        "border-destructive bg-destructive/10"
                    )}
                    onKeyDown={(e) => {
                      if (e.key === "Enter" && !submitted) onSubmit();
                    }}
                  />
                  {submitted && (
                    <p
                      className={cn(
                        "text-[13px] font-semibold",
                        shortCorrect ? "text-emerald-700" : "text-destructive"
                      )}
                    >
                      {shortCorrect
                        ? "정답과 일치해요"
                        : `정답: ${question.answerLabel}`}
                    </p>
                  )}
                </div>
              )}

              <div className="mt-auto flex gap-2.5 pt-2.5">
                {!submitted ? (
                  <Button
                    className="h-11 rounded-xl px-8 font-bold"
                    onClick={onSubmit}
                  >
                    제출
                  </Button>
                ) : (
                  <Button
                    className="h-11 rounded-xl px-8 font-bold"
                    onClick={onNext}
                  >
                    다음 문제
                  </Button>
                )}
                <Button
                  variant="outline"
                  className="h-11 rounded-xl px-5 font-semibold text-muted-foreground"
                  onClick={() => void onLater()}
                >
                  나중에
                </Button>
              </div>
            </div>
          </ScrollArea>

          <div
            className={cn(
              "min-w-0 overflow-hidden border-border bg-primary/5 transition-all duration-300",
              answerOpen
                ? "border-t md:border-t-0 md:border-l"
                : "pointer-events-none border-0"
            )}
          >
            <div className="flex min-w-[300px] flex-col gap-4 px-7 py-8">
              <p className="text-xs font-extrabold tracking-[0.08em] text-primary">
                답안지
              </p>
              <div className="flex flex-col gap-1.5">
                <span className="text-xs font-semibold text-muted-foreground">
                  정답
                </span>
                <span className="text-lg font-extrabold text-primary">
                  {question.answerLabel}
                </span>
              </div>
              <Separator />
              <div className="flex flex-col gap-1.5">
                <span className="text-xs font-semibold text-muted-foreground">
                  해설
                </span>
                <p className="text-pretty text-[14.5px] leading-relaxed text-foreground/80">
                  {question.explain}
                </p>
              </div>
              <div className="flex flex-col gap-1.5">
                <span className="text-xs font-semibold text-muted-foreground">
                  관련 개념
                </span>
                <div className="flex flex-wrap gap-1.5">
                  {question.concepts.map((c) => (
                    <Badge
                      key={c}
                      variant="outline"
                      className="rounded-full border-primary/25 bg-background font-semibold text-primary"
                    >
                      {c}
                    </Badge>
                  ))}
                </div>
              </div>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
