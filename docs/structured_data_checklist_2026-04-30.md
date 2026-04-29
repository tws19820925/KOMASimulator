# KomaSim Structured Data Checklist

## Scope

- [x] `privacy_policy.html` に `application/ld+json` の構造化データを追加する
- [x] KomaSimがAndroid向けスポーツアプリであることを機械可読にする
- [x] 公開URL、ヒーロー画像、作者、連絡先を構造化データに含める
- [x] 静的検証で構造化データの存在を確認する

## Self Check

- [x] `powershell -ExecutionPolicy Bypass -File ./tools/Validate-StaticSite.ps1` が成功する
- [x] `git diff --check` で空白エラーがない
