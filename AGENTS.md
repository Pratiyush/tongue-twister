# AGENTS.md

Guidance for AI coding agents (and humans) working on this repository.

## Project

**Tongue Twisters** is a Flutter app for iOS and Android. Users browse and practise tongue twisters in four sections, each spoken aloud by the device's text-to-speech in its native accent:

| Section | `LanguageSection` | TTS locale |
| --- | --- | --- |
| British English | `englishUK` | `en-GB` |
| American English | `englishUS` | `en-US` |
| Hindi | `hindi` | `hi-IN` |
| German | `german` | `de-DE` |

Stack: Flutter (stable, pinned in `.github/workflows/build.yml`), Dart 3, `flutter_riverpod` 3, `flutter_tts`, `shared_preferences`. No code generation.

## Commands

```sh
flutter pub get
dart format lib test          # CI expects formatted code
flutter analyze               # must report "No issues found!"
flutter test                  # all tests must pass
flutter run                   # needs a device or simulator
```

Run format, analyze and test before every commit.

## Layout

```
lib/
  main.dart                 loads SharedPreferences, overrides sharedPreferencesProvider
  app.dart                  MaterialApp; theme mode comes from settings
  models/                   LanguageSection, Twister, Difficulty (pure data)
  data/                     twisters_<locale>.dart catalogues and TwisterRepository
  providers/                all Riverpod state (see below)
  screens/                  home, section list, practice detail, favourites, settings
  widgets/                  TwisterCard, DifficultyBadge, speak button helpers
  theme/app_theme.dart      every colour: brand, per-section accents, difficulty, buildTheme()
test/
  helpers.dart              FakeSpeechEngine, createContainer(), buildApp()
  data_test.dart            content rules (unique ids, Hindi transliteration, ...)
  providers_test.dart       notifier logic and persistence
  app_test.dart             widget flows
assets/icon/                launcher icon sources
docs/screenshots/           README images
```

## State management (Riverpod 3)

- Use `Notifier` / `NotifierProvider`, `Provider`, `Provider.family` and `FutureProvider`. Don't use the legacy `StateProvider` or `StateNotifierProvider`, and don't add `riverpod_generator`.
- Persisted state reads `sharedPreferencesProvider` synchronously in `build()` and writes through on every mutation. Follow `FavoritesNotifier`, `PracticeNotifier` and `SettingsNotifier`.
- Store user data under **twister ids**, never list indices.
- Text-to-speech goes through the `SpeechEngine` interface (`speechEngineProvider`). Widgets call `SpeechController` (or `speakTwister()` in `widgets/speak_button.dart`), never `FlutterTts` directly. Tests override the engine with `FakeSpeechEngine`.
- Don't use `ref` in `State.dispose()`. To stop speech when leaving a screen, use `PopScope.onPopInvokedWithResult`, as `TwisterDetailScreen` does.
- Short-lived UI state, such as the search query and difficulty filter, stays in `ConsumerStatefulWidget` state.

## Styling

- Every colour lives in `lib/theme/app_theme.dart`. Screens use `Theme.of(context).colorScheme` and the `SectionColors` / `DifficultyColors` extensions. Don't hard-code hex values in widgets; plain `Colors.white` on gradients is fine.
- Screens belonging to one section wrap their content in `SectionTheme(section: ...)` and use `SectionAppBar`. Each section's button and chip colours are a hand-picked `AccentPalette` per brightness, chosen for contrast (at least 4.5:1 for text). Don't go back to `ColorScheme.fromSeed` alone: it tinted every surface and turned saffron and gold into muddy brown and olive.
- Surfaces are neutral greys in both modes (`_scheme` in `app_theme.dart`). Colour belongs to accents only: buttons, chips, headers, the twister card gradient and list-card stripes.
- Build text styles from `theme.textTheme.*.copyWith(...)`, not bare `TextStyle(...)`, so typography and font fallback stay consistent.
- Every layout must work at 360 dp width in light and dark mode. Long Hindi and German lines must wrap or ellipsize, never overflow.
- Use British spelling in UI copy ("favourites", "practised").

## Content rules (lib/data/)

- **Only add authentic, traditional tongue twisters.** Never invent one. If you aren't sure a Hindi or German twister is real and correctly spelled, leave it out.
- `id` is a stable, unique kebab-case key prefixed by section (`gb-`, `us-`, `hi-`, `de-`). Never rename an existing id: favourites and practice counts are stored by id.
- Hindi: `text` in Devanagari, plus `transliteration` (romanised) and `translation` (English). German: `translation` required. English: use regional vocabulary for the section (lorry/biscuit vs. buggy/woodchuck).
- `tip` is optional: a short pronunciation hint or cultural note.
- `test/data_test.dart` enforces these rules. Extend it when adding a rule.

## Adding a language

1. Add a value to `LanguageSection` (id, title, subtitle, flag, `ttsLocale`, group), and to `SectionGroup` if it needs a new heading.
2. Add `accent` and `accentDeep` in `SectionColors`, and a sample phrase in `settings_screen.dart` `_sampleFor`.
3. Create `lib/data/twisters_<locale>.dart` and include it in `TwisterRepository.forSection`.
4. Extend `test/data_test.dart`. All `switch` expressions over `LanguageSection` are exhaustive, so the analyzer points at every place to update.

## Testing

- New logic needs a unit test in `providers_test.dart`; new screens or flows need a widget test in `app_test.dart`.
- Use `createContainer(prefs: ..., engine: FakeSpeechEngine(...))` and `buildApp(container)`.
- The home screen scrolls, so use `tester.scrollUntilVisible` / `ensureVisible` before tapping items below the hero banner.

## Platforms and builds

- Android: `AndroidManifest.xml` declares the `android.intent.action.TTS_SERVICE` query, which Android 11+ needs. Release builds use the debug signing key.
- iOS: `flutter_tts` plays through the silent switch (`IosTextToSpeechAudioCategory.playback`).
- CI (`.github/workflows/build.yml`): analyze and test, then a release APK (Ubuntu) and an unsigned IPA (macOS). Tags `v*` publish both to GitHub Releases. Bump `version:` in `pubspec.yaml` and `appVersion` in `settings_screen.dart` together.
- Launcher icons: edit `assets/icon/*.png`, then run `dart run flutter_launcher_icons`. Afterwards, **revert any change it makes to `ios/Runner.xcodeproj/project.pbxproj`**; it's a known bug in the tool.
