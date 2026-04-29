# KomaSim Web Page Launch Notes

Date: 2026-04-30 JST

## Public Status

- Official page: https://tws19820925.github.io/KOMASimulator/privacy_policy.html
- Redirect alias: https://tws19820925.github.io/KOMASimulator/privacy.html
- Repository: https://github.com/tws19820925/KOMASimulator
- GitHub Pages source: `main` branch, repository root
- Validation workflow: `Static Site Validation`

## Merged Pull Requests

- #1 Add KomaSim intro and privacy page
- #2 Add public page metadata
- #3 Add privacy URL fallbacks
- #4 Polish accessibility and sharing metadata
- #5 Add static site validation
- #6 Add privacy FAQ section
- #7 Document Google Play privacy handoff
- #8 Add KomaSim structured data
- #9 Add README validation badge
- #10 Respect reduced motion preference
- #11 Add static page content security policy

## What Is Included

- A single public page combining app introduction, screenshots, use cases, FAQ, and privacy policy.
- GitHub Pages publication with canonical URL, sitemap, robots file, manifest, OGP/Twitter image metadata, and structured data.
- Privacy URL fallbacks through `index.html`, `privacy.html`, and `404.html`.
- A local and GitHub Actions validation path for required files, links, manifest, sitemap, and key page markers.
- Handoff notes for Google Play privacy policy registration.

## Verification Performed

- `powershell -ExecutionPolicy Bypass -File ./tools/Validate-StaticSite.ps1`
- `git diff --check`
- GitHub Actions `Static Site Validation` on PRs and `main`
- GitHub Pages build status checks after merges
- Public URL checks for page content, FAQ, structured data, reduced motion CSS, and CSP markers

## Follow-Up Candidates

- Replace screenshots when the Android app UI materially changes.
- Revisit the privacy policy before adding analytics, crash reporting, ads, accounts, sync, or server APIs.
- Consider adding a store badge or Play Store link after the app listing is public.
