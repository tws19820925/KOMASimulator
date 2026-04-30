# KomaSim Web Page

[![Static Site Validation](https://github.com/tws19820925/KOMASimulator/actions/workflows/static-site.yml/badge.svg)](https://github.com/tws19820925/KOMASimulator/actions/workflows/static-site.yml)

KomaSimの公開ページです。`privacy_policy.html` はGoogle Playなどに登録するプライバシーポリシーURLとして使えるよう、アプリ紹介、画面イメージ、プライバシーポリシーを1ページにまとめています。

公開URL: https://tws19820925.github.io/KOMASimulator/privacy_policy.html

## Files

- `index.html`: ルートURLから `privacy_policy.html` へ案内する入口
- `privacy_policy.html`: アプリ紹介ページ兼プライバシーポリシー本体
- `privacy.html`: 短いURL向けのプライバシーポリシー転送ページ
- `404.html`: GitHub Pagesの見つからないページ向け案内
- `assets/promo/`: ヒーロー画像とアプリアイコン
- `assets/screenshots/`: Web掲載用のアプリ画面
- `robots.txt`, `sitemap.xml`: GitHub Pages公開向けのクロール補助
- `site.webmanifest`: Android端末などでホーム画面追加したときの表示情報

## Notes

外部フォント、外部JavaScript、広告タグ、アクセス解析タグは追加していません。ページ内の画像はKomaSimアプリリポジトリで管理しているプロモーション画像とスクリーンショットから作成しています。

スクリーンショットを更新する場合は、同じファイル名で差し替えるとHTML側の修正なしで反映できます。

## Current Page Content

今回のWebページ更新では、KomaSimアプリの最新UIに合わせてTOP画像と画面説明を差し替えています。

- `assets/promo/komasim-overview-1200x630.png`: 条件設定、実釣、釣果ログ、設定の4画面を並べたTOP/OGP用の全体イメージ
- `assets/screenshots/input-overview.png`: 条件設定画面
- `assets/screenshots/field-overview.png`: 実釣画面
- `assets/screenshots/logs-overview.png`: 釣果ログ画面
- `assets/screenshots/settings-overview.png`: 設定画面

`privacy_policy.html` では、DRIFIXリポジトリのWebページ粒度に合わせ、主要UIごとの役割説明と、基本条件、潮流と仕掛け、現場校正、出船前チェック、プリセット、実釣ログ入力の操作入力説明を追加しています。

TOP/OGP画像は公開向けの見せ方に限定し、画面サイズやキャプチャ日などの制作メモは画像内に入れない方針です。

## Validation

静的ファイルの存在、リンク先、manifest、sitemap、プライバシーポリシー本文の必須文言は以下で確認できます。

```powershell
powershell -ExecutionPolicy Bypass -File ./tools/Validate-StaticSite.ps1
```

## Operations

- Google Playなどに登録する正式URL: https://tws19820925.github.io/KOMASimulator/privacy_policy.html
- 短い転送URL: https://tws19820925.github.io/KOMASimulator/privacy.html
- 公開手順と申請時の確認観点: `docs/google_play_privacy_handoff_2026-04-30.md`
- 初期公開のローンチノート: `docs/launch_notes_2026-04-30.md`
