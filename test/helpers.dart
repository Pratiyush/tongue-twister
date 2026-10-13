import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tongue_twister/app.dart';
import 'package:tongue_twister/providers/preferences_provider.dart';
import 'package:tongue_twister/providers/speech_provider.dart';

/// Records calls instead of talking to the platform TTS engine.
class FakeSpeechEngine implements SpeechEngine {
  FakeSpeechEngine({this.unavailable = const {}});

  final Set<String> unavailable;
  final spoken = <String>[];
  final languages = <String>[];
  final rates = <double>[];
  int stops = 0;

  /// When set, `speak` waits on this until `stop` is called.
  Completer<void>? gate;
  bool _speaking = false;

  @override
  Future<bool> isLanguageAvailable(String locale) async =>
      !unavailable.contains(locale);

  @override
  Future<void> setLanguage(String locale) async => languages.add(locale);

  @override
  Future<void> setSpeechRate(double rate) async => rates.add(rate);

  @override
  Future<void> speak(String text) async {
    spoken.add(text);
    _speaking = true;
    await gate?.future;
    _speaking = false;
  }

  @override
  Future<void> stop() async {
    stops++;
    final pending = gate;
    if (_speaking && pending != null && !pending.isCompleted) {
      pending.complete();
    }
  }
}

Future<ProviderContainer> createContainer({
  Map<String, Object> prefs = const {},
  SpeechEngine? engine,
}) async {
  SharedPreferences.setMockInitialValues(prefs);
  final instance = await SharedPreferences.getInstance();
  final container = ProviderContainer(
    overrides: [
      sharedPreferencesProvider.overrideWithValue(instance),
      speechEngineProvider.overrideWithValue(engine ?? FakeSpeechEngine()),
    ],
  );
  return container;
}

Widget buildApp(ProviderContainer container) => UncontrolledProviderScope(
  container: container,
  child: const TongueTwisterApp(),
);
