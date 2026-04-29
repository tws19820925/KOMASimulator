# KomaSim Static Site Validation Checklist

## Scope

- [x] 静的サイトの必須ファイル存在チェックを追加する
- [x] HTML内のローカルリンクと画像参照を検査する
- [x] manifestとsitemapを構文検査する
- [x] プライバシーポリシー本文の必須文言を検査する
- [x] GitHub ActionsでPRとmain push時に検証を走らせる

## Self Check

- [x] ローカルで `./tools/Validate-StaticSite.ps1` が成功する
- [x] `git diff --check` で空白エラーがない
