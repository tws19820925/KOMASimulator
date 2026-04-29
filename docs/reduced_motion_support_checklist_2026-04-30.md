# KomaSim Reduced Motion Support Checklist

## Scope

- [x] `prefers-reduced-motion: reduce` に対応するCSSを追加する
- [x] スムーズスクロールとトランジションを抑制できるようにする
- [x] 既存レイアウトやナビゲーション構造を変更しない

## Self Check

- [x] `powershell -ExecutionPolicy Bypass -File ./tools/Validate-StaticSite.ps1` が成功する
- [x] `git diff --check` で空白エラーがない
