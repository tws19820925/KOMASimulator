# KomaSim Web Page

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

## Validation

静的ファイルの存在、リンク先、manifest、sitemap、プライバシーポリシー本文の必須文言は以下で確認できます。

```powershell
powershell -ExecutionPolicy Bypass -File ./tools/Validate-StaticSite.ps1
```
