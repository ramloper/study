# Supabase 이메일 템플릿 (한국어)

대시보드 경로: **Authentication → Emails → Templates**

아래 내용을 각 템플릿에 붙여 넣으세요.

---

## 1) Confirm sign up (가입 인증) — 필수

### Subject
```
[Study Alarm] 이메일 인증을 완료해 주세요
```

### Body (HTML)
```html
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>이메일 인증</title>
</head>
<body style="margin:0;padding:0;background:#f4f7f6;font-family:-apple-system,BlinkMacSystemFont,'Apple SD Gothic Neo','Malgun Gothic',sans-serif;color:#1a1f1e;">
  <table role="presentation" width="100%" cellspacing="0" cellpadding="0" style="background:#f4f7f6;padding:32px 16px;">
    <tr>
      <td align="center">
        <table role="presentation" width="100%" style="max-width:480px;background:#ffffff;border-radius:16px;overflow:hidden;border:1px solid #e6ecea;">
          <tr>
            <td style="padding:28px 28px 8px;text-align:center;">
              <div style="display:inline-block;width:40px;height:40px;border-radius:12px;background:#5eb3d9;line-height:40px;color:#fff;font-weight:700;">S</div>
              <h1 style="margin:16px 0 0;font-size:20px;font-weight:800;">Study Alarm</h1>
            </td>
          </tr>
          <tr>
            <td style="padding:8px 28px 0;text-align:center;">
              <p style="margin:0;font-size:16px;font-weight:700;color:#1a1f1e;">이메일 인증을 완료해 주세요</p>
              <p style="margin:12px 0 0;font-size:14px;line-height:1.65;color:#5c6b67;">
                안녕하세요. Study Alarm 가입을 환영합니다.<br/>
                아래 버튼을 눌러 이메일 인증을 마치면<br/>
                가입하신 이메일과 비밀번호로 로그인할 수 있어요.
              </p>
            </td>
          </tr>
          <tr>
            <td style="padding:28px;text-align:center;">
              <a href="{{ .ConfirmationURL }}"
                 style="display:inline-block;background:#5eb3d9;color:#ffffff;text-decoration:none;font-size:15px;font-weight:700;padding:14px 28px;border-radius:12px;">
                이메일 인증하기
              </a>
            </td>
          </tr>
          <tr>
            <td style="padding:0 28px 28px;text-align:center;">
              <p style="margin:0;font-size:12px;line-height:1.6;color:#8a9693;">
                버튼을 눌러도 안 되면 아래 링크를 복사해 브라우저에 붙여 넣어 주세요.<br/>
                <a href="{{ .ConfirmationURL }}" style="color:#5eb3d9;word-break:break-all;">{{ .ConfirmationURL }}</a>
              </p>
              <p style="margin:16px 0 0;font-size:12px;color:#8a9693;">
                본인이 가입하지 않았다면 이 메일은 무시하셔도 됩니다.
              </p>
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
</body>
</html>
```

> `{{ .ConfirmationURL }}` 은 Supabase 변수입니다. 그대로 두세요.

---

## 2) Magic Link (선택)

### Subject
```
[Study Alarm] 로그인 링크
```

### Body
```html
<p style="font-family:sans-serif;font-size:15px;line-height:1.6;">
  Study Alarm 로그인 링크입니다.<br/>
  <a href="{{ .ConfirmationURL }}">여기를 눌러 로그인</a>
</p>
```

---

## 3) Reset password (선택)

### Subject
```
[Study Alarm] 비밀번호 재설정
```

### Body
```html
<p style="font-family:sans-serif;font-size:15px;line-height:1.6;">
  비밀번호를 재설정하려면 아래 링크를 눌러 주세요.<br/>
  <a href="{{ .ConfirmationURL }}">비밀번호 재설정하기</a>
</p>
```

---

## URL 설정 (같이 확인)

**Authentication → URL Configuration**

| 항목 | 값 |
|------|-----|
| Site URL | `http://localhost:3000` (로컬) / 배포 URL |
| Redirect URLs | `http://localhost:3000/auth/callback` |
| | `http://localhost:3000/auth/confirmed` |
| | 배포 시 동일 경로 추가 |

앱은 가입 시 `emailRedirectTo` 를  
`{origin}/auth/callback?next=/auth/confirmed` 로 보냅니다.
