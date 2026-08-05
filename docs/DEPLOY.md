# Study Alarm — 배포 가이드

웹(Next.js) → **Vercel**  
데스크톱(Electron) → **macOS DMG / Windows 설치 파일**

---

## 1. Vercel (웹)

### 1-1. 프로젝트 연결 (권장)

1. [vercel.com](https://vercel.com) → **Add New Project**
2. Git 레포 연결 (아직이면 push 먼저)
3. **Root Directory** 를 **`apps/web`** 로 설정  
   (모노레포에서 Next 앱 위치)
4. Framework Preset: **Next.js**
5. Install / Build 는 `apps/web/vercel.json` 이 처리:
   - Install: `cd ../.. && pnpm install`
   - Build: shared 빌드 후 `next build`

**Include files outside the root directory** 가 켜져 있어야 `@study/shared` 를 가져옵니다. (Vercel monorepo 기본값)

### 대안: 저장소 루트를 Root 로 쓰는 경우

Root Directory = `.` (레포 루트) 이면 루트 `vercel.json` 의 buildCommand 를 사용합니다.

### 1-2. 환경 변수 (필수)

**Settings → Environment Variables** (Production + Preview)

| Name | Value |
|------|--------|
| `NEXT_PUBLIC_SUPABASE_URL` | `https://xxxx.supabase.co` |
| `NEXT_PUBLIC_SUPABASE_ANON_KEY` | anon / publishable key |

로컬 `apps/web/.env.local` 과 동일 키.

### 1-3. 배포

```bash
# 또는 대시보드 Deploy / git push
npx vercel --prod
```

배포 URL 예: `https://study-alarm-xxx.vercel.app`  
커스텀 도메인 있으면 연결.

### 1-4. Supabase Auth URL 갱신

**Supabase → Authentication → URL Configuration**

| 항목 | 값 |
|------|-----|
| Site URL | `https://your-app.vercel.app` |
| Redirect URLs | `https://your-app.vercel.app/auth/callback` |
| | `https://your-app.vercel.app/auth/confirmed` |
| | `http://localhost:3000/auth/callback` (로컬 유지) |
| | `http://localhost:3000/auth/confirmed` |

이메일 템플릿은 `docs/EMAIL_TEMPLATES_KO.md` 참고.

---

## 2. Electron 설치 파일

앱은 **Vercel에 올린 URL** 을 바라봅니다.  
빌드 시 `STUDY_WEB_URL` 을 넣으면 `dist/app-config.json` 에 박힙니다.

### 2-1. macOS (DMG + ZIP)

```bash
# Vercel URL 로 교체
export STUDY_WEB_URL=https://your-app.vercel.app

pnpm dist:mac
```

산출물:

```
apps/desktop/release/
  StudyAlarm-0.1.0-mac-arm64.dmg
  StudyAlarm-0.1.0-mac-x64.dmg
  StudyAlarm-0.1.0-mac-arm64.zip
  StudyAlarm-0.1.0-mac-x64.zip
```

- **DMG**: 일반 사용자 설치 (Applications 로 드래그)
- **ZIP**: 압축 해제 후 실행

> 현재 `identity: null` → **서명 없음**.  
> 처음 실행 시 “확인되지 않은 개발자” → **우클릭 → 열기**.  
> 스토어/배포용 서명은 Apple Developer + `CSC_LINK` 설정이 필요합니다.

### 2-2. Windows (NSIS 설치 프로그램)

Windows 머신 또는 CI에서:

```bash
export STUDY_WEB_URL=https://your-app.vercel.app
pnpm dist:win
```

산출물: `StudyAlarm-0.1.0-win-x64.exe` (설치 마법사)

### 2-3. 로컬 개발 (기존)

```bash
pnpm dev                 # Vercel 대신 localhost:3000
pnpm dev:desktop         # Study Alarm.app → localhost
```

---

## 3. 배포 체크리스트

### 웹 (Vercel)
- [ ] 레포 push / Vercel 연결
- [ ] env `NEXT_PUBLIC_SUPABASE_URL` / `ANON_KEY`
- [ ] 배포 URL 접속 → 로그인/가입 동작
- [ ] Supabase Redirect URL 에 배포 도메인 추가
- [ ] 이메일 인증 링크가 배포 도메인으로 오는지

### 데스크톱
- [ ] `STUDY_WEB_URL` = Vercel URL
- [ ] `pnpm dist:mac` (또는 win)
- [ ] DMG 설치 → 로그인 → 온보딩 → 알림 테스트
- [ ] macOS 알림 허용 안내 확인

### 선택 (나중)
- [ ] Apple 코드 서명 / 공증 (notarize)
- [ ] Windows 코드 서명
- [ ] 자동 업데이트 (electron-updater + 릴리즈 서버)

---

## 4. 아키텍처 요약

```
사용자 PC
  Study Alarm.app  ──loadURL──►  https://your-app.vercel.app  (Next on Vercel)
                                      │
                                      ▼
                               Supabase (Auth + DB)
```

- UI/문제/설정 화면 업데이트 → **Vercel만 재배포** (앱 재설치 최소화)
- 알림 스케줄 / 트레이 → Electron (네이티브 변경 시에만 앱 재배포)

---

## 5. 자주 하는 실수

| 증상 | 확인 |
|------|------|
| Vercel 빌드 실패 | pnpm workspace / Root 경로 / shared build |
| 로그인 후 무한 리다이렉트 | Supabase Site URL / Redirect URLs |
| 앱 흰 화면 | `STUDY_WEB_URL` 오타, 배포 URL 슬래시, 네트워크 |
| 알림 안 뜸 | macOS 설정 → 알림 → Study Alarm 허용 |

---

문서 버전: 1.0
