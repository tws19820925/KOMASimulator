# KomaSim Privacy URL Fallbacks Checklist

## Scope

- [x] `privacy.html` から正式な `privacy_policy.html` へ転送する
- [x] `404.html` からアプリ紹介・プライバシーポリシーページへ戻れる導線を用意する
- [x] READMEにURLフォールバック用ファイルの役割を記載する

## Self Check

- [x] 追加HTMLは外部JavaScriptを使っていない
- [x] 追加HTMLに `noindex, follow` を設定し、正式URLの重複インデックスを避ける
- [x] `git diff --check` で空白エラーがない
