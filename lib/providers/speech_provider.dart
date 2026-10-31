import 'package:audio_session/audio_session.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:just_audio/just_audio.dart';

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

/// Plays the bundled ElevenLabs recordings (`assets/audio/<id>.mp3`).
abstract class ClipPlayer {
  /// Asset paths of every bundled clip.
  Future<Set<String>> availableClips();

  /// Completes when the clip has finished (or was stopped).
  Future<void> play(String asset, double speed);
  Future<void> stop();
}

class JustAudioClipPlayer implements ClipPlayer {
  final _player = AudioPlayer();
  bool _configured = false;

  @override
  Future<Set<String>> availableClips() async {
    final manifest = await AssetManifest.loadFromAssetBundle(rootBundle);
    return {
      for (final asset in manifest.listAssets())
        if (asset.startsWith('assets/audio/') && asset.endsWith('.mp3')) asset,
    };
  }

  @override
  Future<void> play(String asset, double speed) async {
    if (!_configured) {
      // Play through the iOS silent switch, like the TTS engine does.
      final session = await AudioSession.instance;
      await session.configure(const AudioSessionConfiguration.speech());
      _configured = true;
    }
    await _player.setAsset(asset);
    await _player.setSpeed(speed);
    await _player.play(); // completes when the clip ends or is stopped
    await _player.stop();
  }

  @override
  Future<void> stop() => _player.stop();

  Future<void> dispose() => _player.dispose();
}

final clipPlayerProvider = Provider<ClipPlayer>((ref) {
  final player = JustAudioClipPlayer();
  ref.onDispose(player.dispose);
  return player;
});

/// Asset paths of the bundled voice clips.
final voiceClipsProvider = FutureProvider<Set<String>>(
  (ref) => ref.watch(clipPlayerProvider).availableClips(),
);

String clipAssetFor(String twisterId) => 'assets/audio/$twisterId.mp3';

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
  ClipPlayer get _clips => ref.read(clipPlayerProvider);

  /// Speaks [twister] in its section's accent, [times] times in a row.
  ///
  /// Uses the bundled native-speaker recording when there is one, and the
  /// device's text-to-speech otherwise.
  Future<SpeakResult> speak(Twister twister, {int times = 1}) async {
    final asset = clipAssetFor(twister.id);
    final clips = await ref.read(voiceClipsProvider.future);
    if (!clips.contains(asset)) {
      return speakText(
        twister.id,
        twister.text,
        twister.section.ttsLocale,
        times: times,
      );
    }

    final session = ++_session;
    await _engine.stop();
    await _clips.stop();
    state = SpeechState(speakingId: twister.id);
    final speed = ref.read(settingsProvider).speed.clipSpeed;

    for (var i = 0; i < times; i++) {
      if (session != _session) return SpeakResult.stopped;
      await _clips.play(asset, speed);
    }

    if (session != _session) return SpeakResult.stopped;
    state = const SpeechState();
    return SpeakResult.done;
  }

  /// Speaks arbitrary [text] in [locale]; [id] marks what is playing.
  Future<SpeakResult> speakText(
    String id,
    String text,
    String locale, {
    int times = 1,
  }) async {
    final session = ++_session;
    await _engine.stop();
    await _clips.stop();

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
    await _clips.stop();
  }
}

final speechControllerProvider =
    NotifierProvider<SpeechController, SpeechState>(SpeechController.new);

/// Whether the device has a text-to-speech voice for a locale.
final voiceAvailableProvider = FutureProvider.autoDispose.family<bool, String>(
  (ref, locale) => ref.watch(speechEngineProvider).isLanguageAvailable(locale),
);
