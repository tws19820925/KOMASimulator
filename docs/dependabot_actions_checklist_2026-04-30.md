# KomaSim Dependabot Actions Checklist

## Scope

- [x] GitHub Actions向けDependabot設定を追加する
- [x] 週次でActions依存更新を確認する設定にする
- [x] タイムゾーンをAsia/Tokyoにする

## Self Check

- [x] `powershell -ExecutionPolicy Bypass -File ./tools/Validate-StaticSite.ps1` が成功する
- [x] `git diff --check` で空白エラーがない
