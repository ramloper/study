# 산업안전기사 SQL 시드 (쪼갠 파일)

Supabase SQL Editor 가 한 번에 큰 파일을 못 넣어서 **40문항씩** 나눈 파일입니다.

## 순서

1. `00-subject.sql` 실행
2. `01-questions.sql` ~ 마지막 파일 **순서대로** 각각 실행

또는 루트에서:

```bash
# service role 키 필요 (Settings → API → service_role)
export NEXT_PUBLIC_SUPABASE_URL=https://xxxx.supabase.co
export SUPABASE_SERVICE_ROLE_KEY=eyJ...
pnpm seed:isan
```
