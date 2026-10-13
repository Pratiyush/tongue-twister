import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tts/flutter_tts.dart';

import '../models/twister.dart';
import 'settings_provider.dart';

/// Thin wrapper over the platform text-to-speech engine so it can be faked
/// in tests.
abstract class SpeechEngine {
  Future<bool> isLanguageAvailable(String locale);
  Future<void> setLanguage(String locale);
  Future<void> setSpeechRate(double rate);

  /// Completes when the utterance has finished (or was stopped).
  Future<void> speak(String text);
  Future<void> stop();
}

class FlutterTtsEngine implements SpeechEngine {
  FlutterTtsEngine() : _tts = FlutterTts() {
    _tts.awaitSpeakCompletion(true);
    // Play through the iOS silent switch, like a media app.
    _tts.setIosAudioCategory(IosTextToSpeechAudioCategory.playback, [
      IosTextToSpeechAudioCategoryOptions.duckOthers,
    ]);
  }

  final FlutterTts _tts;

  @override
  Future<bool> isLanguageAvailable(String locale) async =>
      await _tts.isLanguageAvailable(locale) == true;

  @override
  Future<void> setLanguage(String locale) => _tts.setLanguage(locale);

  @override
  Future<void> setSpeechRate(double rate) => _tts.setSpeechRate(rate);

  @override
  Future<void> speak(String text) => _tts.speak(text);

  @override
  Future<void> stop() => _tts.stop();
}

final speechEngineProvider = Provider<SpeechEngine>((ref) {
  final engine = FlutterTtsEngine();
  ref.onDispose(engine.stop);
  return engine;
});

enum SpeakResult { done, stopped, languageUnavailable }

class SpeechState {
  const SpeechState({this.speakingId});

  /// Id of the twister currently being spoken, if any.
  final String? speakingId;

  bool isSpeaking(String id) => speakingId == id;
}

class SpeechController extends Notifier<SpeechState> {
  /// Bumped on every speak/stop so a stale loop knows it was superseded.
  int _session = 0;

  @override
  SpeechState build() => const SpeechState();

  SpeechEngine get _engine => ref.read(speechEngineProvider);

  /// Speaks [twister] in its section's accent, [times] times in a row.
  Future<SpeakResult> speak(Twister twister, {int times = 1}) => speakText(
    twister.id,
    twister.text,
    twister.section.ttsLocale,
    times: times,
  );

  /// Speaks arbitrary [text] in [locale]; [id] marks what is playing.
  Future<SpeakResult> speakText(
    String id,
    String text,
    String locale, {
    int times = 1,
  }) async {
    final session = ++_session;
    await _engine.stop();

    if (!await _engine.isLanguageAvailable(locale)) {
      if (session == _session) state = const SpeechState();
      return SpeakResult.languageUnavailable;
    }

    state = SpeechState(speakingId: id);
    await _engine.setLanguage(locale);
    await _engine.setSpeechRate(ref.read(settingsProvider).speed.rate);

    for (var i = 0; i < times; i++) {
      if (session != _session) return SpeakResult.stopped;
      await _engine.speak(text);
    }

    if (session != _session) return SpeakResult.stopped;
    state = const SpeechState();
    return SpeakResult.done;
  }

  Future<void> stop() async {
    _session++;
    state = const SpeechState();
    await _engine.stop();
  }
}

final speechControllerProvider =
    NotifierProvider<SpeechController, SpeechState>(SpeechController.new);

/// Whether the device has a text-to-speech voice for a locale.
final voiceAvailableProvider = FutureProvider.autoDispose.family<bool, String>(
  (ref, locale) => ref.watch(speechEngineProvider).isLanguageAvailable(locale),
);
