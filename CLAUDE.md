# CLAUDE.md

@AGENTS.md

## Claude Code notes

- **Subagents** in `.claude/agents/`:
  - `twister-curator`: adds or reviews tongue-twister content for a section, following the content rules above.
  - `flutter-verifier`: runs format, analyze and test, and reports failures with file:line. Use it before committing.
- **Cloud sessions:** Flutter may not be preinstalled. Install it with `git clone --depth 1 -b stable https://github.com/flutter/flutter.git /opt/flutter` and add `/opt/flutter/bin` to `PATH`. The default network policy blocks `dl.google.com` (Android SDK), and iOS needs macOS, so don't try to build the APK or IPA locally. Push, and let the GitHub Actions *Build* workflow produce them.
- **Checking UI changes:** golden screenshots render text as boxes unless real fonts are loaded. Load Roboto and MaterialIcons from `/opt/flutter/bin/cache/artifacts/material_fonts` with `FontLoader`. For Hindi and flags, set `debugFontFamilyFallback` in `lib/theme/app_theme.dart` to fonts you've loaded (Noto Sans Devanagari, from the npm package `@fontsource/noto-sans-devanagari` converted to TTF; Noto Color Emoji). Keep these screenshot tests out of the committed suite; they depend on local font paths.
- Don't commit build outputs (`build/`, `.apk`, `.ipa`). Releases come from CI.
