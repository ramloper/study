import type { Question } from "./types";

export const QUESTIONS: Question[] = [
  {
    id: "q-http-idempotent",
    type: "mcq",
    subject: "CS 기초",
    number: 27,
    body: "HTTP에서 멱등성(idempotent)을 보장하지 않는 메서드는 무엇인가요?",
    options: ["GET", "PUT", "POST", "DELETE"],
    answer: 2,
    answerLabel: "③ POST",
    explain:
      "POST는 같은 요청을 여러 번 보내면 리소스가 여러 개 생성될 수 있어 멱등성이 보장되지 않습니다. GET·PUT·DELETE는 여러 번 호출해도 서버 상태의 결과가 같아 멱등합니다.",
    concepts: ["HTTP 메서드", "REST", "멱등성"],
    difficulty: 2,
  },
  {
    id: "q-supply-demand",
    type: "short",
    subject: "영어 어휘",
    number: 28,
    body: '"수요와 공급"을 뜻하는 영어 표현을 쓰세요.',
    answer: "supply and demand",
    answerLabel: "supply and demand",
    explain:
      "경제학의 기본 개념으로, 관용적으로 supply가 먼저 옵니다. demand and supply도 문법적으로 틀리진 않지만 표준 표현은 supply and demand입니다.",
    concepts: ["경제 용어", "관용 표현"],
    difficulty: 2,
  },
  {
    id: "q-tcp-handshake",
    type: "mcq",
    subject: "CS 기초",
    number: 29,
    body: "TCP 3-way handshake의 순서로 옳은 것은?",
    options: [
      "SYN → SYN-ACK → ACK",
      "ACK → SYN → SYN-ACK",
      "SYN-ACK → SYN → ACK",
      "FIN → ACK → FIN-ACK",
    ],
    answer: 0,
    answerLabel: "① SYN → SYN-ACK → ACK",
    explain:
      "클라이언트가 SYN을 보내고, 서버가 SYN-ACK로 응답한 뒤, 클라이언트가 ACK를 보내 연결을 확립합니다.",
    concepts: ["TCP", "3-way handshake", "네트워크"],
    difficulty: 2,
  },
  {
    id: "q-http-redirect",
    type: "mcq",
    subject: "CS 기초",
    number: 30,
    body: "HTTP 상태 코드 301과 302의 차이는?",
    options: [
      "301은 영구 이동, 302는 임시 이동",
      "301은 임시 이동, 302는 영구 이동",
      "둘 다 동일하게 영구 이동",
      "둘 다 클라이언트 오류",
    ],
    answer: 0,
    answerLabel: "① 301은 영구 이동, 302는 임시 이동",
    explain:
      "301 Moved Permanently는 리소스가 영구적으로 옮겼음을, 302 Found는 일시적 리다이렉트를 의미합니다.",
    concepts: ["HTTP 상태 코드", "리다이렉트"],
    difficulty: 1,
  },
  {
    id: "q-stack-queue",
    type: "mcq",
    subject: "자료구조",
    number: 31,
    body: "스택으로 큐를 구현할 때 필요한 최소 스택 수는?",
    options: ["1개", "2개", "3개", "4개"],
    answer: 1,
    answerLabel: "② 2개",
    explain:
      "입력용·출력용 스택 2개로 enqueue/dequeue를 구현하는 것이 표준 방법입니다.",
    concepts: ["스택", "큐", "자료구조"],
    difficulty: 2,
  },
  {
    id: "q-break-even",
    type: "short",
    subject: "영어 어휘",
    number: 32,
    body: '"손익분기점"의 영어 표현을 쓰세요.',
    answer: "break-even point",
    answerLabel: "break-even point",
    explain:
      "손익이 맞아떨어지는 지점을 break-even point(또는 break even point)라고 합니다. 약어 BEP도 자주 씁니다.",
    concepts: ["경제 용어", "비즈니스 영어"],
    difficulty: 2,
  },
  {
    id: "q-big-o",
    type: "mcq",
    subject: "CS 기초",
    number: 33,
    body: "배열에서 인덱스로 요소에 접근하는 시간 복잡도는?",
    options: ["O(1)", "O(log n)", "O(n)", "O(n log n)"],
    answer: 0,
    answerLabel: "① O(1)",
    explain:
      "배열은 연속 메모리에 저장되어 인덱스 계산만으로 바로 접근할 수 있어 O(1)입니다.",
    concepts: ["시간 복잡도", "배열", "Big-O"],
    difficulty: 1,
  },
  {
    id: "q-economies-of-scale",
    type: "short",
    subject: "영어 어휘",
    number: 34,
    body: '"규모의 경제"를 뜻하는 영어 표현을 쓰세요.',
    answer: "economies of scale",
    answerLabel: "economies of scale",
    explain:
      "생산 규모가 커질수록 단위당 비용이 낮아지는 현상을 economies of scale이라고 합니다.",
    concepts: ["경제 용어", "비즈니스 영어"],
    difficulty: 2,
  },
];

export function getQuestionById(id: string): Question | undefined {
  return QUESTIONS.find((q) => q.id === id);
}

export function getNextQuestion(currentId?: string): Question {
  if (!currentId) return QUESTIONS[0];
  const idx = QUESTIONS.findIndex((q) => q.id === currentId);
  return QUESTIONS[(idx + 1 + QUESTIONS.length) % QUESTIONS.length];
}

export function normalizeAnswer(text: string): string {
  return (text || "")
    .toLowerCase()
    .replace(/\s+/g, " ")
    .trim()
    .replace(/-/g, " ");
}

export function checkShortAnswer(input: string, answer: string): boolean {
  const a = normalizeAnswer(input);
  const b = normalizeAnswer(answer);
  if (a === b) return true;
  return a.replace(/ /g, "") === b.replace(/ /g, "");
}

export const CIRCLE_MARKS = ["①", "②", "③", "④", "⑤"] as const;
