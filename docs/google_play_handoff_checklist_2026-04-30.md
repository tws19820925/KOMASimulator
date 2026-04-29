# KomaSim Google Play Handoff Checklist

## Scope

- [x] Google Play登録に使う正式なプライバシーポリシーURLを明記する
- [x] GitHub Pagesの公開元と検証方法を記載する
- [x] プライバシーポリシー本文が扱っている範囲を要約する
- [x] Play Console申請前に確認すべき実装差分を明記する
- [x] READMEからハンドオフ資料へ辿れるようにする

## Self Check

- [x] `powershell -ExecutionPolicy Bypass -File ./tools/Validate-StaticSite.ps1` が成功する
- [x] `git diff --check` で空白エラーがない
