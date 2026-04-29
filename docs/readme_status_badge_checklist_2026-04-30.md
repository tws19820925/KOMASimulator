# KomaSim README Status Badge Checklist

## Scope

- [x] README冒頭に `Static Site Validation` のステータスバッジを追加する
- [x] バッジのリンク先をGitHub Actionsワークフローにする

## Self Check

- [x] `powershell -ExecutionPolicy Bypass -File ./tools/Validate-StaticSite.ps1` が成功する
- [x] `git diff --check` で空白エラーがない
