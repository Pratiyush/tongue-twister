// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'App-taal';

  @override
  String get languageSystemDefault => 'Systeemtaal';

  @override
  String languageFollowsDevice(String language) {
    return 'Volgt je apparaat · $language';
  }

  @override
  String get languageSearchHint => 'Talen zoeken';

  @override
  String appCredit(String name) {
    return 'Gemaakt met ❤️ door $name';
  }

  @override
  String get favouritesTitle => 'Favorieten';

  @override
  String get settingsTitle => 'Instellingen';

  @override
  String get actionListen => 'Luisteren';

  @override
  String get actionStop => 'Stop';

  @override
  String get addToFavourites => 'Aan favorieten toevoegen';

  @override
  String get removeFromFavourites => 'Uit favorieten verwijderen';

  @override
  String get languageBritishEnglish => 'Brits Engels';

  @override
  String get languageAmericanEnglish => 'Amerikaans Engels';

  @override
  String get languageHindi => 'Hindi';

  @override
  String get languageGerman => 'Duits';

  @override
  String get groupEnglish => 'Engels';

  @override
  String sectionTitleNative(String native, String language) {
    return '$native · $language';
  }

  @override
  String get sectionShortUK => 'UK';

  @override
  String get sectionShortUS => 'US';

  @override
  String get sectionSubtitleUK => 'Lorries, biscuits en een echte kop thee';

  @override
  String get sectionSubtitleUS => 'Marmotten, buggy\'s en Unique New York';

  @override
  String get difficultyEasy => 'Makkelijk';

  @override
  String get difficultyMedium => 'Gemiddeld';

  @override
  String get difficultyHard => 'Moeilijk';

  @override
  String get speedSlow => 'Langzaam';

  @override
  String get speedNormal => 'Normaal';

  @override
  String get speedFast => 'Snel';

  @override
  String get heroTitle => 'Breek je tong!';

  @override
  String get heroSubtitle =>
      'Luister naar een moedertaalstem en zeg het steeds sneller.';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => 'geoefend';

  @override
  String get heroStatFavourites => 'favorieten';

  @override
  String get surpriseMe => 'Verras me';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: '$practised van $total geoefend',
      one: '$practised van $total geoefend',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => 'Aanbevolen voor jou';

  @override
  String get recommendRevise => 'Tijd om te herhalen: je minst geoefende';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Een makkelijke om mee te beginnen',
      'medium': 'Een gemiddelde om mee te beginnen',
      'hard': 'Een moeilijke om mee te beginnen',
      'other': 'Een goede om mee te beginnen',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Nieuw en makkelijk in het $language, dat je al oefent',
      'medium': 'Nieuw en gemiddeld in het $language, dat je al oefent',
      'hard': 'Nieuw en moeilijk in het $language, dat je al oefent',
      'other': 'Nieuw in het $language, dat je al oefent',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return 'Probeer iets nieuws in het $language';
  }

  @override
  String get searchTwistersHint => 'Tongbrekers zoeken';

  @override
  String get filterAll => 'Alle';

  @override
  String get noTwistersMatch => 'Geen tongbrekers gevonden.';

  @override
  String get favouritesEmpty =>
      'Tik op ♡ bij een tongbreker om hem hier te bewaren.';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count× geoefend',
      one: '$count× geoefend',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · swipe voor meer';
  }

  @override
  String get pronunciationLabel => 'Uitspraak';

  @override
  String get meaningLabel => 'Betekenis';

  @override
  String repeatInARow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count× achter elkaar',
      one: '$count× achter elkaar',
    );
    return '$_temp0';
  }

  @override
  String get saidIt => 'Gezegd!';

  @override
  String get practiseFirstTry => 'Eerste poging genoteerd. Nu sneller!';

  @override
  String get practiseThreeTimes => 'Drie keer! Je tong wordt warm.';

  @override
  String get practiseTenTimes => 'Tien keer. Deze heb je onder de knie!';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Top! $count keer geoefend.',
      one: 'Top! Eén keer geoefend.',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return 'Geen $locale-stem op dit apparaat. Voeg er een toe in je tekst-naar-spraakinstellingen.';
  }

  @override
  String get settingsAppearance => 'Uiterlijk';

  @override
  String get themeSystem => 'Systeem';

  @override
  String get themeLight => 'Licht';

  @override
  String get themeDark => 'Donker';

  @override
  String get settingsLanguages => 'Talen';

  @override
  String get settingsLanguagesHelp =>
      'Kies de talen die je wilt leren. Verborgen talen verdwijnen van het startscherm.';

  @override
  String get settingsPlayback => 'Afspelen';

  @override
  String get settingsSpeakingSpeed => 'Spreektempo';

  @override
  String get settingsRepeatChallenge => 'Herhaaluitdaging';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Speelt hem $count keer achter elkaar',
      one: 'Speelt een tongbreker één keer af',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => 'Minder herhalingen';

  @override
  String get moreRepeats => 'Meer herhalingen';

  @override
  String get settingsDisplay => 'Weergave';

  @override
  String get showPronunciation => 'Uitspraak tonen';

  @override
  String get showPronunciationHelp =>
      'Geromaniseerde tekst onder Hindi-tongbrekers';

  @override
  String get showMeaning => 'Betekenis tonen';

  @override
  String get showMeaningHelp => 'Engelse vertaling voor Hindi en Duits';

  @override
  String get settingsVoices => 'Stemmen';

  @override
  String get settingsVoicesHelp =>
      'Tongbrekers spelen opnames van moedertaalsprekers af. De tekst-naar-spraakstem van je telefoon wordt alleen gebruikt als een opname ontbreekt. Staat er bij een taal ‘Ontbreekt’? Voeg die dan toe in de tekst-naar-spraakinstellingen van je telefoon.';

  @override
  String get voiceInstalled => 'Geïnstalleerd';

  @override
  String get voiceNotInstalled => 'Ontbreekt';

  @override
  String get voiceUnknown => 'Onbekend';

  @override
  String get voiceChecking => 'Controleren…';

  @override
  String voiceStatusLine(String locale, String status) {
    return '$locale · $status';
  }

  @override
  String testVoice(String language) {
    return 'Stem testen: $language';
  }

  @override
  String get settingsYourData => 'Jouw gegevens';

  @override
  String get resetProgress => 'Oefenvoortgang wissen';

  @override
  String get resetProgressTitle => 'Voortgang wissen?';

  @override
  String get resetProgressBody => 'Alle oefentellers worden weer op nul gezet.';

  @override
  String get resetProgressDone => 'Oefenvoortgang gewist';

  @override
  String get clearFavourites => 'Favorieten wissen';

  @override
  String get clearFavouritesTitle => 'Favorieten wissen?';

  @override
  String get clearFavouritesBody =>
      'Alle tongbrekers worden uit je favorieten verwijderd.';

  @override
  String get clearFavouritesDone => 'Favorieten gewist';

  @override
  String get dialogCancel => 'Annuleren';

  @override
  String get dialogClear => 'Wissen';

  @override
  String get settingsAbout => 'Over';

  @override
  String aboutVersion(String version) {
    return 'Versie $version';
  }

  @override
  String get privacyChoices => 'Privacykeuzes';

  @override
  String get privacyChoicesHelp => 'Wijzig je advertentietoestemming';

  @override
  String get privacyPolicy => 'Privacybeleid';

  @override
  String get settingsAds => 'Advertenties';

  @override
  String get adFreeWatch => '1 uur zonder advertenties';

  @override
  String get adFreeWatchHelp => 'Bekijk één korte video';

  @override
  String adFreeActive(String time) {
    return 'Advertentievrij tot $time';
  }

  @override
  String adFreeThanks(String time) {
    return 'Bedankt! Geen advertenties tot $time.';
  }

  @override
  String get adFreeUnavailable =>
      'Nu geen video beschikbaar. Probeer het later opnieuw.';
}
