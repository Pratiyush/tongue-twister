/// A browsable group of tongue twisters, each spoken in its own accent.
///
/// English is split into British and American so the text-to-speech voice
/// and the vocabulary (lorry vs. truck, biscuit vs. cookie) match.
enum LanguageSection {
  englishUK(
    id: 'en-GB',
    flag: '🇬🇧',
    ttsLocale: 'en-GB',
    group: SectionGroup.english,
  ),
  englishUS(
    id: 'en-US',
    flag: '🇺🇸',
    ttsLocale: 'en-US',
    group: SectionGroup.english,
  ),
  hindi(
    id: 'hi-IN',
    nativeName: 'हिन्दी',
    nativeSubtitle: 'कच्चा पापड़, पक्का पापड़',
    flag: '🇮🇳',
    ttsLocale: 'hi-IN',
    group: SectionGroup.hindi,
  ),
  german(
    id: 'de-DE',
    nativeName: 'Deutsch',
    nativeSubtitle: 'Zungenbrecher für Fischers Fritz',
    flag: '🇩🇪',
    ttsLocale: 'de-DE',
    group: SectionGroup.german,
  );

  const LanguageSection({
    required this.id,
    this.nativeName,
    this.nativeSubtitle,
    required this.flag,
    required this.ttsLocale,
    required this.group,
  });

  final String id;

  /// The language's name in its own script, shown before the translated
  /// name ("हिन्दी · Hindi"). Never translated; null for English sections.
  final String? nativeName;

  /// Tagline written in the section's own language. Never translated; null
  /// for English sections, whose taglines are UI strings in the ARB.
  final String? nativeSubtitle;
  final String flag;

  /// BCP-47 locale handed to the device's text-to-speech engine.
  final String ttsLocale;
  final SectionGroup group;
}

/// Top-level headings on the home screen.
///
/// Display names come from `lib/l10n/l10n_ext.dart`.
enum SectionGroup {
  english,
  hindi,
  german;

  List<LanguageSection> get sections =>
      LanguageSection.values.where((s) => s.group == this).toList();
}
