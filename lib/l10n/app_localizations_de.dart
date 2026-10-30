// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'App-Sprache';

  @override
  String get languageSystemDefault => 'Systemstandard';

  @override
  String languageFollowsDevice(String language) {
    return 'Wie auf deinem Gerät · $language';
  }

  @override
  String get languageSearchHint => 'Sprachen suchen';

  @override
  String appCredit(String name) {
    return 'Mit ❤️ gemacht von $name';
  }

  @override
  String get favouritesTitle => 'Favoriten';

  @override
  String get settingsTitle => 'Einstellungen';

  @override
  String get actionListen => 'Anhören';

  @override
  String get actionStop => 'Stopp';

  @override
  String get addToFavourites => 'Zu Favoriten hinzufügen';

  @override
  String get removeFromFavourites => 'Aus Favoriten entfernen';

  @override
  String get languageBritishEnglish => 'Britisches Englisch';

  @override
  String get languageAmericanEnglish => 'Amerikanisches Englisch';

  @override
  String get languageHindi => 'Hindi';

  @override
  String get languageGerman => 'Deutsch';

  @override
  String get groupEnglish => 'Englisch';

  @override
  String sectionTitleNative(String native, String language) {
    return '$native · $language';
  }

  @override
  String get sectionShortUK => 'UK';

  @override
  String get sectionShortUS => 'US';

  @override
  String get sectionSubtitleUK => 'Lorrys, Biscuits und ein ordentlicher Tee';

  @override
  String get sectionSubtitleUS => 'Murmeltiere, Buggys und Unique New York';

  @override
  String get difficultyEasy => 'Leicht';

  @override
  String get difficultyMedium => 'Mittel';

  @override
  String get difficultyHard => 'Schwer';

  @override
  String get speedSlow => 'Langsam';

  @override
  String get speedNormal => 'Normal';

  @override
  String get speedFast => 'Schnell';

  @override
  String get heroTitle => 'Verknote deine Zunge!';

  @override
  String get heroSubtitle =>
      'Hör Muttersprachlern zu und sprich es jedes Mal schneller nach.';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => 'geübt';

  @override
  String get heroStatFavourites => 'Favoriten';

  @override
  String get surpriseMe => 'Überrasch mich';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: '$practised von $total geübt',
      one: '$practised von $total geübt',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => 'Für dich empfohlen';

  @override
  String get recommendRevise => 'Zum Auffrischen: dein am wenigsten geübter';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Ein leichter für den Anfang',
      'medium': 'Ein mittlerer für den Anfang',
      'hard': 'Ein schwerer für den Anfang',
      'other': 'Ein guter für den Anfang',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Neu und leicht – du übst ja schon $language',
      'medium': 'Neu und mittel – du übst ja schon $language',
      'hard': 'Neu und schwer – du übst ja schon $language',
      'other': 'Neu für dich – du übst ja schon $language',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return 'Probier mal was Neues: $language';
  }

  @override
  String get searchTwistersHint => 'Zungenbrecher suchen';

  @override
  String get filterAll => 'Alle';

  @override
  String get noTwistersMatch => 'Keine passenden Zungenbrecher.';

  @override
  String get favouritesEmpty =>
      'Tippe bei einem Zungenbrecher auf ♡, um ihn hier zu sammeln.';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count× geübt',
      one: '$count× geübt',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · wischen für mehr';
  }

  @override
  String get pronunciationLabel => 'Aussprache';

  @override
  String get meaningLabel => 'Bedeutung';

  @override
  String repeatInARow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count× am Stück',
      one: '$count× am Stück',
    );
    return '$_temp0';
  }

  @override
  String get saidIt => 'Hab\'s gesagt!';

  @override
  String get practiseFirstTry => 'Erster Versuch geschafft. Jetzt schneller!';

  @override
  String get practiseThreeTimes => 'Dreimal! Deine Zunge wird langsam warm.';

  @override
  String get practiseTenTimes => 'Zehnmal. Den hast du jetzt drauf!';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Super! $count-mal geübt.',
      one: 'Super! Einmal geübt.',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return 'Keine $locale-Stimme auf diesem Gerät. Füge eine in den Sprachausgabe-Einstellungen hinzu.';
  }

  @override
  String get settingsAppearance => 'Darstellung';

  @override
  String get themeSystem => 'System';

  @override
  String get themeLight => 'Hell';

  @override
  String get themeDark => 'Dunkel';

  @override
  String get settingsLanguages => 'Sprachen';

  @override
  String get settingsLanguagesHelp =>
      'Wähle die Sprachen, die du lernen willst. Ausgeblendete verschwinden vom Startbildschirm.';

  @override
  String get settingsPlayback => 'Wiedergabe';

  @override
  String get settingsSpeakingSpeed => 'Sprechtempo';

  @override
  String get settingsRepeatChallenge => 'Wiederholungs-Challenge';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count-mal am Stück abspielen',
      one: 'Einmal abspielen',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => 'Weniger Wiederholungen';

  @override
  String get moreRepeats => 'Mehr Wiederholungen';

  @override
  String get settingsDisplay => 'Anzeige';

  @override
  String get showPronunciation => 'Aussprache zeigen';

  @override
  String get showPronunciationHelp => 'Umschrift unter Hindi-Zungenbrechern';

  @override
  String get showMeaning => 'Bedeutung zeigen';

  @override
  String get showMeaningHelp => 'Englische Übersetzung für Hindi und Deutsch';

  @override
  String get settingsVoices => 'Stimmen';

  @override
  String get settingsVoicesHelp =>
      'Die Zungenbrecher sind Aufnahmen von Muttersprachlern. Die Sprachausgabe deines Handys springt nur ein, wenn eine Aufnahme fehlt. Steht bei einer Sprache „Nicht installiert“, füge sie in den Sprachausgabe-Einstellungen deines Handys hinzu.';

  @override
  String get voiceInstalled => 'Installiert';

  @override
  String get voiceNotInstalled => 'Nicht installiert';

  @override
  String get voiceUnknown => 'Unbekannt';

  @override
  String get voiceChecking => 'Wird geprüft…';

  @override
  String voiceStatusLine(String locale, String status) {
    return '$locale · $status';
  }

  @override
  String testVoice(String language) {
    return 'Stimme testen: $language';
  }

  @override
  String get settingsYourData => 'Deine Daten';

  @override
  String get resetProgress => 'Übungsfortschritt zurücksetzen';

  @override
  String get resetProgressTitle => 'Fortschritt zurücksetzen?';

  @override
  String get resetProgressBody => 'Alle Übungszähler werden auf null gesetzt.';

  @override
  String get resetProgressDone => 'Übungsfortschritt zurückgesetzt';

  @override
  String get clearFavourites => 'Favoriten löschen';

  @override
  String get clearFavouritesTitle => 'Favoriten löschen?';

  @override
  String get clearFavouritesBody =>
      'Alle Zungenbrecher werden aus deinen Favoriten entfernt.';

  @override
  String get clearFavouritesDone => 'Favoriten gelöscht';

  @override
  String get dialogCancel => 'Abbrechen';

  @override
  String get dialogClear => 'Löschen';

  @override
  String get settingsAbout => 'Info';

  @override
  String aboutVersion(String version) {
    return 'Version $version';
  }

  @override
  String get privacyChoices => 'Datenschutzoptionen';

  @override
  String get privacyChoicesHelp => 'Werbe-Einwilligung ändern';

  @override
  String get settingsAds => 'Ads';

  @override
  String get adFreeWatch => 'Go ad-free for 24 hours';

  @override
  String get adFreeWatchHelp => 'Watch one short video';

  @override
  String adFreeActive(String time) {
    return 'Ad-free until $time';
  }

  @override
  String adFreeThanks(String time) {
    return 'Thanks! No ads until $time.';
  }

  @override
  String get adFreeUnavailable =>
      'No video available right now. Try again later.';
}
