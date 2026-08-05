# Supabase 설정 가이드

## 1. 프로젝트 생성

1. [supabase.com](https://supabase.com) 에서 프로젝트 생성 (Free OK)
2. **Project Settings → API** 에서 복사:
   - Project URL
   - `anon` `public` key

## 2. 앱에 키 넣기

```bash
cp apps/web/.env.example apps/web/.env.local
```

`apps/web/.env.local`:

```env
NEXT_PUBLIC_SUPABASE_URL=https://xxxx.supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY=eyJhbGciOi...
```

## 3. 마이그레이션 실행

Supabase Dashboard → **SQL Editor** → New query  
→ `supabase/migrations/20260326120000_init.sql` 전체 붙여넣기 → Run

포함 내용:

- tables + RLS
- profiles 자동 생성 트리거
- subjects / 샘플 문제 시드

## 산업안전기사 대량 시드 (528문항)

SQL Editor 에 통짜 파일을 붙이면 **Query is too large** 가 납니다.

### 방법 A — 스크립트 (추천)

1. Supabase → **Project Settings → API**
2. `service_role` 키 복사 (secret, anon 아님)
3. 터미널:

```bash
export NEXT_PUBLIC_SUPABASE_URL=https://YOUR_PROJECT.supabase.co
export SUPABASE_SERVICE_ROLE_KEY=eyJ...   # service_role
pnpm seed:isan
```

또는 `apps/web/.env.local` 에 `SUPABASE_SERVICE_ROLE_KEY=` 추가 후 `pnpm seed:isan`

### 방법 B — SQL Editor 쪼개서 실행

`supabase/seed-chunks/` 폴더:

1. `00-subject.sql`
2. `01-questions.sql` … 끝까지 **한 파일씩** Run

## 4. Auth 설정 (권장)

**Authentication → Providers → Email**

- 개발 중에는 **Confirm email** 끄면 가입 즉시 로그인 가능
- 켜 두면 메일 확인 후 로그인

**URL Configuration** (나중에 배포 시)

- Site URL: `https://your-app.vercel.app`
- Redirect: `https://your-app.vercel.app/auth/callback`

로컬:

- Site URL: `http://localhost:3000`
- Redirect: `http://localhost:3000/auth/callback`

## 5. 동작 확인

```bash
pnpm dev
```

1. `/signup` 가입  
2. `/onboarding` 주제 1개 이상 선택  
3. 홈 → 지금 한 문제  
4. 설정에서 주제 토글 (해제 = soft `is_enabled=false`)

## 필요한 정보 (체크리스트)

| 항목 | 어디서 | 앱에 필요 |
|------|--------|-----------|
| Project URL | Settings → API | ✅ `NEXT_PUBLIC_SUPABASE_URL` |
| anon key | Settings → API | ✅ `NEXT_PUBLIC_SUPABASE_ANON_KEY` |
| service_role | Settings → API | ❌ 지금은 불필요 (관리 작업 시만) |
| DB password | 프로젝트 생성 시 | CLI 쓸 때만 |

키를 채팅에 붙여 넣을 필요 없이, 로컬 `.env.local` 에만 넣으면 됩니다.
