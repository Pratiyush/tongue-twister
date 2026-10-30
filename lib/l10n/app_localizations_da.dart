// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsDa extends AppLocalizations {
  AppLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'Appsprog';

  @override
  String get languageSystemDefault => 'Systemstandard';

  @override
  String languageFollowsDevice(String language) {
    return 'Som på din enhed · $language';
  }

  @override
  String get languageSearchHint => 'Søg efter sprog';

  @override
  String appCredit(String name) {
    return 'Lavet med ❤️ af $name';
  }

  @override
  String get favouritesTitle => 'Favoritter';

  @override
  String get settingsTitle => 'Indstillinger';

  @override
  String get actionListen => 'Lyt';

  @override
  String get actionStop => 'Stop';

  @override
  String get addToFavourites => 'Føj til favoritter';

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
  String get sectionSubtitleUK => 'Lorries, biscuits og en ordentlig kop te';

  @override
  String get sectionSubtitleUS => 'Murmeldyr, barnevogne og Unique New York';

  @override
  String get difficultyEasy => 'Let';

  @override
  String get difficultyMedium => 'Mellem';

  @override
  String get difficultyHard => 'Svær';

  @override
  String get speedSlow => 'Langsom';

  @override
  String get speedNormal => 'Normal';

  @override
  String get speedFast => 'Hurtig';

  @override
  String get heroTitle => 'Slå knude på tungen!';

  @override
  String get heroSubtitle =>
      'Lyt til en indfødt stemme, og sig den hurtigere hver gang.';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => 'øvet';

  @override
  String get heroStatFavourites => 'favoritter';

  @override
  String get surpriseMe => 'Overrask mig';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: '$practised af $total øvet',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => 'Anbefalet til dig';

  @override
  String get recommendRevise => 'Tid til repetition: din mindst øvede';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'En let at starte med',
      'medium': 'En mellemsvær at starte med',
      'hard': 'En svær at starte med',
      'other': 'En god at starte med',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Ny og let – du øver jo allerede $language',
      'medium': 'Ny og mellemsvær – du øver jo allerede $language',
      'hard': 'Ny og svær – du øver jo allerede $language',
      'other': 'Ny for dig – du øver jo allerede $language',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return 'Prøv noget nyt på $language';
  }

  @override
  String get searchTwistersHint => 'Søg i tungebrækkere';

  @override
  String get filterAll => 'Alle';

  @override
  String get noTwistersMatch => 'Ingen tungebrækkere passer.';

  @override
  String get favouritesEmpty =>
      'Tryk på ♡ ved en tungebrækker for at gemme den her.';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Øvet $count×',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · swipe for flere';
  }

  @override
  String get pronunciationLabel => 'Udtale';

  @override
  String get meaningLabel => 'Betydning';

  @override
  String repeatInARow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count× i træk',
    );
    return '$_temp0';
  }

  @override
  String get saidIt => 'Jeg sagde den!';

  @override
  String get practiseFirstTry =>
      'Første forsøg registreret. Sig den nu hurtigere!';

  @override
  String get practiseThreeTimes => 'Tre gange! Din tunge er ved at blive varm.';

  @override
  String get practiseTenTimes => 'Ti gange. Den her har du styr på!';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Flot! Øvet $count gange.',
      one: 'Flot! Øvet én gang.',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return 'Ingen $locale-stemme på enheden. Tilføj en i systemets indstillinger for tekst til tale.';
  }

  @override
  String get settingsAppearance => 'Udseende';

  @override
  String get themeSystem => 'System';

  @override
  String get themeLight => 'Lyst';

  @override
  String get themeDark => 'Mørkt';

  @override
  String get settingsLanguages => 'Sprog';

  @override
  String get settingsLanguagesHelp =>
      'Vælg de sprog, du vil lære. Skjulte sprog forsvinder fra startskærmen.';

  @override
  String get settingsPlayback => 'Afspilning';

  @override
  String get settingsSpeakingSpeed => 'Taletempo';

  @override
  String get settingsRepeatChallenge => 'Gentag i træk';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Afspiller den $count gange i træk',
      one: 'Afspiller en tungebrækker én gang',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => 'Færre gentagelser';

  @override
  String get moreRepeats => 'Flere gentagelser';

  @override
  String get settingsDisplay => 'Visning';

  @override
  String get showPronunciation => 'Vis udtale';

  @override
  String get showPronunciationHelp =>
      'Latinsk skrift under hindi-tungebrækkere';

  @override
  String get showMeaning => 'Vis betydning';

  @override
  String get showMeaningHelp => 'Engelsk oversættelse af hindi og tysk';

  @override
  String get settingsVoices => 'Stemmer';

  @override
  String get settingsVoicesHelp =>
      'Tungebrækkerne afspiller optagelser af indfødte talere. Telefonens tekst til tale-stemme bruges kun, når en optagelse mangler. Mangler et sprog, så installér det i systemindstillingerne (Android: Indstillinger → System → Sprog → Tekst til tale; iOS: Indstillinger → Tilgængelighed → Oplæst indhold → Stemmer).';

  @override
  String get voiceInstalled => 'Installeret';

  @override
  String get voiceNotInstalled => 'Ikke installeret';

  @override
  String get voiceUnknown => 'Ukendt';

  @override
  String get voiceChecking => 'Tjekker…';

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
  String get resetProgress => 'Nulstil fremskridt';

  @override
  String get resetProgressTitle => 'Nulstil fremskridt?';

  @override
  String get resetProgressBody => 'Alle øvetællere sættes tilbage til nul.';

  @override
  String get resetProgressDone => 'Fremskridt nulstillet';

  @override
  String get clearFavourites => 'Ryd favoritter';

  @override
  String get clearFavouritesTitle => 'Ryd favoritter?';

  @override
  String get clearFavouritesBody =>
      'Alle tungebrækkere fjernes fra dine favoritter.';

  @override
  String get clearFavouritesDone => 'Favoritter ryddet';

  @override
  String get dialogCancel => 'Annuller';

  @override
  String get dialogClear => 'Ryd';

  @override
  String get settingsAbout => 'Om';

  @override
  String aboutVersion(String version) {
    return 'Version $version';
  }

  @override
  String get privacyChoices => 'Privatlivsvalg';

  @override
  String get privacyChoicesHelp => 'Skift dit samtykke til annoncer';
}
