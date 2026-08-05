# Study Alarm

직장인이 업무 중 **틈틈이 한 문제씩** 푸는 데스크톱 + 웹 공부 앱.

| 구성 | 기술 | 배포 |
|------|------|------|
| 웹 UI | Next.js + shadcn + Supabase | **Vercel** |
| 데스크톱 | Electron (알림·트레이·스케줄) | **DMG / EXE 설치 파일** |
| 공유 | `@study/shared` | monorepo package |

## 빠른 시작 (로컬)

```bash
pnpm install

# 1) env
cp apps/web/.env.example apps/web/.env.local
# NEXT_PUBLIC_SUPABASE_URL / ANON_KEY 입력

# 2) Supabase SQL
# supabase/migrations/20260326120000_init.sql 을 SQL Editor 에서 실행

# 3) 웹
pnpm dev

# 4) 데스크톱 (다른 터미널, 웹이 떠 있는 상태)
pnpm dev:desktop
```

## 배포

자세한 절차: **[docs/DEPLOY.md](docs/DEPLOY.md)**

### 웹 → Vercel

```bash
# Git push 후 Vercel 연결, 또는
npx vercel --prod
```

환경 변수: `NEXT_PUBLIC_SUPABASE_URL`, `NEXT_PUBLIC_SUPABASE_ANON_KEY`

### 앱 → 설치 파일

```bash
# Vercel 배포 URL 로 교체
export STUDY_WEB_URL=https://your-app.vercel.app

# macOS DMG + ZIP
pnpm dist:mac
# → apps/desktop/release/StudyAlarm-*-mac-*.dmg

# Windows 설치 파일 (Windows/CI)
pnpm dist:win
```

## 구조

```
apps/web          Next.js (Vercel)
apps/desktop      Electron 설치 앱
packages/shared   타입 · 스케줄 유틸 · 시드 문제
supabase/         SQL 마이그레이션
docs/             설계 · 배포 문서
```

## 문서

| 문서 | 내용 |
|------|------|
| [docs/DEPLOY.md](docs/DEPLOY.md) | Vercel + 설치 파일 배포 |
| [docs/SUPABASE_SETUP.md](docs/SUPABASE_SETUP.md) | Supabase 연동 |
| [docs/DB_SCHEMA.md](docs/DB_SCHEMA.md) | DB 스키마 |
| [docs/EMAIL_TEMPLATES_KO.md](docs/EMAIL_TEMPLATES_KO.md) | 인증 메일 템플릿 |
| [docs/PDF_IMPORT_PLAN.md](docs/PDF_IMPORT_PLAN.md) | PDF 문제 적재 방안 |

## 라이선스

Private / 내부 학습용 (필요 시 변경)
