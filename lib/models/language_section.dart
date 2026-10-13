/// A browsable group of tongue twisters, each spoken in its own accent.
///
/// English is split into British and American so the text-to-speech voice
/// and the vocabulary (lorry vs. truck, biscuit vs. cookie) match.
enum LanguageSection {
  englishUK(
    id: 'en-GB',
    title: 'British English',
    subtitle: 'Lorries, biscuits and a proper cup of tea',
    flag: '🇬🇧',
    ttsLocale: 'en-GB',
    group: SectionGroup.english,
  ),
  englishUS(
    id: 'en-US',
    title: 'American English',
    subtitle: 'Woodchucks, buggies and unique New York',
    flag: '🇺🇸',
    ttsLocale: 'en-US',
    group: SectionGroup.english,
  ),
  hindi(
    id: 'hi-IN',
    title: 'हिन्दी · Hindi',
    subtitle: 'कच्चा पापड़, पक्का पापड़',
    flag: '🇮🇳',
    ttsLocale: 'hi-IN',
    group: SectionGroup.hindi,
  ),
  german(
    id: 'de-DE',
    title: 'Deutsch · German',
    subtitle: 'Zungenbrecher für Fischers Fritz',
    flag: '🇩🇪',
    ttsLocale: 'de-DE',
    group: SectionGroup.german,
  );

  const LanguageSection({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.flag,
    required this.ttsLocale,
    required this.group,
  });

  final String id;
  final String title;
  final String subtitle;
  final String flag;

  /// BCP-47 locale handed to the device's text-to-speech engine.
  final String ttsLocale;
  final SectionGroup group;

  /// Short label shown on chips and list headers.
  String get shortLabel => switch (this) {
    LanguageSection.englishUK => 'UK',
    LanguageSection.englishUS => 'US',
    LanguageSection.hindi => 'Hindi',
    LanguageSection.german => 'German',
  };
}

/// Top-level headings on the home screen.
enum SectionGroup {
  english('English'),
  hindi('Hindi'),
  german('German');

  const SectionGroup(this.label);
  final String label;

  List<LanguageSection> get sections =>
      LanguageSection.values.where((s) => s.group == this).toList();
}
