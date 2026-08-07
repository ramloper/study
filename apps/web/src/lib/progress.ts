"use client";

import type { ProgressRecord, ProgressStats } from "@study/shared";

const KEY = "study.progressRecords";

function startOfDay(d = new Date()) {
  const x = new Date(d);
  x.setHours(0, 0, 0, 0);
  return x;
}

function startOfWeek(d = new Date()) {
  const x = startOfDay(d);
  const day = x.getDay();
  const diff = day === 0 ? 6 : day - 1;
  x.setDate(x.getDate() - diff);
  return x;
}

function loadRecords(): ProgressRecord[] {
  if (typeof window === "undefined") return [];
  try {
    const raw = localStorage.getItem(KEY);
    if (!raw) return [];
    return JSON.parse(raw) as ProgressRecord[];
  } catch {
    return [];
  }
}

function saveRecords(records: ProgressRecord[]) {
  localStorage.setItem(KEY, JSON.stringify(records.slice(0, 200)));
}

export function addAttempt(input: {
  questionId: string;
  subject: string;
  title: string;
  correct: boolean;
}): ProgressRecord {
  const record: ProgressRecord = {
    id: `${Date.now()}-${Math.random().toString(36).slice(2, 7)}`,
    questionId: input.questionId,
    subject: input.subject,
    title: input.title,
    result: input.correct ? "correct" : "incorrect",
    at: new Date().toISOString(),
  };
  saveRecords([record, ...loadRecords()]);
  return record;
}

export function getProgressStats(): ProgressStats {
  const records = loadRecords();
  const today0 = startOfDay().getTime();
  const week0 = startOfWeek().getTime();

  const today = records.filter((r) => new Date(r.at).getTime() >= today0);
  const week = records.filter((r) => new Date(r.at).getTime() >= week0);

  return {
    todaySolved: today.length,
    todayCorrect: today.filter((r) => r.result === "correct").length,
    weekSolved: week.length,
    totalSolved: records.length,
    totalCorrect: records.filter((r) => r.result === "correct").length,
    streak: calcStreak(records),
    recent: records.slice(0, 20),
  };
}

/** Question ids the user has answered correctly at least once (local). */
export function getCorrectQuestionIds(): Set<string> {
  const ids = new Set<string>();
  for (const r of loadRecords()) {
    if (r.result === "correct") ids.add(r.questionId);
  }
  return ids;
}

function calcStreak(records: ProgressRecord[]): number {
  if (records.length === 0) return 0;
  const days = new Set(
    records.map((r) => {
      const d = new Date(r.at);
      return `${d.getFullYear()}-${d.getMonth()}-${d.getDate()}`;
    })
  );

  let streak = 0;
  const cursor = startOfDay();
  const todayKey = `${cursor.getFullYear()}-${cursor.getMonth()}-${cursor.getDate()}`;
  if (!days.has(todayKey)) {
    cursor.setDate(cursor.getDate() - 1);
  }

  while (true) {
    const key = `${cursor.getFullYear()}-${cursor.getMonth()}-${cursor.getDate()}`;
    if (!days.has(key)) break;
    streak += 1;
    cursor.setDate(cursor.getDate() - 1);
  }
  return streak;
}

export function formatRecordTime(iso: string): string {
  const d = new Date(iso);
  const now = new Date();
  const sameDay =
    d.getFullYear() === now.getFullYear() &&
    d.getMonth() === now.getMonth() &&
    d.getDate() === now.getDate();

  const yesterday = new Date(now);
  yesterday.setDate(yesterday.getDate() - 1);
  const isYesterday =
    d.getFullYear() === yesterday.getFullYear() &&
    d.getMonth() === yesterday.getMonth() &&
    d.getDate() === yesterday.getDate();

  if (isYesterday) return "어제";

  const h = d.getHours();
  const m = String(d.getMinutes()).padStart(2, "0");
  const period = h < 12 ? "오전" : "오후";
  const h12 = h === 0 ? 12 : h > 12 ? h - 12 : h;
  if (sameDay) return `${period} ${h12}:${m}`;
  return `${d.getMonth() + 1}/${d.getDate()} ${period} ${h12}:${m}`;
}

export function pct(correct: number, total: number): string {
  if (total === 0) return "—";
  return `${Math.round((correct / total) * 100)}%`;
}
