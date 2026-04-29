# KomaSim Initial Web Page Checklist

## Scope

- [x] 空リポジトリにPR運用用の最小 `main` を用意する
- [x] `index.html` から紹介・プライバシーポリシーページへ遷移できる入口を用意する
- [x] `privacy_policy.html` にアプリ紹介、主要機能、画面イメージ、プライバシーポリシーを統合する
- [x] KomaSimのヒーロー画像、ロゴ、画面スクリーンショットをWebページで参照する
- [x] DRIFIXリポジトリの静的ページ構成を参考に、単一HTMLで公開できる構成にする

## Privacy And Safety

- [x] 外部フォント、外部JavaScript、広告タグ、アクセス解析タグを追加していない
- [x] アプリ内保存データ、利用目的、外部送信、第三者サービス、削除方法を記載する
- [x] 釣果や安全を断定しない注意書きを掲載する

## Self Check

- [x] 主要ファイルと画像アセットが存在する
- [x] `privacy_policy.html` に必要なプライバシーポリシー見出しと連絡先がある
- [x] CSSのヒーロー・見出し文字サイズはviewport幅依存の`vw`指定を使っていない
- [x] `git diff --check` で空白エラーがない
