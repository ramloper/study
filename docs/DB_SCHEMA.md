# Study Alarm — Supabase DB 스키마 (초안)

> 검토용 스키마. Auth는 Supabase Auth (`auth.users`), 앱 프로필은 `public.profiles`.  
> **유저는 여러 subject 중 공부할 주제만 선택** → `user_subjects`.

### 주제 선택 정책 (확정)

| 상황 | 결정 |
|------|------|
| 주제를 하나도 안 고름 (`is_enabled = true` 0건) | **출제 안 함** + “주제를 선택하세요” 유도 |
| 체크 해제 | row 유지, **`is_enabled = false`** (soft) |
| 가입 직후 | **온보딩에서 주제 1개 이상 필수 선택** 후에만 메인 이용 |

---

## ER 다이어그램 (컬럼 전체)

```mermaid
erDiagram
  auth_users ||--|| profiles : "id = auth.uid"
  profiles ||--o| alarm_settings : "user_id"
  profiles ||--o{ attempts : "user_id"
  profiles ||--o{ user_subjects : "user_id"
  subjects ||--o{ user_subjects : "subject_id"
  subjects ||--o{ questions : "subject_id"
  questions ||--o{ question_options : "question_id"
  questions ||--|| question_answers : "question_id"
  questions ||--o{ attempts : "question_id"
  question_options ||--o| question_answers : "correct_option_id"
  question_options ||--o{ attempts : "selected_option_id"

  auth_users {
    uuid id PK
    varchar email
    timestamptz created_at
    timestamptz last_sign_in_at
    jsonb raw_user_meta_data
  }

  profiles {
    uuid id PK "FK auth.users.id"
    text display_name
    text avatar_url "nullable"
    timestamptz created_at
    timestamptz updated_at
  }

  subjects {
    uuid id PK
    text name
    text slug UK
    int sort_order "default 0"
    boolean is_active "default true"
    timestamptz created_at
    timestamptz updated_at
  }

  user_subjects {
    uuid user_id PK_FK "profiles.id"
    uuid subject_id PK_FK "subjects.id"
    boolean is_enabled "default true"
    int sort_order "default 0 유저 선호 순서"
    timestamptz created_at
    timestamptz updated_at
  }

  questions {
    uuid id PK
    uuid subject_id FK
    text type "check mcq|short"
    text body
    int difficulty "check 1..3"
    int number "nullable 표시용 Q번호"
    boolean is_active "default true"
    timestamptz created_at
    timestamptz updated_at
  }

  question_options {
    uuid id PK
    uuid question_id FK
    text body
    int sort_order "0-based ①②③④"
    timestamptz created_at
  }

  question_answers {
    uuid id PK
    uuid question_id FK_UK "1:1 unique"
    uuid correct_option_id FK "nullable mcq only"
    text answer_text "short 대표정답 or mcq 라벨"
    text_arr accepted_answers "nullable short 변형"
    text explanation
    text_arr concepts "default {}"
    timestamptz created_at
    timestamptz updated_at
  }

  attempts {
    uuid id PK
    uuid user_id FK
    uuid question_id FK
    uuid selected_option_id FK "nullable mcq"
    text answer_text "nullable short"
    boolean is_correct
    timestamptz answered_at "default now()"
  }

  alarm_settings {
    uuid user_id PK_FK "profiles.id"
    boolean enabled "default true"
    int start_hour "0-23"
    int end_hour "0-23"
    int interval_value ">=1"
    text interval_unit "check min|hour"
    boolean weekdays_only "default true"
    timestamptz created_at
    timestamptz updated_at
  }
```

> `auth.users` 는 Supabase 관리 테이블. 위 필드는 앱에서 자주 보는 것만 표시.

---

## 출제 필터 규칙 (확정)

다음 문제 뽑을 때:

```text
questions
  WHERE is_active = true
    AND subject_id IN (
      SELECT subject_id
      FROM user_subjects
      WHERE user_id = :me
        AND is_enabled = true
    )
    AND subjects.is_active = true
```

| 상황 | 동작 |
|------|------|
| `is_enabled = true` 1개 이상 | 해당 주제에서만 출제 |
| enabled 0개 (미선택 / 전부 해제) | **출제 금지**. 홈·알림 진입 시 설정/온보딩으로 유도 |
| 가입 직후 | **온보딩**에서 active subject 목록 중 **1개 이상 선택 필수**. 완료 전 문제 풀이·알람 스케줄 비활성 권장 |

---

## 테이블별 컬럼 상세

### 1. `auth.users` (Supabase 내장 — 참고)

| 컬럼 | 타입 | 제약 | 설명 |
|------|------|------|------|
| `id` | `uuid` | PK | `profiles.id` 와 동일 |
| `email` | `varchar` | | |
| `created_at` | `timestamptz` | | |
| `last_sign_in_at` | `timestamptz` | null | |
| `raw_user_meta_data` | `jsonb` | | |

---

### 2. `public.profiles`

| 컬럼 | 타입 | 제약 | 기본값 | 설명 |
|------|------|------|--------|------|
| `id` | `uuid` | PK, FK → `auth.users(id)` ON DELETE CASCADE | | Auth 1:1 |
| `display_name` | `text` | not null | `''` | 닉네임 |
| `avatar_url` | `text` | null | null | 아바타 URL |
| `created_at` | `timestamptz` | not null | `now()` | |
| `updated_at` | `timestamptz` | not null | `now()` | |

**트리거:** `auth.users` INSERT 시 `profiles` 자동 생성.

---

### 3. `public.subjects`

| 컬럼 | 타입 | 제약 | 기본값 | 설명 |
|------|------|------|--------|------|
| `id` | `uuid` | PK | `gen_random_uuid()` | |
| `name` | `text` | not null | | 예: `CS 기초` |
| `slug` | `text` | not null, UNIQUE | | 예: `cs-basics` |
| `sort_order` | `int` | not null | `0` | 카탈로그 정렬 |
| `is_active` | `boolean` | not null | `true` | 전역 비활성 |
| `created_at` | `timestamptz` | not null | `now()` | |
| `updated_at` | `timestamptz` | not null | `now()` | |

---

### 4. `public.user_subjects` ⭐ 유저 주제 선택

유저 ↔ subject **N:M**.  
“공부하고 싶은 주제” 체크리스트의 저장소.

| 컬럼 | 타입 | 제약 | 기본값 | 설명 |
|------|------|------|--------|------|
| `user_id` | `uuid` | PK, FK → `profiles(id)` ON DELETE CASCADE | | 유저 |
| `subject_id` | `uuid` | PK, FK → `subjects(id)` ON DELETE CASCADE | | 주제 |
| `is_enabled` | `boolean` | not null | `true` | **true = 출제 대상** |
| `sort_order` | `int` | not null | `0` | 유저가 정한 표시/우선 순서 (선택) |
| `created_at` | `timestamptz` | not null | `now()` | 선택 시각 |
| `updated_at` | `timestamptz` | not null | `now()` | 토글 시각 |

**PK:** `(user_id, subject_id)` 복합키  
**인덱스:** `(user_id, is_enabled)` — 출제 쿼리용

**설정 / 온보딩 UI 동작 (확정)**

1. `subjects` 중 `is_active = true` 목록 표시  
2. 체크(선택) 시 `user_subjects` upsert → `is_enabled = true`  
3. 해제 시 **row 삭제하지 않음** → `is_enabled = false` (soft)  
4. 다시 체크 시 같은 row를 `is_enabled = true` 로 업데이트  
5. 온보딩: 저장 시 `is_enabled = true` 가 **1개 이상**이어야 완료 가능  

**의미**

| 상태 | 의미 |
|------|------|
| row 없음 | 한 번도 선택 안 함 (또는 미표시 주제) → 출제 제외 |
| `is_enabled = false` | 예전에 골랐다 끔 → 출제 제외, 설정에 체크 해제 상태로 표시 가능 |
| `is_enabled = true` | 공부 중 주제 → 출제 대상 |

---

### 5. `public.questions`

| 컬럼 | 타입 | 제약 | 기본값 | 설명 |
|------|------|------|--------|------|
| `id` | `uuid` | PK | `gen_random_uuid()` | |
| `subject_id` | `uuid` | not null, FK → `subjects(id)` | | 과목 |
| `type` | `text` | not null, CHECK (`mcq` \| `short`) | | |
| `body` | `text` | not null | | 문제 지문 |
| `difficulty` | `int` | not null, CHECK (1~3) | `2` | |
| `number` | `int` | null | null | 표시용 Q번호 |
| `is_active` | `boolean` | not null | `true` | |
| `created_at` | `timestamptz` | not null | `now()` | |
| `updated_at` | `timestamptz` | not null | `now()` | |

**인덱스:** `(subject_id)`, `(is_active, type)`, `(subject_id, is_active)`.

---

### 6. `public.question_options`

| 컬럼 | 타입 | 제약 | 기본값 | 설명 |
|------|------|------|--------|------|
| `id` | `uuid` | PK | `gen_random_uuid()` | |
| `question_id` | `uuid` | not null, FK → `questions(id)` ON DELETE CASCADE | | |
| `body` | `text` | not null | | 선택지 문구 |
| `sort_order` | `int` | not null | `0` | 0→① … |
| `created_at` | `timestamptz` | not null | `now()` | |

**UNIQUE:** `(question_id, sort_order)`  
정답 여부는 넣지 않음 → `question_answers.correct_option_id`.

---

### 7. `public.question_answers`

| 컬럼 | 타입 | 제약 | 기본값 | 설명 |
|------|------|------|--------|------|
| `id` | `uuid` | PK | `gen_random_uuid()` | |
| `question_id` | `uuid` | not null, UNIQUE, FK → `questions(id)` ON DELETE CASCADE | | 1:1 |
| `correct_option_id` | `uuid` | null, FK → `question_options(id)` | null | mcq 정답 |
| `answer_text` | `text` | not null | | short 정답 / mcq 라벨 |
| `accepted_answers` | `text[]` | null | null | short 변형 |
| `explanation` | `text` | not null | | 해설 |
| `concepts` | `text[]` | not null | `'{}'` | 관련 개념 |
| `created_at` | `timestamptz` | not null | `now()` | |
| `updated_at` | `timestamptz` | not null | `now()` | |

| type | `correct_option_id` | `answer_text` | `accepted_answers` |
|------|---------------------|---------------|--------------------|
| `mcq` | 필수 | 답안지 라벨 | 보통 null |
| `short` | null | 대표 정답 | optional |

---

### 8. `public.attempts`

| 컬럼 | 타입 | 제약 | 기본값 | 설명 |
|------|------|------|--------|------|
| `id` | `uuid` | PK | `gen_random_uuid()` | |
| `user_id` | `uuid` | not null, FK → `profiles(id)` ON DELETE CASCADE | | |
| `question_id` | `uuid` | not null, FK → `questions(id)` | | |
| `selected_option_id` | `uuid` | null, FK → `question_options(id)` | null | mcq |
| `answer_text` | `text` | null | null | short |
| `is_correct` | `boolean` | not null | | |
| `answered_at` | `timestamptz` | not null | `now()` | |

**인덱스:** `(user_id, answered_at DESC)`, `(user_id, question_id)`, `(question_id)`.

---

### 9. `public.alarm_settings`

| 컬럼 | 타입 | 제약 | 기본값 | 설명 |
|------|------|------|--------|------|
| `user_id` | `uuid` | PK, FK → `profiles(id)` ON DELETE CASCADE | | 유저당 1행 |
| `enabled` | `boolean` | not null | `true` | |
| `start_hour` | `int` | not null, CHECK 0–23 | `10` | |
| `end_hour` | `int` | not null, CHECK 0–23 | `18` | |
| `interval_value` | `int` | not null, CHECK >= 1 | `45` | |
| `interval_unit` | `text` | not null, CHECK (`min` \| `hour`) | `'min'` | |
| `weekdays_only` | `boolean` | not null | `true` | |
| `created_at` | `timestamptz` | not null | `now()` | |
| `updated_at` | `timestamptz` | not null | `now()` | |

**CHECK 권장:** `end_hour > start_hour`

---

## 관계 요약

| 관계 | 카디널리티 | FK |
|------|------------|-----|
| auth.users → profiles | 1:1 | `profiles.id` |
| profiles → alarm_settings | 1:0..1 | `alarm_settings.user_id` |
| profiles → attempts | 1:N | `attempts.user_id` |
| profiles ↔ subjects | **N:M** | `user_subjects` |
| subjects → questions | 1:N | `questions.subject_id` |
| questions → question_options | 1:N | `question_options.question_id` |
| questions → question_answers | 1:1 | `question_answers.question_id` |
| question_options → question_answers | 1:0..1 | `correct_option_id` |
| questions → attempts | 1:N | `attempts.question_id` |
| question_options → attempts | 1:N | `selected_option_id` |

---

## RLS 방향

| 테이블 | SELECT | INSERT / UPDATE / DELETE |
|--------|--------|---------------------------|
| `subjects` | authenticated (active) | service/admin |
| `user_subjects` | `user_id = auth.uid()` | 본인만 |
| `questions` / `options` / `answers` | authenticated | service/admin |
| `attempts` | 본인 | 본인 INSERT |
| `profiles` | 본인 | 본인 UPDATE |
| `alarm_settings` | 본인 | 본인 |

---

## 설정 화면 연동 (참고)

```
설정
├── 학습 알람 (시간대 · 간격)     → alarm_settings
└── 공부할 주제                   → user_subjects
      ☑ CS 기초
      ☑ 영어 어휘
      ☐ 자료구조
```

알람이 울리거나 “지금 한 문제” 시 → **enabled subject 만** 풀에서 랜덤/순차 출제.

---

## 1차에서 제외

- 커리큘럼/문제 세트
- subject별 목표 문제 수/일
- 오답노트 전용 테이블
- admin role 테이블

---

## 앱 플로우 (주제 관련)

```text
가입/로그인
  → profiles 생성
  → 온보딩: subject 1+ 선택 (user_subjects is_enabled=true)
  → 완료 후에만 홈 / 알람 / 문제 이용

설정 > 공부할 주제
  → 토글 ON  : is_enabled = true
  → 토글 OFF : is_enabled = false (row 유지)
  → 전부 OFF : 출제 중단 + “주제를 선택하세요”

지금 한 문제 / 알람
  → enabled subject 없으면 출제 안 하고 설정/온보딩으로
  → 있으면 그 풀에서만 문제 선택
```

## 남은 검토 포인트 (주제 외)

1. 답안 공개: 언제든 vs 제출 후  
2. 비로그인 허용 여부  
3. `alarm_settings` DB 동기화 여부 (로컬 only vs 동기화)

---

문서 버전: **0.4** (주제 선택 정책 확정: 0개=출제금지 / soft off / 온보딩 필수)
