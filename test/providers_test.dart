import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tongue_twister/models/language_section.dart';
import 'package:tongue_twister/providers/favorites_provider.dart';
import 'package:tongue_twister/providers/practice_provider.dart';
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

      controller.setSpeed(PlaybackSpeed.slow);
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
  });
}
