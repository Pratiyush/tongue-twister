// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'Limba aplicației';

  @override
  String get languageSystemDefault => 'Setarea sistemului';

  @override
  String languageFollowsDevice(String language) {
    return 'Ca pe dispozitiv · $language';
  }

  @override
  String get languageSearchHint => 'Caută limbi';

  @override
  String appCredit(String name) {
    return 'Făcut cu ❤️ de $name';
  }

  @override
  String get favouritesTitle => 'Favorite';

  @override
  String get settingsTitle => 'Setări';

  @override
  String get actionListen => 'Ascultă';

  @override
  String get actionStop => 'Stop';

  @override
  String get addToFavourites => 'Adaugă la favorite';

  @override
  String get removeFromFavourites => 'Elimină din favorite';

  @override
  String get languageBritishEnglish => 'Engleză britanică';

  @override
  String get languageAmericanEnglish => 'Engleză americană';

  @override
  String get languageHindi => 'Hindi';

  @override
  String get languageGerman => 'Germană';

  @override
  String get groupEnglish => 'Engleză';

  @override
  String sectionTitleNative(String native, String language) {
    return '$native · $language';
  }

  @override
  String get sectionShortUK => 'UK';

  @override
  String get sectionShortUS => 'US';

  @override
  String get sectionSubtitleUK => 'Lorries, biscuits și un ceai ca lumea';

  @override
  String get sectionSubtitleUS => 'Marmote, cărucioare și Unique New York';

  @override
  String get difficultyEasy => 'Ușor';

  @override
  String get difficultyMedium => 'Mediu';

  @override
  String get difficultyHard => 'Greu';

  @override
  String get speedSlow => 'Lent';

  @override
  String get speedNormal => 'Normal';

  @override
  String get speedFast => 'Rapid';

  @override
  String get heroTitle => 'Încurcă-ți limba!';

  @override
  String get heroSubtitle =>
      'Ascultă o voce nativă, apoi spune-o tot mai repede.';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => 'exersate';

  @override
  String get heroStatFavourites => 'favorite';

  @override
  String get surpriseMe => 'Surprinde-mă';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: '$practised din $total exersate',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => 'Recomandat pentru tine';

  @override
  String get recommendRevise => 'E timpul să repeți: cea mai puțin exersată';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Una ușoară pentru început',
      'medium': 'Una medie pentru început',
      'hard': 'Una grea pentru început',
      'other': 'Una bună pentru început',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Nouă și ușoară, limbă deja exersată: $language',
      'medium': 'Nouă și medie, limbă deja exersată: $language',
      'hard': 'Nouă și grea, limbă deja exersată: $language',
      'other': 'Nouă, limbă deja exersată: $language',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return 'Încearcă ceva nou: $language';
  }

  @override
  String get searchTwistersHint => 'Caută frământări de limbă';

  @override
  String get filterAll => 'Toate';

  @override
  String get noTwistersMatch => 'Nicio frământare de limbă găsită.';

  @override
  String get favouritesEmpty =>
      'Atinge ♡ la o frământare de limbă ca s-o păstrezi aici.';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Exersată $count×',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · glisează mai departe';
  }

  @override
  String get pronunciationLabel => 'Pronunție';

  @override
  String get meaningLabel => 'Sens';

  @override
  String repeatInARow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count× la rând',
    );
    return '$_temp0';
  }

  @override
  String get saidIt => 'Am zis-o!';

  @override
  String get practiseFirstTry => 'Prima încercare notată. Acum mai repede!';

  @override
  String get practiseThreeTimes => 'De trei ori! Limba ți se încălzește.';

  @override
  String get practiseTenTimes => 'De zece ori. Pe asta ai stăpânit-o!';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Super! Exersată de $count de ori.',
      few: 'Super! Exersată de $count ori.',
      one: 'Super! Exersată o dată.',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return 'Nu există voce $locale pe dispozitiv. Adaug-o din setările text în vorbire ale sistemului.';
  }

  @override
  String get settingsAppearance => 'Aspect';

  @override
  String get themeSystem => 'Sistem';

  @override
  String get themeLight => 'Deschis';

  @override
  String get themeDark => 'Închis';

  @override
  String get settingsLanguages => 'Limbi';

  @override
  String get settingsLanguagesHelp =>
      'Alege limbile pe care vrei să le înveți. Limbile ascunse dispar din ecranul principal.';

  @override
  String get settingsPlayback => 'Redare';

  @override
  String get settingsSpeakingSpeed => 'Viteza vorbirii';

  @override
  String get settingsRepeatChallenge => 'Provocare de repetare';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'O redă de $count de ori la rând',
      few: 'O redă de $count ori la rând',
      one: 'Redă frământarea de limbă o dată',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => 'Mai puține repetări';

  @override
  String get moreRepeats => 'Mai multe repetări';

  @override
  String get settingsDisplay => 'Afișare';

  @override
  String get showPronunciation => 'Arată pronunția';

  @override
  String get showPronunciationHelp =>
      'Transcriere sub frământările de limbă hindi';

  @override
  String get showMeaning => 'Arată sensul';

  @override
  String get showMeaningHelp => 'Traducere în engleză pentru hindi și germană';

  @override
  String get settingsVoices => 'Voci';

  @override
  String get settingsVoicesHelp =>
      'Frământările de limbă se redau din înregistrări ale vorbitorilor nativi. Vocea sintetică a telefonului e folosită doar când lipsește o înregistrare. Dacă o limbă apare ca neinstalată, adaug-o din setările text în vorbire ale telefonului.';

  @override
  String get voiceInstalled => 'Instalată';

  @override
  String get voiceNotInstalled => 'Neinstalată';

  @override
  String get voiceUnknown => 'Necunoscută';

  @override
  String get voiceChecking => 'Se verifică…';

  @override
  String voiceStatusLine(String locale, String status) {
    return '$locale · $status';
  }

  @override
  String testVoice(String language) {
    return 'Testează vocea: $language';
  }

  @override
  String get settingsYourData => 'Datele tale';

  @override
  String get resetProgress => 'Resetează progresul';

  @override
  String get resetProgressTitle => 'Resetezi progresul?';

  @override
  String get resetProgressBody =>
      'Toate contoarele de exersare vor reveni la zero.';

  @override
  String get resetProgressDone => 'Progres resetat';

  @override
  String get clearFavourites => 'Golește favoritele';

  @override
  String get clearFavouritesTitle => 'Golești favoritele?';

  @override
  String get clearFavouritesBody =>
      'Toate frământările de limbă vor fi eliminate din favorite.';

  @override
  String get clearFavouritesDone => 'Favorite golite';

  @override
  String get dialogCancel => 'Anulează';

  @override
  String get dialogClear => 'Șterge';

  @override
  String get settingsAbout => 'Despre';

  @override
  String aboutVersion(String version) {
    return 'Versiunea $version';
  }

  @override
  String get privacyChoices => 'Opțiuni de confidențialitate';

  @override
  String get privacyChoicesHelp => 'Schimbă acordul pentru reclame';

  @override
  String get settingsAds => 'Reclame';

  @override
  String get adFreeWatch => '1 oră fără reclame';

  @override
  String get adFreeWatchHelp => 'Urmărește un videoclip scurt';

  @override
  String adFreeActive(String time) {
    return 'Fără reclame până la $time';
  }

  @override
  String adFreeThanks(String time) {
    return 'Mersi! Fără reclame până la $time.';
  }

  @override
  String get adFreeUnavailable =>
      'Niciun videoclip disponibil acum. Încearcă mai târziu.';
}
