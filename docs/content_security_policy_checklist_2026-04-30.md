# KomaSim Content Security Policy Checklist

## Scope

- [x] 主要HTMLにContent Security Policyのmetaタグを追加する
- [x] 外部スクリプト、外部接続、フォーム送信、object埋め込みを使わない方針を明示する
- [x] 既存のインラインCSSとJSON-LDが動作する範囲で制限する
- [x] 静的検証でCSPの存在を確認する

## Self Check

- [x] `powershell -ExecutionPolicy Bypass -File ./tools/Validate-StaticSite.ps1` が成功する
- [x] `git diff --check` で空白エラーがない
