// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class AppLocalizationsHr extends AppLocalizations {
  AppLocalizationsHr([String locale = 'hr']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'Jezik aplikacije';

  @override
  String get languageSystemDefault => 'Jezik sustava';

  @override
  String languageFollowsDevice(String language) {
    return 'Prati tvoj uređaj · $language';
  }

  @override
  String get languageSearchHint => 'Traži jezike';

  @override
  String appCredit(String name) {
    return 'Izrađeno s ❤️ – $name';
  }

  @override
  String get favouritesTitle => 'Favoriti';

  @override
  String get settingsTitle => 'Postavke';

  @override
  String get actionListen => 'Slušaj';

  @override
  String get actionStop => 'Zaustavi';

  @override
  String get addToFavourites => 'Dodaj u favorite';

  @override
  String get removeFromFavourites => 'Ukloni iz favorita';

  @override
  String get languageBritishEnglish => 'Britanski engleski';

  @override
  String get languageAmericanEnglish => 'Američki engleski';

  @override
  String get languageHindi => 'Hindski';

  @override
  String get languageGerman => 'Njemački';

  @override
  String get groupEnglish => 'Engleski';

  @override
  String sectionTitleNative(String native, String language) {
    return '$native · $language';
  }

  @override
  String get sectionShortUK => 'UK';

  @override
  String get sectionShortUS => 'US';

  @override
  String get sectionSubtitleUK => 'Lorries, biscuits i prava šalica čaja';

  @override
  String get sectionSubtitleUS => 'Svisci, kolica i Unique New York';

  @override
  String get difficultyEasy => 'Lako';

  @override
  String get difficultyMedium => 'Srednje';

  @override
  String get difficultyHard => 'Teško';

  @override
  String get speedSlow => 'Sporo';

  @override
  String get speedNormal => 'Normalno';

  @override
  String get speedFast => 'Brzo';

  @override
  String get heroTitle => 'Zapetljaj jezik!';

  @override
  String get heroSubtitle =>
      'Poslušaj izvornog govornika, pa izgovori sve brže i brže.';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => 'vježbano';

  @override
  String get heroStatFavourites => 'favoriti';

  @override
  String get surpriseMe => 'Iznenadi me';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: 'Vježbano $practised od $total',
      few: 'Vježbano $practised od $total',
      one: 'Vježbano $practised od $total',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => 'Preporuka za tebe';

  @override
  String get recommendRevise =>
      'Za ponavljanje: tvoja najmanje vježbana brzalica';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Dobra laka za početak',
      'medium': 'Dobra srednja za početak',
      'hard': 'Dobra teška za početak',
      'other': 'Dobra za početak',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Nova laka brzalica – već vježbaš: $language',
      'medium': 'Nova srednja brzalica – već vježbaš: $language',
      'hard': 'Nova teška brzalica – već vježbaš: $language',
      'other': 'Nova brzalica – već vježbaš: $language',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return 'Probaj nešto novo: $language';
  }

  @override
  String get searchTwistersHint => 'Traži brzalice';

  @override
  String get filterAll => 'Sve';

  @override
  String get noTwistersMatch => 'Nema odgovarajućih brzalica.';

  @override
  String get favouritesEmpty => 'Dodirni ♡ na brzalici da je spremiš ovdje.';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vježbano $count×',
      few: 'Vježbano $count×',
      one: 'Vježbano $count×',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · povuci za još';
  }

  @override
  String get pronunciationLabel => 'Izgovor';

  @override
  String get meaningLabel => 'Značenje';

  @override
  String repeatInARow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count× zaredom',
      few: '$count× zaredom',
      one: '$count× zaredom',
    );
    return '$_temp0';
  }

  @override
  String get saidIt => 'Izgovoreno!';

  @override
  String get practiseFirstTry => 'Prvi pokušaj zabilježen. Sad brže!';

  @override
  String get practiseThreeTimes => 'Tri puta! Jezik se zagrijava.';

  @override
  String get practiseTenTimes => 'Deset puta. Ova je savladana!';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Bravo! Vježbano $count puta.',
      few: 'Bravo! Vježbano $count puta.',
      one: 'Bravo! Vježbano $count put.',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return 'Na ovom uređaju nema glasa za $locale. Dodaj ga u postavkama pretvaranja teksta u govor.';
  }

  @override
  String get settingsAppearance => 'Izgled';

  @override
  String get themeSystem => 'Sustav';

  @override
  String get themeLight => 'Svijetla';

  @override
  String get themeDark => 'Tamna';

  @override
  String get settingsLanguages => 'Jezici';

  @override
  String get settingsLanguagesHelp =>
      'Odaberi jezike koje želiš učiti. Skriveni jezici nestaju s početnog zaslona.';

  @override
  String get settingsPlayback => 'Reprodukcija';

  @override
  String get settingsSpeakingSpeed => 'Brzina govora';

  @override
  String get settingsRepeatChallenge => 'Izazov ponavljanja';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Brzalica se pušta $count puta zaredom',
      few: 'Brzalica se pušta $count puta zaredom',
      one: 'Brzalica se pušta $count put',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => 'Manje ponavljanja';

  @override
  String get moreRepeats => 'Više ponavljanja';

  @override
  String get settingsDisplay => 'Prikaz';

  @override
  String get showPronunciation => 'Prikaži izgovor';

  @override
  String get showPronunciationHelp => 'Latinični zapis ispod hindskih brzalica';

  @override
  String get showMeaning => 'Prikaži značenje';

  @override
  String get showMeaningHelp => 'Engleski prijevod za hindski i njemački';

  @override
  String get settingsVoices => 'Glasovi';

  @override
  String get settingsVoicesHelp =>
      'Brzalice puštaju snimke izvornih govornika. Glas za pretvaranje teksta u govor na mobitelu koristi se samo kad snimka nedostaje. Ako jezik piše kao nije instaliran, dodaj ga u postavkama pretvaranja teksta u govor na mobitelu.';

  @override
  String get voiceInstalled => 'Instaliran';

  @override
  String get voiceNotInstalled => 'Nije instaliran';

  @override
  String get voiceUnknown => 'Nepoznato';

  @override
  String get voiceChecking => 'Provjera…';

  @override
  String voiceStatusLine(String locale, String status) {
    return '$locale · $status';
  }

  @override
  String testVoice(String language) {
    return 'Isprobaj glas: $language';
  }

  @override
  String get settingsYourData => 'Tvoji podaci';

  @override
  String get resetProgress => 'Poništi napredak';

  @override
  String get resetProgressTitle => 'Poništiti napredak?';

  @override
  String get resetProgressBody => 'Svi brojači vježbanja vratit će se na nulu.';

  @override
  String get resetProgressDone => 'Napredak poništen';

  @override
  String get clearFavourites => 'Očisti favorite';

  @override
  String get clearFavouritesTitle => 'Očistiti favorite?';

  @override
  String get clearFavouritesBody =>
      'Sve brzalice bit će uklonjene iz favorita.';

  @override
  String get clearFavouritesDone => 'Favoriti očišćeni';

  @override
  String get dialogCancel => 'Odustani';

  @override
  String get dialogClear => 'Očisti';

  @override
  String get settingsAbout => 'O aplikaciji';

  @override
  String aboutVersion(String version) {
    return 'Verzija $version';
  }

  @override
  String get privacyChoices => 'Postavke privatnosti';

  @override
  String get privacyChoicesHelp => 'Promijeni privolu za oglase';

  @override
  String get privacyPolicy => 'Pravila o privatnosti';

  @override
  String get settingsAds => 'Oglasi';

  @override
  String get adFreeWatch => '1 sat bez oglasa';

  @override
  String get adFreeWatchHelp => 'Pogledaj jedan kratki video';

  @override
  String adFreeActive(String time) {
    return 'Bez oglasa do $time';
  }

  @override
  String adFreeThanks(String time) {
    return 'Hvala! Bez oglasa do $time.';
  }

  @override
  String get adFreeUnavailable =>
      'Trenutačno nema videa. Pokušaj ponovno kasnije.';
}
