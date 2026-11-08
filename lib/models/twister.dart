import 'language_section.dart';

/// Display names come from `lib/l10n/l10n_ext.dart`.
enum Difficulty { easy, medium, hard }

class Twister {
  const Twister({
    required this.id,
    required this.section,
    required this.text,
    required this.difficulty,
    this.transliteration,
    this.translation,
    this.tip,
  });

  /// Stable id used as the key for favorites and practice counts.
  final String id;
  final LanguageSection section;

  /// The twister in its own script; this is what gets spoken aloud.
  final String text;
  final Difficulty difficulty;

  /// Romanised pronunciation, for non-Latin scripts such as Devanagari.
  final String? transliteration;

  /// English meaning, for non-English twisters.
  final String? translation;

  /// Pronunciation hint or cultural note.
  final String? tip;

  @override
  bool operator ==(Object other) => other is Twister && other.id == id;

  @override
  int get hashCode => id.hashCode;
}
