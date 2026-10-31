// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppLocalizationsFi extends AppLocalizations {
  AppLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'Sovelluksen kieli';

  @override
  String get languageSystemDefault => 'Järjestelmän oletus';

  @override
  String languageFollowsDevice(String language) {
    return 'Laitteen mukaan · $language';
  }

  @override
  String get languageSearchHint => 'Hae kieliä';

  @override
  String appCredit(String name) {
    return 'Tehty rakkaudella ❤️ – $name';
  }

  @override
  String get favouritesTitle => 'Suosikit';

  @override
  String get settingsTitle => 'Asetukset';

  @override
  String get actionListen => 'Kuuntele';

  @override
  String get actionStop => 'Pysäytä';

  @override
  String get addToFavourites => 'Lisää suosikkeihin';

  @override
  String get removeFromFavourites => 'Poista suosikeista';

  @override
  String get languageBritishEnglish => 'Brittienglanti';

  @override
  String get languageAmericanEnglish => 'Amerikanenglanti';

  @override
  String get languageHindi => 'Hindi';

  @override
  String get languageGerman => 'Saksa';

  @override
  String get groupEnglish => 'Englanti';

  @override
  String sectionTitleNative(String native, String language) {
    return '$native · $language';
  }

  @override
  String get sectionShortUK => 'UK';

  @override
  String get sectionShortUS => 'US';

  @override
  String get sectionSubtitleUK => 'Lorries, biscuits ja kunnon kuppi teetä';

  @override
  String get sectionSubtitleUS => 'Murmelit, lastenvaunut ja Unique New York';

  @override
  String get difficultyEasy => 'Helppo';

  @override
  String get difficultyMedium => 'Keskitaso';

  @override
  String get difficultyHard => 'Vaikea';

  @override
  String get speedSlow => 'Hidas';

  @override
  String get speedNormal => 'Normaali';

  @override
  String get speedFast => 'Nopea';

  @override
  String get heroTitle => 'Solmi kielesi!';

  @override
  String get heroSubtitle =>
      'Kuuntele syntyperäistä puhujaa ja sano se joka kerta nopeammin.';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => 'harjoiteltu';

  @override
  String get heroStatFavourites => 'suosikit';

  @override
  String get surpriseMe => 'Yllätä minut';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: '$practised / $total harjoiteltu',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => 'Suositus sinulle';

  @override
  String get recommendRevise => 'Kertaa vähiten harjoittelemasi kielenvääntäjä';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Hyvä helppo aloitukseen',
      'medium': 'Hyvä keskitason aloitukseen',
      'hard': 'Hyvä vaikea aloitukseen',
      'other': 'Hyvä aloitukseen',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Uusi helppo harjoittelemastasi kielestä: $language',
      'medium': 'Uusi keskitason harjoittelemastasi kielestä: $language',
      'hard': 'Uusi vaikea harjoittelemastasi kielestä: $language',
      'other': 'Uusi harjoittelemastasi kielestä: $language',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return 'Kokeile jotain uutta: $language';
  }

  @override
  String get searchTwistersHint => 'Hae kielenvääntäjiä';

  @override
  String get filterAll => 'Kaikki';

  @override
  String get noTwistersMatch => 'Ei osumia.';

  @override
  String get favouritesEmpty =>
      'Napauta ♡ kielenvääntäjän kohdalla, niin se tallentuu tänne.';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Harjoiteltu $count×',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · lisää pyyhkäisemällä';
  }

  @override
  String get pronunciationLabel => 'Ääntäminen';

  @override
  String get meaningLabel => 'Merkitys';

  @override
  String repeatInARow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count× putkeen',
    );
    return '$_temp0';
  }

  @override
  String get saidIt => 'Sanoin sen!';

  @override
  String get practiseFirstTry => 'Eka yritys kirjattu. Nyt nopeammin!';

  @override
  String get practiseThreeTimes => 'Kolme kertaa! Kieli alkaa lämmetä.';

  @override
  String get practiseTenTimes => 'Kymmenen kertaa. Tämä on hallussa!';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Hienoa! Harjoiteltu $count kertaa.',
      one: 'Hienoa! Harjoiteltu kerran.',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return 'Laitteessa ei ole ääntä: $locale. Lisää se järjestelmän tekstistä puheeksi -asetuksissa.';
  }

  @override
  String get settingsAppearance => 'Ulkoasu';

  @override
  String get themeSystem => 'Oletus';

  @override
  String get themeLight => 'Vaalea';

  @override
  String get themeDark => 'Tumma';

  @override
  String get settingsLanguages => 'Kielet';

  @override
  String get settingsLanguagesHelp =>
      'Valitse kielet, joita haluat opetella. Piilotetut kielet katoavat aloitusnäytöltä.';

  @override
  String get settingsPlayback => 'Toisto';

  @override
  String get settingsSpeakingSpeed => 'Puhenopeus';

  @override
  String get settingsRepeatChallenge => 'Toistohaaste';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Toistaa $count kertaa putkeen',
      one: 'Toistaa kielenvääntäjän kerran',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => 'Vähemmän toistoja';

  @override
  String get moreRepeats => 'Enemmän toistoja';

  @override
  String get settingsDisplay => 'Näyttö';

  @override
  String get showPronunciation => 'Näytä ääntäminen';

  @override
  String get showPronunciationHelp =>
      'Hindin kielenvääntäjät latinalaisin kirjaimin';

  @override
  String get showMeaning => 'Näytä merkitys';

  @override
  String get showMeaningHelp => 'Käännös englanniksi hindille ja saksalle';

  @override
  String get settingsVoices => 'Äänet';

  @override
  String get settingsVoicesHelp =>
      'Kielenvääntäjät toistetaan syntyperäisten puhujien äänityksinä. Puhelimen tekstistä puheeksi -ääntä käytetään vain, jos äänitys puuttuu. Jos kieli näkyy asentamattomana, lisää se puhelimen tekstistä puheeksi -asetuksista.';

  @override
  String get voiceInstalled => 'Asennettu';

  @override
  String get voiceNotInstalled => 'Ei asennettu';

  @override
  String get voiceUnknown => 'Tuntematon';

  @override
  String get voiceChecking => 'Tarkistetaan…';

  @override
  String voiceStatusLine(String locale, String status) {
    return '$locale · $status';
  }

  @override
  String testVoice(String language) {
    return 'Testaa ääni: $language';
  }

  @override
  String get settingsYourData => 'Tietosi';

  @override
  String get resetProgress => 'Nollaa edistyminen';

  @override
  String get resetProgressTitle => 'Nollataanko edistyminen?';

  @override
  String get resetProgressBody => 'Kaikki harjoituslaskurit nollataan.';

  @override
  String get resetProgressDone => 'Edistyminen nollattu';

  @override
  String get clearFavourites => 'Tyhjennä suosikit';

  @override
  String get clearFavouritesTitle => 'Tyhjennetäänkö suosikit?';

  @override
  String get clearFavouritesBody =>
      'Kaikki kielenvääntäjät poistetaan suosikeistasi.';

  @override
  String get clearFavouritesDone => 'Suosikit tyhjennetty';

  @override
  String get dialogCancel => 'Peruuta';

  @override
  String get dialogClear => 'Tyhjennä';

  @override
  String get settingsAbout => 'Tietoja';

  @override
  String aboutVersion(String version) {
    return 'Versio $version';
  }

  @override
  String get privacyChoices => 'Tietosuojavalinnat';

  @override
  String get privacyChoicesHelp => 'Muuta mainossuostumustasi';

  @override
  String get settingsAds => 'Mainokset';

  @override
  String get adFreeWatch => '1 tunti ilman mainoksia';

  @override
  String get adFreeWatchHelp => 'Katso yksi lyhyt video';

  @override
  String adFreeActive(String time) {
    return 'Ilman mainoksia $time asti';
  }

  @override
  String adFreeThanks(String time) {
    return 'Kiitos! Ei mainoksia $time asti.';
  }

  @override
  String get adFreeUnavailable =>
      'Videota ei ole nyt saatavilla. Yritä myöhemmin uudelleen.';
}
