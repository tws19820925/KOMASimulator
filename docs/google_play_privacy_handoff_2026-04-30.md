# KomaSim Google Play Privacy Handoff

## Public URLs

- Official privacy policy URL: https://tws19820925.github.io/KOMASimulator/privacy_policy.html
- Short redirect URL: https://tws19820925.github.io/KOMASimulator/privacy.html
- Site root: https://tws19820925.github.io/KOMASimulator/

## Repository And Deployment

- Repository: https://github.com/tws19820925/KOMASimulator
- GitHub Pages source: `main` branch, repository root
- Static validation workflow: `Static Site Validation`
- Local validation command:

```powershell
powershell -ExecutionPolicy Bypass -File ./tools/Validate-StaticSite.ps1
```

## Privacy Policy Coverage

The public page currently covers:

- Data saved inside the app: presets, fishing logs, calibration values, backup cache, onboarding confirmation
- Purpose of use: simulation, preset reuse, log review, calibration reuse, user-controlled backup
- External transmission and sharing: no automatic external transmission by the app; user-selected Android share flows only
- Third-party services: no account, ads, analytics, or crash-reporting SDKs are described as included
- Deletion: remove presets and logs in the app, uninstall the app to remove app-managed local data
- Safety note: KomaSim does not guarantee catch results or operational safety
- Contact: Arcadia_Labs, drifix.fishingseatadvisor@gmail.com

## Google Play Console Notes

Before submission, confirm the Android app implementation still matches the public policy. In particular:

- If analytics, crash reporting, ads, accounts, cloud sync, or server APIs are added later, update the policy before release.
- If Google Play Data Safety asks about data collection, treat that as a Play Console declaration and confirm it against the shipped APK/AAB behavior.
- If the app uses user-selected share sheets or backup export, describe it as user-initiated sharing rather than automatic background transfer.
- Keep the privacy policy URL stable once it is registered in Play Console.

## Release Checklist

- [ ] Run local validation before changing the URL in Play Console.
- [ ] Confirm GitHub Pages build is successful after merging changes to `main`.
- [ ] Open the official URL and confirm the page contains the FAQ and privacy policy sections.
- [ ] Confirm the contact email is still valid.
- [ ] Confirm screenshots still match the current app flow closely enough for public introduction.
