// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'App language';

  @override
  String get languageSystemDefault => 'System default';

  @override
  String languageFollowsDevice(String language) {
    return 'Follows your device · $language';
  }

  @override
  String get languageSearchHint => 'Search languages';

  @override
  String appCredit(String name) {
    return 'Made with ❤️ by $name';
  }

  @override
  String get favouritesTitle => 'Favourites';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get actionListen => 'Listen';

  @override
  String get actionStop => 'Stop';

  @override
  String get addToFavourites => 'Add to favourites';

  @override
  String get removeFromFavourites => 'Remove from favourites';

  @override
  String get languageBritishEnglish => 'British English';

  @override
  String get languageAmericanEnglish => 'American English';

  @override
  String get languageHindi => 'Hindi';

  @override
  String get languageGerman => 'German';

  @override
  String get groupEnglish => 'English';

  @override
  String sectionTitleNative(String native, String language) {
    return '$native · $language';
  }

  @override
  String get sectionShortUK => 'UK';

  @override
  String get sectionShortUS => 'US';

  @override
  String get sectionSubtitleUK => 'Lorries, biscuits and a proper cup of tea';

  @override
  String get sectionSubtitleUS => 'Woodchucks, buggies and unique New York';

  @override
  String get difficultyEasy => 'Easy';

  @override
  String get difficultyMedium => 'Medium';

  @override
  String get difficultyHard => 'Hard';

  @override
  String get speedSlow => 'Slow';

  @override
  String get speedNormal => 'Normal';

  @override
  String get speedFast => 'Fast';

  @override
  String get heroTitle => 'Twist your tongue!';

  @override
  String get heroSubtitle =>
      'Listen to a native voice, then say it faster each time.';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => 'practised';

  @override
  String get heroStatFavourites => 'favourites';

  @override
  String get surpriseMe => 'Surprise me';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: '$practised of $total practised',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => 'Recommended for you';

  @override
  String get recommendRevise => 'Time to revise: your least-practised twister';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'A good easy one to start with',
      'medium': 'A good medium one to start with',
      'hard': 'A good hard one to start with',
      'other': 'A good one to start with',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'New easy twister in $language, a language you practise',
      'medium': 'New medium twister in $language, a language you practise',
      'hard': 'New hard twister in $language, a language you practise',
      'other': 'New twister in $language, a language you practise',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return 'Try something new in $language';
  }

  @override
  String get searchTwistersHint => 'Search twisters';

  @override
  String get filterAll => 'All';

  @override
  String get noTwistersMatch => 'No twisters match.';

  @override
  String get favouritesEmpty => 'Tap ♡ on any twister to keep it here.';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Practised $count×',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · swipe for more';
  }

  @override
  String get pronunciationLabel => 'Pronunciation';

  @override
  String get meaningLabel => 'Meaning';

  @override
  String repeatInARow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count× in a row',
    );
    return '$_temp0';
  }

  @override
  String get saidIt => 'I said it!';

  @override
  String get practiseFirstTry => 'First try logged. Now say it faster!';

  @override
  String get practiseThreeTimes => 'Three times! Your tongue is warming up.';

  @override
  String get practiseTenTimes => 'Ten times. You have mastered this one!';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nice! Practised $count times.',
      one: 'Nice! Practised once.',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return 'No $locale voice on this device. Add one in your system text-to-speech settings.';
  }

  @override
  String get settingsAppearance => 'Appearance';

  @override
  String get themeSystem => 'System';

  @override
  String get themeLight => 'Light';

  @override
  String get themeDark => 'Dark';

  @override
  String get settingsLanguages => 'Languages';

  @override
  String get settingsLanguagesHelp =>
      'Choose the languages you want to learn. Hidden languages disappear from the home screen.';

  @override
  String get settingsPlayback => 'Playback';

  @override
  String get settingsSpeakingSpeed => 'Speaking speed';

  @override
  String get settingsRepeatChallenge => 'Repeat challenge';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Plays a twister $count times in a row',
      one: 'Plays a twister once',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => 'Fewer repeats';

  @override
  String get moreRepeats => 'More repeats';

  @override
  String get settingsDisplay => 'Display';

  @override
  String get showPronunciation => 'Show pronunciation';

  @override
  String get showPronunciationHelp => 'Romanised text under Hindi twisters';

  @override
  String get showMeaning => 'Show meaning';

  @override
  String get showMeaningHelp => 'English translation for Hindi and German';

  @override
  String get settingsVoices => 'Voices';

  @override
  String get settingsVoicesHelp =>
      'Twisters play recordings by native speakers. Your phone\'s text-to-speech voice is used only when a recording is missing. If a language is missing, install it in your system settings (Android: Settings → System → Languages → Text-to-speech; iOS: Settings → Accessibility → Spoken Content → Voices).';

  @override
  String get voiceInstalled => 'Installed';

  @override
  String get voiceNotInstalled => 'Not installed';

  @override
  String get voiceUnknown => 'Unknown';

  @override
  String get voiceChecking => 'Checking…';

  @override
  String voiceStatusLine(String locale, String status) {
    return '$locale · $status';
  }

  @override
  String testVoice(String language) {
    return 'Test $language voice';
  }

  @override
  String get settingsYourData => 'Your data';

  @override
  String get resetProgress => 'Reset practice progress';

  @override
  String get resetProgressTitle => 'Reset progress?';

  @override
  String get resetProgressBody =>
      'All practice counts will be set back to zero.';

  @override
  String get resetProgressDone => 'Practice progress reset';

  @override
  String get clearFavourites => 'Clear favourites';

  @override
  String get clearFavouritesTitle => 'Clear favourites?';

  @override
  String get clearFavouritesBody =>
      'All twisters will be removed from your favourites.';

  @override
  String get clearFavouritesDone => 'Favourites cleared';

  @override
  String get dialogCancel => 'Cancel';

  @override
  String get dialogClear => 'Clear';

  @override
  String get settingsAbout => 'About';

  @override
  String aboutVersion(String version) {
    return 'Version $version';
  }

  @override
  String get privacyChoices => 'Privacy choices';

  @override
  String get privacyChoicesHelp => 'Change your ad consent';
}
