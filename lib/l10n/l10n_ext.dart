// Display names for models and providers, which have no BuildContext.
// Widgets call these with `AppLocalizations.of(context)`.
import '../models/language_section.dart';
import '../models/twister.dart';
import '../providers/recommendation_provider.dart';
import '../providers/settings_provider.dart';
import 'app_localizations.dart';

extension LanguageSectionL10n on LanguageSection {
  /// Translated language name, used in sentences ("German").
  String languageName(AppLocalizations l) => switch (this) {
    LanguageSection.englishUK => l.languageBritishEnglish,
    LanguageSection.englishUS => l.languageAmericanEnglish,
    LanguageSection.hindi => l.languageHindi,
    LanguageSection.german => l.languageGerman,
  };

  /// Card and app-bar title; the native name is never translated
  /// ("हिन्दी · Hindi"). In the section's own UI language the native name
  /// stands alone, not "Deutsch · Deutsch".
  String title(AppLocalizations l) => switch (nativeName) {
    final native? when _isUiLanguage(l) => native,
    final native? => l.sectionTitleNative(native, languageName(l)),
    null => languageName(l),
  };

  bool _isUiLanguage(AppLocalizations l) =>
      ttsLocale.split('-').first == l.localeName.split('_').first;

  /// Tagline under the title.
  String subtitle(AppLocalizations l) => switch (this) {
    LanguageSection.englishUK => l.sectionSubtitleUK,
    LanguageSection.englishUS => l.sectionSubtitleUS,
    LanguageSection.hindi || LanguageSection.german => nativeSubtitle!,
  };

  /// Short label shown on chips and list headers.
  String shortLabel(AppLocalizations l) => switch (this) {
    LanguageSection.englishUK => l.sectionShortUK,
    LanguageSection.englishUS => l.sectionShortUS,
    LanguageSection.hindi => l.languageHindi,
    LanguageSection.german => l.languageGerman,
  };
}

extension SectionGroupL10n on SectionGroup {
  String label(AppLocalizations l) => switch (this) {
    SectionGroup.english => l.groupEnglish,
    SectionGroup.hindi => l.languageHindi,
    SectionGroup.german => l.languageGerman,
  };
}

extension DifficultyL10n on Difficulty {
  String label(AppLocalizations l) => switch (this) {
    Difficulty.easy => l.difficultyEasy,
    Difficulty.medium => l.difficultyMedium,
    Difficulty.hard => l.difficultyHard,
  };
}

extension PlaybackSpeedL10n on PlaybackSpeed {
  String label(AppLocalizations l) => switch (this) {
    PlaybackSpeed.slow => l.speedSlow,
    PlaybackSpeed.normal => l.speedNormal,
    PlaybackSpeed.fast => l.speedFast,
  };
}

extension RecommendationL10n on Recommendation {
  /// The sentence shown under the suggested twister.
  String describe(AppLocalizations l) {
    final level = twister.difficulty.name;
    final language = twister.section.languageName(l);
    return switch (reason) {
      RecommendationReason.revise => l.recommendRevise,
      RecommendationReason.starter => l.recommendStarter(level),
      RecommendationReason.practisedLanguage => l.recommendPractisedLanguage(
        level,
        language,
      ),
      RecommendationReason.newLanguage => l.recommendNewLanguage(language),
    };
  }
}
