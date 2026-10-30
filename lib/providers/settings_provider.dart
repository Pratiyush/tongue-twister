import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/language_section.dart';
import 'preferences_provider.dart';

enum PlaybackSpeed {
  slow('Slow', 0.25, 0.75),
  normal('Normal', 0.45, 1.0),
  fast('Fast', 0.65, 1.25);

  const PlaybackSpeed(this.label, this.rate, this.clipSpeed);
  final String label;

  /// flutter_tts rate: 0.0–1.0, where 0.5 is roughly natural speed.
  final double rate;

  /// Playback-rate multiplier for recorded voice clips (pitch is kept).
  final double clipSpeed;
}

class AppSettings {
  const AppSettings({
    this.themeMode = ThemeMode.system,
    this.speed = PlaybackSpeed.normal,
    this.repeatCount = 3,
    this.showPronunciation = true,
    this.showMeaning = true,
    this.hiddenSections = const {},
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

  /// Languages the user chose not to learn. Stored as hidden rather than
  /// shown, so a newly added language appears by default.
  final Set<LanguageSection> hiddenSections;

  bool isVisible(LanguageSection section) => !hiddenSections.contains(section);

  AppSettings copyWith({
    ThemeMode? themeMode,
    PlaybackSpeed? speed,
    int? repeatCount,
    bool? showPronunciation,
    bool? showMeaning,
    Set<LanguageSection>? hiddenSections,
  }) => AppSettings(
    themeMode: themeMode ?? this.themeMode,
    speed: speed ?? this.speed,
    repeatCount: repeatCount ?? this.repeatCount,
    showPronunciation: showPronunciation ?? this.showPronunciation,
    showMeaning: showMeaning ?? this.showMeaning,
    hiddenSections: hiddenSections ?? this.hiddenSections,
  );
}

const _themeKey = 'settings.theme_mode';
const _speedKey = 'settings.speed';
const _repeatKey = 'settings.repeat_count';
const _pronunciationKey = 'settings.show_pronunciation';
const _meaningKey = 'settings.show_meaning';
const _hiddenSectionsKey = 'settings.hidden_sections';

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
      hiddenSections: {
        for (final id in prefs.getStringList(_hiddenSectionsKey) ?? const [])
          ...LanguageSection.values.where((s) => s.id == id),
      },
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

  /// Shows or hides a language. At least one language always stays visible.
  void setSectionVisible(LanguageSection section, bool visible) {
    final hidden = {...state.hiddenSections};
    if (visible) {
      hidden.remove(section);
    } else {
      hidden.add(section);
      if (hidden.length == LanguageSection.values.length) return;
    }
    state = state.copyWith(hiddenSections: hidden);
    ref.read(sharedPreferencesProvider).setStringList(_hiddenSectionsKey, [
      for (final s in hidden) s.id,
    ]);
  }
}

final settingsProvider = NotifierProvider<SettingsNotifier, AppSettings>(
  SettingsNotifier.new,
);
