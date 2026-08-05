export type QuestionType = "mcq" | "short";

export type Question = {
  id: string;
  type: QuestionType;
  subject: string;
  number: number;
  body: string;
  options?: string[];
  /** MCQ: 0-based index / Short: answer string */
  answer: string | number;
  answerLabel: string;
  explain: string;
  concepts: string[];
  difficulty?: 1 | 2 | 3;
};

export type IntervalUnit = "min" | "hour";

export type AlarmSettings = {
  enabled: boolean;
  startHour: number;
  endHour: number;
  interval: number;
  intervalUnit: IntervalUnit;
  weekdaysOnly: boolean;
};

export type AttemptResult = "correct" | "incorrect";

export type ProgressRecord = {
  id: string;
  questionId: string;
  subject: string;
  title: string;
  result: AttemptResult;
  at: string;
};

export type ProgressStats = {
  todaySolved: number;
  todayCorrect: number;
  weekSolved: number;
  totalSolved: number;
  totalCorrect: number;
  streak: number;
  recent: ProgressRecord[];
};

export const DEFAULT_ALARM_SETTINGS: AlarmSettings = {
  enabled: true,
  startHour: 10,
  endHour: 18,
  interval: 45,
  intervalUnit: "min",
  weekdaysOnly: true,
};

export const NOTIFICATION = {
  title: "한 문제 타임",
  body: "지금 1문제만 풀어볼까요?",
} as const;
