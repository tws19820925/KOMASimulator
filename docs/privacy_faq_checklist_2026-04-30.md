# KomaSim Privacy FAQ Checklist

## Scope

- [x] アプリ紹介ページにFAQセクションを追加する
- [x] 釣果保証ではないこと、現場判断を優先することをFAQで明記する
- [x] データの外部送信と共有の考え方をFAQからも確認できるようにする
- [x] 正式なプライバシーポリシーURLと短縮エイリアスを記載する
- [x] ページ内ナビゲーションからFAQへ移動できるようにする

## Self Check

- [x] FAQは外部JavaScriptなしの `details` / `summary` で開閉できる
- [x] `powershell -ExecutionPolicy Bypass -File ./tools/Validate-StaticSite.ps1` が成功する
- [x] `git diff --check` で空白エラーがない
