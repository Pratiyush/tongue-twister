// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'Appspråk';

  @override
  String get languageSystemDefault => 'Systemstandard';

  @override
  String languageFollowsDevice(String language) {
    return 'Som på din enhet · $language';
  }

  @override
  String get languageSearchHint => 'Sök språk';

  @override
  String appCredit(String name) {
    return 'Gjord med ❤️ av $name';
  }

  @override
  String get favouritesTitle => 'Favoriter';

  @override
  String get settingsTitle => 'Inställningar';

  @override
  String get actionListen => 'Lyssna';

  @override
  String get actionStop => 'Stopp';

  @override
  String get addToFavourites => 'Lägg till i favoriter';

  @override
  String get removeFromFavourites => 'Ta bort från favoriter';

  @override
  String get languageBritishEnglish => 'Brittisk engelska';

  @override
  String get languageAmericanEnglish => 'Amerikansk engelska';

  @override
  String get languageHindi => 'Hindi';

  @override
  String get languageGerman => 'Tyska';

  @override
  String get groupEnglish => 'Engelska';

  @override
  String sectionTitleNative(String native, String language) {
    return '$native · $language';
  }

  @override
  String get sectionShortUK => 'UK';

  @override
  String get sectionShortUS => 'US';

  @override
  String get sectionSubtitleUK => 'Lorries, biscuits och en riktig kopp te';

  @override
  String get sectionSubtitleUS => 'Murmeldjur, barnvagnar och Unique New York';

  @override
  String get difficultyEasy => 'Lätt';

  @override
  String get difficultyMedium => 'Medel';

  @override
  String get difficultyHard => 'Svår';

  @override
  String get speedSlow => 'Långsam';

  @override
  String get speedNormal => 'Normal';

  @override
  String get speedFast => 'Snabb';

  @override
  String get heroTitle => 'Slå knut på tungan!';

  @override
  String get heroSubtitle =>
      'Lyssna på en modersmålstalare och säg den allt snabbare.';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => 'övade';

  @override
  String get heroStatFavourites => 'favoriter';

  @override
  String get surpriseMe => 'Överraska mig';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: '$practised av $total övade',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => 'Rekommenderat för dig';

  @override
  String get recommendRevise => 'Dags att repetera: din minst övade';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'En lätt att börja med',
      'medium': 'En medelsvår att börja med',
      'hard': 'En svår att börja med',
      'other': 'En bra att börja med',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Ny och lätt – du övar ju redan $language',
      'medium': 'Ny och medelsvår – du övar ju redan $language',
      'hard': 'Ny och svår – du övar ju redan $language',
      'other': 'Ny för dig – du övar ju redan $language',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return 'Testa något nytt på $language';
  }

  @override
  String get searchTwistersHint => 'Sök tungvrickare';

  @override
  String get filterAll => 'Alla';

  @override
  String get noTwistersMatch => 'Inga träffar.';

  @override
  String get favouritesEmpty =>
      'Tryck på ♡ vid en tungvrickare för att spara den här.';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Övad $count×',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · svep för fler';
  }

  @override
  String get pronunciationLabel => 'Uttal';

  @override
  String get meaningLabel => 'Betydelse';

  @override
  String repeatInARow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count× i rad',
    );
    return '$_temp0';
  }

  @override
  String get saidIt => 'Jag sa det!';

  @override
  String get practiseFirstTry => 'Första försöket klart. Säg den snabbare nu!';

  @override
  String get practiseThreeTimes => 'Tre gånger! Tungan börjar bli varm.';

  @override
  String get practiseTenTimes => 'Tio gånger. Den här kan du nu!';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Snyggt! Övad $count gånger.',
      one: 'Snyggt! Övad en gång.',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return 'Ingen $locale-röst på enheten. Lägg till en i systemets inställningar för text till tal.';
  }

  @override
  String get settingsAppearance => 'Utseende';

  @override
  String get themeSystem => 'System';

  @override
  String get themeLight => 'Ljust';

  @override
  String get themeDark => 'Mörkt';

  @override
  String get settingsLanguages => 'Språk';

  @override
  String get settingsLanguagesHelp =>
      'Välj språken du vill lära dig. Dolda språk försvinner från startskärmen.';

  @override
  String get settingsPlayback => 'Uppspelning';

  @override
  String get settingsSpeakingSpeed => 'Taltempo';

  @override
  String get settingsRepeatChallenge => 'Upprepa i rad';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Spelar den $count gånger i rad',
      one: 'Spelar en tungvrickare en gång',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => 'Färre upprepningar';

  @override
  String get moreRepeats => 'Fler upprepningar';

  @override
  String get settingsDisplay => 'Visning';

  @override
  String get showPronunciation => 'Visa uttal';

  @override
  String get showPronunciationHelp =>
      'Latinsk text under tungvrickare på hindi';

  @override
  String get showMeaning => 'Visa betydelse';

  @override
  String get showMeaningHelp => 'Engelsk översättning för hindi och tyska';

  @override
  String get settingsVoices => 'Röster';

  @override
  String get settingsVoicesHelp =>
      'Tungvrickarna är inspelade av modersmålstalare. Telefonens text till tal-röst används bara när en inspelning saknas. Om ett språk visas som inte installerat lägger du till det i telefonens inställningar för text till tal.';

  @override
  String get voiceInstalled => 'Installerad';

  @override
  String get voiceNotInstalled => 'Inte installerad';

  @override
  String get voiceUnknown => 'Okänd';

  @override
  String get voiceChecking => 'Kontrollerar…';

  @override
  String voiceStatusLine(String locale, String status) {
    return '$locale · $status';
  }

  @override
  String testVoice(String language) {
    return 'Testa röst: $language';
  }

  @override
  String get settingsYourData => 'Dina data';

  @override
  String get resetProgress => 'Nollställ övningsframsteg';

  @override
  String get resetProgressTitle => 'Nollställa framstegen?';

  @override
  String get resetProgressBody =>
      'Alla övningsräknare sätts tillbaka till noll.';

  @override
  String get resetProgressDone => 'Övningsframsteg nollställda';

  @override
  String get clearFavourites => 'Rensa favoriter';

  @override
  String get clearFavouritesTitle => 'Rensa favoriter?';

  @override
  String get clearFavouritesBody =>
      'Alla tungvrickare tas bort från dina favoriter.';

  @override
  String get clearFavouritesDone => 'Favoriter rensade';

  @override
  String get dialogCancel => 'Avbryt';

  @override
  String get dialogClear => 'Rensa';

  @override
  String get settingsAbout => 'Om';

  @override
  String aboutVersion(String version) {
    return 'Version $version';
  }

  @override
  String get privacyChoices => 'Integritetsval';

  @override
  String get privacyChoicesHelp => 'Ändra ditt annonssamtycke';

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
