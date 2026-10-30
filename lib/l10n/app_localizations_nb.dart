// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian Bokmål (`nb`).
class AppLocalizationsNb extends AppLocalizations {
  AppLocalizationsNb([String locale = 'nb']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'Appspråk';

  @override
  String get languageSystemDefault => 'Systemstandard';

  @override
  String languageFollowsDevice(String language) {
    return 'Som på enheten · $language';
  }

  @override
  String get languageSearchHint => 'Søk etter språk';

  @override
  String appCredit(String name) {
    return 'Laget med ❤️ av $name';
  }

  @override
  String get favouritesTitle => 'Favoritter';

  @override
  String get settingsTitle => 'Innstillinger';

  @override
  String get actionListen => 'Lytt';

  @override
  String get actionStop => 'Stopp';

  @override
  String get addToFavourites => 'Legg til i favoritter';

  @override
  String get removeFromFavourites => 'Fjern fra favoritter';

  @override
  String get languageBritishEnglish => 'Britisk engelsk';

  @override
  String get languageAmericanEnglish => 'Amerikansk engelsk';

  @override
  String get languageHindi => 'Hindi';

  @override
  String get languageGerman => 'Tysk';

  @override
  String get groupEnglish => 'Engelsk';

  @override
  String sectionTitleNative(String native, String language) {
    return '$native · $language';
  }

  @override
  String get sectionShortUK => 'UK';

  @override
  String get sectionShortUS => 'US';

  @override
  String get sectionSubtitleUK => 'Lorries, biscuits og en skikkelig kopp te';

  @override
  String get sectionSubtitleUS => 'Murmeldyr, barnevogner og Unique New York';

  @override
  String get difficultyEasy => 'Lett';

  @override
  String get difficultyMedium => 'Middels';

  @override
  String get difficultyHard => 'Vanskelig';

  @override
  String get speedSlow => 'Sakte';

  @override
  String get speedNormal => 'Normal';

  @override
  String get speedFast => 'Rask';

  @override
  String get heroTitle => 'Få knute på tunga!';

  @override
  String get heroSubtitle =>
      'Hør på en morsmålstaler, og si den raskere hver gang.';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => 'øvd';

  @override
  String get heroStatFavourites => 'favoritter';

  @override
  String get surpriseMe => 'Overrask meg';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: '$practised av $total øvd',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => 'Anbefalt for deg';

  @override
  String get recommendRevise => 'På tide å repetere: din minst øvde';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'En lett en å starte med',
      'medium': 'En middels en å starte med',
      'hard': 'En vanskelig en å starte med',
      'other': 'En fin en å starte med',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Ny og lett – du øver jo allerede på $language',
      'medium': 'Ny og middels – du øver jo allerede på $language',
      'hard': 'Ny og vanskelig – du øver jo allerede på $language',
      'other': 'Ny for deg – du øver jo allerede på $language',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return 'Prøv noe nytt på $language';
  }

  @override
  String get searchTwistersHint => 'Søk i tungekrøller';

  @override
  String get filterAll => 'Alle';

  @override
  String get noTwistersMatch => 'Ingen treff.';

  @override
  String get favouritesEmpty =>
      'Trykk på ♡ ved en tungekrøll for å lagre den her.';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Øvd $count×',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · sveip for flere';
  }

  @override
  String get pronunciationLabel => 'Uttale';

  @override
  String get meaningLabel => 'Betydning';

  @override
  String repeatInARow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count× på rad',
    );
    return '$_temp0';
  }

  @override
  String get saidIt => 'Jeg sa den!';

  @override
  String get practiseFirstTry => 'Første forsøk registrert. Si den raskere nå!';

  @override
  String get practiseThreeTimes => 'Tre ganger! Tunga di begynner å bli varm.';

  @override
  String get practiseTenTimes => 'Ti ganger. Denne kan du nå!';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Bra! Øvd $count ganger.',
      one: 'Bra! Øvd én gang.',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return 'Ingen $locale-stemme på enheten. Legg til en i systeminnstillingene for tekst-til-tale.';
  }

  @override
  String get settingsAppearance => 'Utseende';

  @override
  String get themeSystem => 'System';

  @override
  String get themeLight => 'Lyst';

  @override
  String get themeDark => 'Mørkt';

  @override
  String get settingsLanguages => 'Språk';

  @override
  String get settingsLanguagesHelp =>
      'Velg språkene du vil lære. Skjulte språk forsvinner fra startskjermen.';

  @override
  String get settingsPlayback => 'Avspilling';

  @override
  String get settingsSpeakingSpeed => 'Taletempo';

  @override
  String get settingsRepeatChallenge => 'Gjenta på rad';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Spiller den $count ganger på rad',
      one: 'Spiller en tungekrøll én gang',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => 'Færre gjentakelser';

  @override
  String get moreRepeats => 'Flere gjentakelser';

  @override
  String get settingsDisplay => 'Visning';

  @override
  String get showPronunciation => 'Vis uttale';

  @override
  String get showPronunciationHelp => 'Latinsk skrift under hindi-tungekrøller';

  @override
  String get showMeaning => 'Vis betydning';

  @override
  String get showMeaningHelp => 'Engelsk oversettelse for hindi og tysk';

  @override
  String get settingsVoices => 'Stemmer';

  @override
  String get settingsVoicesHelp =>
      'Tungekrøllene er spilt inn av morsmålstalere. Telefonens tekst-til-tale-stemme brukes bare når et opptak mangler. Står et språk som ikke installert, legger du det til i telefonens innstillinger for tekst-til-tale.';

  @override
  String get voiceInstalled => 'Installert';

  @override
  String get voiceNotInstalled => 'Ikke installert';

  @override
  String get voiceUnknown => 'Ukjent';

  @override
  String get voiceChecking => 'Sjekker…';

  @override
  String voiceStatusLine(String locale, String status) {
    return '$locale · $status';
  }

  @override
  String testVoice(String language) {
    return 'Test stemme: $language';
  }

  @override
  String get settingsYourData => 'Dine data';

  @override
  String get resetProgress => 'Nullstill fremgang';

  @override
  String get resetProgressTitle => 'Nullstille fremgang?';

  @override
  String get resetProgressBody => 'Alle øvingstellere settes tilbake til null.';

  @override
  String get resetProgressDone => 'Fremgang nullstilt';

  @override
  String get clearFavourites => 'Tøm favoritter';

  @override
  String get clearFavouritesTitle => 'Tømme favoritter?';

  @override
  String get clearFavouritesBody =>
      'Alle tungekrøller fjernes fra favorittene dine.';

  @override
  String get clearFavouritesDone => 'Favoritter tømt';

  @override
  String get dialogCancel => 'Avbryt';

  @override
  String get dialogClear => 'Tøm';

  @override
  String get settingsAbout => 'Om';

  @override
  String aboutVersion(String version) {
    return 'Versjon $version';
  }

  @override
  String get privacyChoices => 'Personvernvalg';

  @override
  String get privacyChoicesHelp => 'Endre annonsesamtykket ditt';
}
