-- Study Alarm initial schema
-- Run in Supabase SQL Editor or via: supabase db push

create extension if not exists "pgcrypto";

-- ---------------------------------------------------------------------------
-- updated_at helper
-- ---------------------------------------------------------------------------
create or replace function public.set_updated_at()
returns trigger
language plpgsql
as $$
begin
  new.updated_at = now();
  return new;
end;
$$;

-- ---------------------------------------------------------------------------
-- profiles
-- ---------------------------------------------------------------------------
create table public.profiles (
  id uuid primary key references auth.users (id) on delete cascade,
  display_name text not null default '',
  avatar_url text,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create trigger profiles_set_updated_at
before update on public.profiles
for each row execute function public.set_updated_at();

create or replace function public.handle_new_user()
returns trigger
language plpgsql
security definer
set search_path = public
as $$
begin
  insert into public.profiles (id, display_name)
  values (
    new.id,
    coalesce(
      new.raw_user_meta_data ->> 'display_name',
      split_part(coalesce(new.email, 'user'), '@', 1)
    )
  );
  return new;
end;
$$;

drop trigger if exists on_auth_user_created on auth.users;
create trigger on_auth_user_created
after insert on auth.users
for each row execute function public.handle_new_user();

-- ---------------------------------------------------------------------------
-- subjects
-- ---------------------------------------------------------------------------
create table public.subjects (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  slug text not null unique,
  sort_order int not null default 0,
  is_active boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create trigger subjects_set_updated_at
before update on public.subjects
for each row execute function public.set_updated_at();

-- ---------------------------------------------------------------------------
-- user_subjects (N:M, soft disable)
-- ---------------------------------------------------------------------------
create table public.user_subjects (
  user_id uuid not null references public.profiles (id) on delete cascade,
  subject_id uuid not null references public.subjects (id) on delete cascade,
  is_enabled boolean not null default true,
  sort_order int not null default 0,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  primary key (user_id, subject_id)
);

create index user_subjects_user_enabled_idx
  on public.user_subjects (user_id, is_enabled);

create trigger user_subjects_set_updated_at
before update on public.user_subjects
for each row execute function public.set_updated_at();

-- ---------------------------------------------------------------------------
-- questions
-- ---------------------------------------------------------------------------
create table public.questions (
  id uuid primary key default gen_random_uuid(),
  subject_id uuid not null references public.subjects (id),
  type text not null check (type in ('mcq', 'short')),
  body text not null,
  difficulty int not null default 2 check (difficulty between 1 and 3),
  number int,
  is_active boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index questions_subject_active_idx on public.questions (subject_id, is_active);
create index questions_active_type_idx on public.questions (is_active, type);

create trigger questions_set_updated_at
before update on public.questions
for each row execute function public.set_updated_at();

-- ---------------------------------------------------------------------------
-- question_options
-- ---------------------------------------------------------------------------
create table public.question_options (
  id uuid primary key default gen_random_uuid(),
  question_id uuid not null references public.questions (id) on delete cascade,
  body text not null,
  sort_order int not null default 0,
  created_at timestamptz not null default now(),
  unique (question_id, sort_order)
);

create index question_options_question_idx on public.question_options (question_id);

-- ---------------------------------------------------------------------------
-- question_answers
-- ---------------------------------------------------------------------------
create table public.question_answers (
  id uuid primary key default gen_random_uuid(),
  question_id uuid not null unique references public.questions (id) on delete cascade,
  correct_option_id uuid references public.question_options (id),
  answer_text text not null,
  accepted_answers text[],
  explanation text not null,
  concepts text[] not null default '{}',
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create trigger question_answers_set_updated_at
before update on public.question_answers
for each row execute function public.set_updated_at();

-- ---------------------------------------------------------------------------
-- attempts
-- ---------------------------------------------------------------------------
create table public.attempts (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references public.profiles (id) on delete cascade,
  question_id uuid not null references public.questions (id),
  selected_option_id uuid references public.question_options (id),
  answer_text text,
  is_correct boolean not null,
  answered_at timestamptz not null default now()
);

create index attempts_user_answered_idx on public.attempts (user_id, answered_at desc);
create index attempts_user_question_idx on public.attempts (user_id, question_id);
create index attempts_question_idx on public.attempts (question_id);

-- ---------------------------------------------------------------------------
-- alarm_settings
-- ---------------------------------------------------------------------------
create table public.alarm_settings (
  user_id uuid primary key references public.profiles (id) on delete cascade,
  enabled boolean not null default true,
  start_hour int not null default 10 check (start_hour between 0 and 23),
  end_hour int not null default 18 check (end_hour between 0 and 23),
  interval_value int not null default 45 check (interval_value >= 1),
  interval_unit text not null default 'min' check (interval_unit in ('min', 'hour')),
  weekdays_only boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  check (end_hour > start_hour)
);

create trigger alarm_settings_set_updated_at
before update on public.alarm_settings
for each row execute function public.set_updated_at();

-- ---------------------------------------------------------------------------
-- RLS
-- ---------------------------------------------------------------------------
alter table public.profiles enable row level security;
alter table public.subjects enable row level security;
alter table public.user_subjects enable row level security;
alter table public.questions enable row level security;
alter table public.question_options enable row level security;
alter table public.question_answers enable row level security;
alter table public.attempts enable row level security;
alter table public.alarm_settings enable row level security;

-- profiles
create policy "profiles_select_own"
  on public.profiles for select
  to authenticated
  using (id = auth.uid());

create policy "profiles_update_own"
  on public.profiles for update
  to authenticated
  using (id = auth.uid())
  with check (id = auth.uid());

-- subjects: active catalog readable by signed-in users
create policy "subjects_select_active"
  on public.subjects for select
  to authenticated
  using (is_active = true);

-- user_subjects: own rows only
create policy "user_subjects_select_own"
  on public.user_subjects for select
  to authenticated
  using (user_id = auth.uid());

create policy "user_subjects_insert_own"
  on public.user_subjects for insert
  to authenticated
  with check (user_id = auth.uid());

create policy "user_subjects_update_own"
  on public.user_subjects for update
  to authenticated
  using (user_id = auth.uid())
  with check (user_id = auth.uid());

create policy "user_subjects_delete_own"
  on public.user_subjects for delete
  to authenticated
  using (user_id = auth.uid());

-- questions / options / answers: read active content
create policy "questions_select_active"
  on public.questions for select
  to authenticated
  using (is_active = true);

create policy "question_options_select"
  on public.question_options for select
  to authenticated
  using (
    exists (
      select 1 from public.questions q
      where q.id = question_id and q.is_active = true
    )
  );

create policy "question_answers_select"
  on public.question_answers for select
  to authenticated
  using (
    exists (
      select 1 from public.questions q
      where q.id = question_id and q.is_active = true
    )
  );

-- attempts: own
create policy "attempts_select_own"
  on public.attempts for select
  to authenticated
  using (user_id = auth.uid());

create policy "attempts_insert_own"
  on public.attempts for insert
  to authenticated
  with check (user_id = auth.uid());

-- alarm_settings: own
create policy "alarm_settings_select_own"
  on public.alarm_settings for select
  to authenticated
  using (user_id = auth.uid());

create policy "alarm_settings_insert_own"
  on public.alarm_settings for insert
  to authenticated
  with check (user_id = auth.uid());

create policy "alarm_settings_update_own"
  on public.alarm_settings for update
  to authenticated
  using (user_id = auth.uid())
  with check (user_id = auth.uid());

create policy "alarm_settings_delete_own"
  on public.alarm_settings for delete
  to authenticated
  using (user_id = auth.uid());

-- ---------------------------------------------------------------------------
-- Helper: count enabled subjects for current user
-- ---------------------------------------------------------------------------
create or replace function public.count_enabled_subjects()
returns int
language sql
stable
security definer
set search_path = public
as $$
  select count(*)::int
  from public.user_subjects
  where user_id = auth.uid()
    and is_enabled = true;
$$;

grant execute on function public.count_enabled_subjects() to authenticated;

-- ---------------------------------------------------------------------------
-- Seed: subjects + sample questions
-- ---------------------------------------------------------------------------
insert into public.subjects (id, name, slug, sort_order) values
  ('11111111-1111-1111-1111-111111111101', 'CS 기초', 'cs-basics', 10),
  ('11111111-1111-1111-1111-111111111102', '영어 어휘', 'english-vocab', 20),
  ('11111111-1111-1111-1111-111111111103', '자료구조', 'data-structures', 30);

-- Q1 mcq HTTP idempotent
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('22222222-2222-2222-2222-222222222201',
   '11111111-1111-1111-1111-111111111101',
   'mcq',
   'HTTP에서 멱등성(idempotent)을 보장하지 않는 메서드는 무엇인가요?',
   2, 27);

insert into public.question_options (id, question_id, body, sort_order) values
  ('33333333-3333-3333-3333-333333333301', '22222222-2222-2222-2222-222222222201', 'GET', 0),
  ('33333333-3333-3333-3333-333333333302', '22222222-2222-2222-2222-222222222201', 'PUT', 1),
  ('33333333-3333-3333-3333-333333333303', '22222222-2222-2222-2222-222222222201', 'POST', 2),
  ('33333333-3333-3333-3333-333333333304', '22222222-2222-2222-2222-222222222201', 'DELETE', 3);

insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('22222222-2222-2222-2222-222222222201',
   '33333333-3333-3333-3333-333333333303',
   '③ POST',
   'POST는 같은 요청을 여러 번 보내면 리소스가 여러 개 생성될 수 있어 멱등성이 보장되지 않습니다. GET·PUT·DELETE는 여러 번 호출해도 서버 상태의 결과가 같아 멱등합니다.',
   array['HTTP 메서드', 'REST', '멱등성']);

-- Q2 short supply and demand
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('22222222-2222-2222-2222-222222222202',
   '11111111-1111-1111-1111-111111111102',
   'short',
   '"수요와 공급"을 뜻하는 영어 표현을 쓰세요.',
   2, 28);

insert into public.question_answers (question_id, correct_option_id, answer_text, accepted_answers, explanation, concepts) values
  ('22222222-2222-2222-2222-222222222202',
   null,
   'supply and demand',
   array['supply and demand', 'supply & demand'],
   '경제학의 기본 개념으로, 관용적으로 supply가 먼저 옵니다. demand and supply도 문법적으로 틀리진 않지만 표준 표현은 supply and demand입니다.',
   array['경제 용어', '관용 표현']);

-- Q3 mcq TCP handshake
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('22222222-2222-2222-2222-222222222203',
   '11111111-1111-1111-1111-111111111101',
   'mcq',
   'TCP 3-way handshake의 순서로 옳은 것은?',
   2, 29);

insert into public.question_options (id, question_id, body, sort_order) values
  ('33333333-3333-3333-3333-333333333311', '22222222-2222-2222-2222-222222222203', 'SYN → SYN-ACK → ACK', 0),
  ('33333333-3333-3333-3333-333333333312', '22222222-2222-2222-2222-222222222203', 'ACK → SYN → SYN-ACK', 1),
  ('33333333-3333-3333-3333-333333333313', '22222222-2222-2222-2222-222222222203', 'SYN-ACK → SYN → ACK', 2),
  ('33333333-3333-3333-3333-333333333314', '22222222-2222-2222-2222-222222222203', 'FIN → ACK → FIN-ACK', 3);

insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('22222222-2222-2222-2222-222222222203',
   '33333333-3333-3333-3333-333333333311',
   '① SYN → SYN-ACK → ACK',
   '클라이언트가 SYN을 보내고, 서버가 SYN-ACK로 응답한 뒤, 클라이언트가 ACK를 보내 연결을 확립합니다.',
   array['TCP', '3-way handshake', '네트워크']);

-- Q4 mcq data structures
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('22222222-2222-2222-2222-222222222204',
   '11111111-1111-1111-1111-111111111103',
   'mcq',
   '스택으로 큐를 구현할 때 필요한 최소 스택 수는?',
   2, 31);

insert into public.question_options (id, question_id, body, sort_order) values
  ('33333333-3333-3333-3333-333333333321', '22222222-2222-2222-2222-222222222204', '1개', 0),
  ('33333333-3333-3333-3333-333333333322', '22222222-2222-2222-2222-222222222204', '2개', 1),
  ('33333333-3333-3333-3333-333333333323', '22222222-2222-2222-2222-222222222204', '3개', 2),
  ('33333333-3333-3333-3333-333333333324', '22222222-2222-2222-2222-222222222204', '4개', 3);

insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('22222222-2222-2222-2222-222222222204',
   '33333333-3333-3333-3333-333333333322',
   '② 2개',
   '입력용·출력용 스택 2개로 enqueue/dequeue를 구현하는 것이 표준 방법입니다.',
   array['스택', '큐', '자료구조']);
