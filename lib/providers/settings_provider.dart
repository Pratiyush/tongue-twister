import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'preferences_provider.dart';

enum PlaybackSpeed {
  slow('Slow', 0.25),
  normal('Normal', 0.45),
  fast('Fast', 0.65);

  const PlaybackSpeed(this.label, this.rate);
  final String label;

  /// flutter_tts rate: 0.0–1.0, where 0.5 is roughly natural speed.
  final double rate;
}

class AppSettings {
  const AppSettings({
    this.themeMode = ThemeMode.system,
    this.speed = PlaybackSpeed.normal,
    this.repeatCount = 3,
    this.showPronunciation = true,
    this.showMeaning = true,
  });

  static const minRepeats = 2;
  static const maxRepeats = 5;

  final ThemeMode themeMode;
  final PlaybackSpeed speed;

  /// How many times the "N× in a row" challenge plays a twister.
  final int repeatCount;

  /// Show romanised pronunciation for non-Latin scripts (Hindi).
  final bool showPronunciation;

  /// Show English meanings for Hindi and German twisters.
  final bool showMeaning;

  AppSettings copyWith({
    ThemeMode? themeMode,
    PlaybackSpeed? speed,
    int? repeatCount,
    bool? showPronunciation,
    bool? showMeaning,
  }) => AppSettings(
    themeMode: themeMode ?? this.themeMode,
    speed: speed ?? this.speed,
    repeatCount: repeatCount ?? this.repeatCount,
    showPronunciation: showPronunciation ?? this.showPronunciation,
    showMeaning: showMeaning ?? this.showMeaning,
  );
}

const _themeKey = 'settings.theme_mode';
const _speedKey = 'settings.speed';
const _repeatKey = 'settings.repeat_count';
const _pronunciationKey = 'settings.show_pronunciation';
const _meaningKey = 'settings.show_meaning';

T _byName<T extends Enum>(List<T> values, String? name, T fallback) =>
    values.where((v) => v.name == name).firstOrNull ?? fallback;

class SettingsNotifier extends Notifier<AppSettings> {
  @override
  AppSettings build() {
    final prefs = ref.watch(sharedPreferencesProvider);
    const defaults = AppSettings();
    return AppSettings(
      themeMode: _byName(
        ThemeMode.values,
        prefs.getString(_themeKey),
        defaults.themeMode,
      ),
      speed: _byName(
        PlaybackSpeed.values,
        prefs.getString(_speedKey),
        defaults.speed,
      ),
      repeatCount: (prefs.getInt(_repeatKey) ?? defaults.repeatCount).clamp(
        AppSettings.minRepeats,
        AppSettings.maxRepeats,
      ),
      showPronunciation:
          prefs.getBool(_pronunciationKey) ?? defaults.showPronunciation,
      showMeaning: prefs.getBool(_meaningKey) ?? defaults.showMeaning,
    );
  }

  void setThemeMode(ThemeMode mode) {
    state = state.copyWith(themeMode: mode);
    ref.read(sharedPreferencesProvider).setString(_themeKey, mode.name);
  }

  void setSpeed(PlaybackSpeed speed) {
    state = state.copyWith(speed: speed);
    ref.read(sharedPreferencesProvider).setString(_speedKey, speed.name);
  }

  void setRepeatCount(int count) {
    final clamped = count.clamp(AppSettings.minRepeats, AppSettings.maxRepeats);
    state = state.copyWith(repeatCount: clamped);
    ref.read(sharedPreferencesProvider).setInt(_repeatKey, clamped);
  }

  void setShowPronunciation(bool value) {
    state = state.copyWith(showPronunciation: value);
    ref.read(sharedPreferencesProvider).setBool(_pronunciationKey, value);
  }

  void setShowMeaning(bool value) {
    state = state.copyWith(showMeaning: value);
    ref.read(sharedPreferencesProvider).setBool(_meaningKey, value);
  }
}

final settingsProvider = NotifierProvider<SettingsNotifier, AppSettings>(
  SettingsNotifier.new,
);
