import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tongue_twister/ads/interstitial.dart';
import 'package:tongue_twister/ads/rewarded.dart';
import 'package:tongue_twister/l10n/app_localizations.dart';
import 'package:tongue_twister/l10n/l10n_ext.dart';
import 'package:tongue_twister/models/language_section.dart';
import 'package:tongue_twister/models/twister.dart';
import 'package:tongue_twister/providers/preferences_provider.dart';
import 'package:tongue_twister/providers/favorites_provider.dart';
import 'package:tongue_twister/providers/practice_provider.dart';
import 'package:tongue_twister/providers/recommendation_provider.dart';
import 'package:tongue_twister/providers/settings_provider.dart';
import 'package:tongue_twister/providers/speech_provider.dart';
import 'package:tongue_twister/providers/twister_providers.dart';

import 'helpers.dart';

void main() {
  group('favourites', () {
    test('toggle adds, removes and persists', () async {
      final container = await createContainer();
      addTearDown(container.dispose);
      final notifier = container.read(favoritesProvider.notifier);

      notifier.toggle('de-fischers-fritz');
      expect(container.read(favoritesProvider), {'de-fischers-fritz'});
      expect(
        container.read(favoriteTwistersProvider).single.section,
        LanguageSection.german,
      );
      final prefs = await SharedPreferences.getInstance();
      expect(prefs.getStringList('favorite_twister_ids'), [
        'de-fischers-fritz',
      ]);

      notifier.toggle('de-fischers-fritz');
      expect(container.read(favoritesProvider), isEmpty);
    });

    test('loads saved favourites and ignores unknown ids', () async {
      final container = await createContainer(
        prefs: {
          'favorite_twister_ids': ['hi-kachcha-papad', 'gone-forever'],
        },
      );
      addTearDown(container.dispose);
      expect(container.read(favoriteTwistersProvider).map((t) => t.id), [
        'hi-kachcha-papad',
      ]);
    });
  });

  group('practice', () {
    test('counts attempts, tracks section progress and persists', () async {
      final container = await createContainer();
      addTearDown(container.dispose);
      final notifier = container.read(practiceProvider.notifier);

      notifier.recordAttempt('gb-red-lorry');
      notifier.recordAttempt('gb-red-lorry');
      notifier.recordAttempt('gb-seashells');

      expect(container.read(practiceProvider)['gb-red-lorry'], 2);
      expect(
        container.read(sectionProgressProvider(LanguageSection.englishUK)),
        2,
      );
      expect(
        container.read(sectionProgressProvider(LanguageSection.englishUS)),
        0,
      );

      final prefs = await SharedPreferences.getInstance();
      expect(prefs.getString('practice_counts'), contains('"gb-red-lorry":2'));
    });

    test('survives corrupt saved data', () async {
      final container = await createContainer(
        prefs: {'practice_counts': '{oops'},
      );
      addTearDown(container.dispose);
      expect(container.read(practiceProvider), isEmpty);
    });
  });

  group('speech', () {
    test('speaks in the section accent at the chosen speed', () async {
      final engine = FakeSpeechEngine();
      final container = await createContainer(engine: engine);
      addTearDown(container.dispose);
      final twister = container.read(twisterByIdProvider('us-woodchuck'))!;
      final controller = container.read(speechControllerProvider.notifier);

      container.read(settingsProvider.notifier).setSpeed(PlaybackSpeed.slow);
      final result = await controller.speak(twister, times: 3);

      expect(result, SpeakResult.done);
      expect(engine.languages, ['en-US']);
      expect(engine.rates, [PlaybackSpeed.slow.rate]);
      expect(engine.spoken, List.filled(3, twister.text));
      expect(container.read(speechControllerProvider).speakingId, isNull);
    });

    test('reports a missing voice without speaking', () async {
      final engine = FakeSpeechEngine(unavailable: {'hi-IN'});
      final container = await createContainer(engine: engine);
      addTearDown(container.dispose);
      final twister = container.read(twisterByIdProvider('hi-kachcha-papad'))!;

      final result = await container
          .read(speechControllerProvider.notifier)
          .speak(twister);

      expect(result, SpeakResult.languageUnavailable);
      expect(engine.spoken, isEmpty);
    });

    test('stop interrupts a repeat loop', () async {
      final engine = FakeSpeechEngine()..gate = Completer<void>();
      final container = await createContainer(engine: engine);
      addTearDown(container.dispose);
      final twister = container.read(twisterByIdProvider('de-blaukraut'))!;
      final controller = container.read(speechControllerProvider.notifier);

      final pending = controller.speak(twister, times: 3);
      await Future<void>.delayed(Duration.zero);
      expect(
        container.read(speechControllerProvider).isSpeaking(twister.id),
        isTrue,
      );

      await controller.stop();
      expect(await pending, SpeakResult.stopped);
      expect(engine.spoken, hasLength(1));
      expect(container.read(speechControllerProvider).speakingId, isNull);
    });

    test('prefers the recorded clip at the chosen speed', () async {
      final engine = FakeSpeechEngine(unavailable: {'hi-IN'});
      final clips = FakeClipPlayer(clips: {clipAssetFor('hi-kachcha-papad')});
      final container = await createContainer(engine: engine, clips: clips);
      addTearDown(container.dispose);
      final twister = container.read(twisterByIdProvider('hi-kachcha-papad'))!;

      container.read(settingsProvider.notifier).setSpeed(PlaybackSpeed.fast);
      final result = await container
          .read(speechControllerProvider.notifier)
          .speak(twister, times: 3);

      expect(result, SpeakResult.done);
      expect(
        clips.played,
        List.filled(3, (
          'assets/audio/hi-kachcha-papad.mp3',
          PlaybackSpeed.fast.clipSpeed,
        )),
      );
      expect(engine.spoken, isEmpty);
    });

    test('stop interrupts a clip repeat loop', () async {
      final clips = FakeClipPlayer(clips: {clipAssetFor('de-blaukraut')})
        ..gate = Completer<void>();
      final container = await createContainer(clips: clips);
      addTearDown(container.dispose);
      final twister = container.read(twisterByIdProvider('de-blaukraut'))!;
      final controller = container.read(speechControllerProvider.notifier);

      final pending = controller.speak(twister, times: 3);
      await pumpEventQueue();
      expect(
        container.read(speechControllerProvider).isSpeaking(twister.id),
        isTrue,
      );

      await controller.stop();
      expect(await pending, SpeakResult.stopped);
      expect(clips.played, hasLength(1));
    });
  });

  group('settings', () {
    test('defaults when nothing is saved', () async {
      final container = await createContainer();
      addTearDown(container.dispose);
      final s = container.read(settingsProvider);
      expect(s.themeMode, ThemeMode.system);
      expect(s.speed, PlaybackSpeed.normal);
      expect(s.repeatCount, 3);
      expect(s.showPronunciation, isTrue);
      expect(s.showMeaning, isTrue);
    });

    test('changes persist and reload', () async {
      final container = await createContainer();
      final n = container.read(settingsProvider.notifier);
      n.setThemeMode(ThemeMode.dark);
      n.setSpeed(PlaybackSpeed.fast);
      n.setRepeatCount(5);
      n.setShowMeaning(false);
      container.dispose();

      final prefs = await SharedPreferences.getInstance();
      final reloaded = ProviderContainer(
        overrides: [sharedPreferencesProvider.overrideWithValue(prefs)],
      );
      addTearDown(reloaded.dispose);
      final s = reloaded.read(settingsProvider);
      expect(s.themeMode, ThemeMode.dark);
      expect(s.speed, PlaybackSpeed.fast);
      expect(s.repeatCount, 5);
      expect(s.showMeaning, isFalse);
    });

    test('hidden languages persist, filter twisters and keep one', () async {
      final container = await createContainer();
      final n = container.read(settingsProvider.notifier);
      n.setSectionVisible(LanguageSection.hindi, false);
      n.setSectionVisible(LanguageSection.german, false);
      n.setSectionVisible(LanguageSection.englishUS, false);
      // Hiding the last visible language is refused.
      n.setSectionVisible(LanguageSection.englishUK, false);

      final visible = container.read(visibleTwistersProvider);
      expect(visible, isNotEmpty);
      expect(
        visible.every((t) => t.section == LanguageSection.englishUK),
        isTrue,
      );
      expect(
        container.read(recommendationProvider)!.twister.section,
        LanguageSection.englishUK,
      );
      container.dispose();

      final prefs = await SharedPreferences.getInstance();
      final reloaded = ProviderContainer(
        overrides: [sharedPreferencesProvider.overrideWithValue(prefs)],
      );
      addTearDown(reloaded.dispose);
      expect(reloaded.read(settingsProvider).hiddenSections, {
        LanguageSection.hindi,
        LanguageSection.german,
        LanguageSection.englishUS,
      });

      reloaded
          .read(settingsProvider.notifier)
          .setSectionVisible(LanguageSection.hindi, true);
      expect(
        reloaded.read(settingsProvider).isVisible(LanguageSection.hindi),
        isTrue,
      );
    });

    test('clamps repeat count and ignores unknown saved values', () async {
      final container = await createContainer(
        prefs: {
          'settings.theme_mode': 'neon',
          'settings.speed': 'ludicrous',
          'settings.repeat_count': 99,
        },
      );
      addTearDown(container.dispose);
      final s = container.read(settingsProvider);
      expect(s.themeMode, ThemeMode.system);
      expect(s.speed, PlaybackSpeed.normal);
      expect(s.repeatCount, AppSettings.maxRepeats);

      container.read(settingsProvider.notifier).setRepeatCount(0);
      expect(
        container.read(settingsProvider).repeatCount,
        AppSettings.minRepeats,
      );
    });

    test('clearing favourites and progress', () async {
      final container = await createContainer(
        prefs: {
          'favorite_twister_ids': ['gb-red-lorry'],
          'practice_counts': '{"gb-red-lorry":4}',
        },
      );
      addTearDown(container.dispose);
      container.read(favoritesProvider.notifier).clearAll();
      container.read(practiceProvider.notifier).clearAll();
      expect(container.read(favoritesProvider), isEmpty);
      expect(container.read(practiceProvider), isEmpty);
      final prefs = await SharedPreferences.getInstance();
      expect(prefs.containsKey('favorite_twister_ids'), isFalse);
      expect(prefs.containsKey('practice_counts'), isFalse);
    });
  });

  test('section titles keep the native name, once in its own language', () {
    final en = lookupAppLocalizations(const Locale('en'));
    final de = lookupAppLocalizations(const Locale('de'));
    final hi = lookupAppLocalizations(const Locale('hi'));
    expect(LanguageSection.german.title(en), 'Deutsch · German');
    expect(LanguageSection.german.title(de), 'Deutsch');
    expect(LanguageSection.hindi.title(hi), 'हिन्दी');
    expect(LanguageSection.hindi.title(de), startsWith('हिन्दी · '));
  });

  group('interstitial policy', () {
    final now = DateTime(2026, 10, 30, 12);
    bool allows({
      int launches = 2,
      int total = 20,
      int since = 5,
      DateTime? last,
    }) => InterstitialPolicy.allows(
      launches: launches,
      totalPractised: total,
      practisedSinceLast: since,
      lastShown: last,
      now: now,
    );

    test('shows after enough practice in a later session', () {
      expect(allows(), isTrue);
    });
    test('never in the first session', () {
      expect(allows(launches: 1), isFalse);
    });
    test('not before the grace period', () {
      expect(allows(total: 9), isFalse);
    });
    test('needs 5 practised twisters since the last ad', () {
      expect(allows(since: 4), isFalse);
    });
    test('at least 3 minutes apart', () {
      expect(allows(last: now.subtract(const Duration(minutes: 2))), isFalse);
      expect(allows(last: now.subtract(const Duration(minutes: 3))), isTrue);
    });
    test('counts practice and resets after an ad is due', () async {
      final container = await createContainer();
      addTearDown(container.dispose);
      final n = container.read(interstitialProvider.notifier);
      for (var i = 0; i < 5; i++) {
        n.onPractised();
      }
      expect(container.read(interstitialProvider).practisedSinceLast, 5);
      // Ads are unsupported in tests, so nothing loads or shows.
      n.onLeftPractice(now: now);
      expect(container.read(interstitialProvider).lastShown, isNull);
    });
  });

  test('a watched video turns ads off for 24 hours and persists', () async {
    final container = await createContainer();
    final adFree = container.read(adFreeProvider.notifier);
    final now = DateTime(2026, 10, 30, 12);
    expect(adFree.isActive(now), isFalse);
    adFree.grant(now);
    expect(adFree.isActive(now.add(const Duration(hours: 23))), isTrue);
    expect(adFree.isActive(now.add(const Duration(hours: 24))), isFalse);
    container.dispose();

    final prefs = await SharedPreferences.getInstance();
    final reloaded = ProviderContainer(
      overrides: [sharedPreferencesProvider.overrideWithValue(prefs)],
    );
    addTearDown(reloaded.dispose);
    expect(reloaded.read(adFreeProvider), now.add(adFreeFor));
  });

  group('recommendation', () {
    final en = lookupAppLocalizations(const Locale('en'));

    test('a new user starts with the first easy twister', () async {
      final container = await createContainer();
      addTearDown(container.dispose);
      final rec = container.read(recommendationProvider)!;
      expect(rec.twister.id, 'gb-seashells');
      expect(rec.describe(en), contains('start'));
    });

    test(
      'prefers untried twisters in the language the user practises',
      () async {
        final container = await createContainer(
          prefs: {'practice_counts': '{"de-fischers-fritz":3}'},
        );
        addTearDown(container.dispose);
        final rec = container.read(recommendationProvider)!;
        expect(rec.twister.section, LanguageSection.german);
        expect(rec.twister.difficulty, Difficulty.easy);
        expect(rec.twister.id, 'de-zehn-ziegen');
        expect(rec.describe(en), contains('German'));
      },
    );

    test('updates as soon as the suggestion is practised', () async {
      final container = await createContainer();
      addTearDown(container.dispose);
      final first = container.read(recommendationProvider)!.twister;
      container.read(practiceProvider.notifier).recordAttempt(first.id);
      final next = container.read(recommendationProvider)!.twister;
      expect(next.id, isNot(first.id));
      expect(next.section, first.section);
    });

    test('once everything is tried, revises the least practised', () async {
      final container = await createContainer();
      addTearDown(container.dispose);
      final notifier = container.read(practiceProvider.notifier);
      for (final t in container.read(allTwistersProvider)) {
        notifier.recordAttempt(t.id);
        if (t.id != 'hi-marham') notifier.recordAttempt(t.id);
      }
      final rec = container.read(recommendationProvider)!;
      expect(rec.twister.id, 'hi-marham');
      expect(rec.describe(en), contains('revise'));
    });
  });
}
