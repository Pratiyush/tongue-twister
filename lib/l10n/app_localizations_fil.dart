// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Filipino Pilipino (`fil`).
class AppLocalizationsFil extends AppLocalizations {
  AppLocalizationsFil([String locale = 'fil']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'Wika ng app';

  @override
  String get languageSystemDefault => 'Default ng system';

  @override
  String languageFollowsDevice(String language) {
    return 'Sumusunod sa device · $language';
  }

  @override
  String get languageSearchHint => 'Maghanap ng wika';

  @override
  String appCredit(String name) {
    return 'Gawa nang may ❤️ ni $name';
  }

  @override
  String get favouritesTitle => 'Mga paborito';

  @override
  String get settingsTitle => 'Mga setting';

  @override
  String get actionListen => 'Pakinggan';

  @override
  String get actionStop => 'Ihinto';

  @override
  String get addToFavourites => 'Idagdag sa mga paborito';

  @override
  String get removeFromFavourites => 'Alisin sa mga paborito';

  @override
  String get languageBritishEnglish => 'Ingles ng Britanya';

  @override
  String get languageAmericanEnglish => 'Ingles ng Amerika';

  @override
  String get languageHindi => 'Hindi';

  @override
  String get languageGerman => 'Aleman';

  @override
  String get groupEnglish => 'Ingles';

  @override
  String sectionTitleNative(String native, String language) {
    return '$native · $language';
  }

  @override
  String get sectionShortUK => 'UK';

  @override
  String get sectionShortUS => 'US';

  @override
  String get sectionSubtitleUK => 'Lorries, biscuits at tamang tasa ng tsaa';

  @override
  String get sectionSubtitleUS => 'Woodchucks, buggies at Unique New York';

  @override
  String get difficultyEasy => 'Madali';

  @override
  String get difficultyMedium => 'Katamtaman';

  @override
  String get difficultyHard => 'Mahirap';

  @override
  String get speedSlow => 'Mabagal';

  @override
  String get speedNormal => 'Normal';

  @override
  String get speedFast => 'Mabilis';

  @override
  String get heroTitle => 'Pilipitin ang dila mo!';

  @override
  String get heroSubtitle =>
      'Makinig sa katutubong boses, saka bigkasin nang pabilis nang pabilis.';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => 'nasanay';

  @override
  String get heroStatFavourites => 'paborito';

  @override
  String get surpriseMe => 'Sorpresahin ako';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: '$practised sa $total ang nasanay',
      one: '$practised sa $total ang nasanay',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => 'Rekomendado para sa iyo';

  @override
  String get recommendRevise => 'Balikan natin: ang pinakakaunting nasanay mo';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Madaling simula para sa iyo',
      'medium': 'Katamtamang simula para sa iyo',
      'hard': 'Mahirap na simula para sa iyo',
      'other': 'Magandang simula para sa iyo',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Bagong madali sa $language, wikang sinasanay mo',
      'medium': 'Bagong katamtaman sa $language, wikang sinasanay mo',
      'hard': 'Bagong mahirap sa $language, wikang sinasanay mo',
      'other': 'Bago sa $language, wikang sinasanay mo',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return 'Sumubok ng bago sa $language';
  }

  @override
  String get searchTwistersHint => 'Maghanap ng pilipit-dila';

  @override
  String get filterAll => 'Lahat';

  @override
  String get noTwistersMatch => 'Walang tumugma.';

  @override
  String get favouritesEmpty =>
      'I-tap ang ♡ sa kahit anong pilipit-dila para itabi rito.';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nasanay $count×',
      one: 'Nasanay $count×',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · mag-swipe para sa iba';
  }

  @override
  String get pronunciationLabel => 'Bigkas';

  @override
  String get meaningLabel => 'Kahulugan';

  @override
  String repeatInARow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count× tuloy-tuloy',
      one: '$count× tuloy-tuloy',
    );
    return '$_temp0';
  }

  @override
  String get saidIt => 'Nasabi ko na!';

  @override
  String get practiseFirstTry => 'Naitala ang unang subok. Bilisan mo na!';

  @override
  String get practiseThreeTimes => 'Tatlong beses! Nasasanay na ang dila mo.';

  @override
  String get practiseTenTimes => 'Sampung beses. Gamay mo na ito!';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Galing! Nasanay nang $count beses.',
      one: 'Galing! Nasanay nang $count beses.',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return 'Walang $locale na boses sa device na ito. Magdagdag sa text-to-speech settings ng system.';
  }

  @override
  String get settingsAppearance => 'Itsura';

  @override
  String get themeSystem => 'System';

  @override
  String get themeLight => 'Light';

  @override
  String get themeDark => 'Dark';

  @override
  String get settingsLanguages => 'Mga wika';

  @override
  String get settingsLanguagesHelp =>
      'Piliin ang mga wikang gusto mong matutunan. Mawawala sa home screen ang mga nakatago.';

  @override
  String get settingsPlayback => 'Playback';

  @override
  String get settingsSpeakingSpeed => 'Bilis ng pagsasalita';

  @override
  String get settingsRepeatChallenge => 'Hamon sa pag-ulit';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Pinapatugtog nang $count beses nang sunod-sunod',
      one: 'Pinapatugtog nang isang beses',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => 'Bawasan ang ulit';

  @override
  String get moreRepeats => 'Dagdagan ang ulit';

  @override
  String get settingsDisplay => 'Display';

  @override
  String get showPronunciation => 'Ipakita ang bigkas';

  @override
  String get showPronunciationHelp => 'Romanisadong teksto sa ilalim ng Hindi';

  @override
  String get showMeaning => 'Ipakita ang kahulugan';

  @override
  String get showMeaningHelp => 'Salin sa Ingles para sa Hindi at Aleman';

  @override
  String get settingsVoices => 'Mga boses';

  @override
  String get settingsVoicesHelp =>
      'Mga recording ng katutubong nagsasalita ang pinapatugtog. Ang text-to-speech na boses ng phone mo ay ginagamit lang kapag walang recording. Kung may wikang hindi naka-install, idagdag ito sa text-to-speech settings ng phone mo.';

  @override
  String get voiceInstalled => 'Naka-install';

  @override
  String get voiceNotInstalled => 'Hindi naka-install';

  @override
  String get voiceUnknown => 'Hindi alam';

  @override
  String get voiceChecking => 'Sinusuri…';

  @override
  String voiceStatusLine(String locale, String status) {
    return '$locale · $status';
  }

  @override
  String testVoice(String language) {
    return 'Subukan ang boses ($language)';
  }

  @override
  String get settingsYourData => 'Data mo';

  @override
  String get resetProgress => 'I-reset ang progreso';

  @override
  String get resetProgressTitle => 'I-reset ang progreso?';

  @override
  String get resetProgressBody =>
      'Babalik sa zero ang lahat ng bilang ng pagsasanay.';

  @override
  String get resetProgressDone => 'Na-reset ang progreso';

  @override
  String get clearFavourites => 'I-clear ang mga paborito';

  @override
  String get clearFavouritesTitle => 'I-clear ang mga paborito?';

  @override
  String get clearFavouritesBody =>
      'Aalisin ang lahat ng pilipit-dila sa mga paborito mo.';

  @override
  String get clearFavouritesDone => 'Na-clear ang mga paborito';

  @override
  String get dialogCancel => 'Kanselahin';

  @override
  String get dialogClear => 'I-clear';

  @override
  String get settingsAbout => 'Tungkol';

  @override
  String aboutVersion(String version) {
    return 'Bersyon $version';
  }

  @override
  String get privacyChoices => 'Mga pagpipilian sa privacy';

  @override
  String get privacyChoicesHelp => 'Baguhin ang pahintulot sa ads';

  @override
  String get settingsAds => 'Ads';

  @override
  String get adFreeWatch => '1 oras na walang ads';

  @override
  String get adFreeWatchHelp => 'Manood ng isang maikling video';

  @override
  String adFreeActive(String time) {
    return 'Walang ads hanggang $time';
  }

  @override
  String adFreeThanks(String time) {
    return 'Salamat! Walang ads hanggang $time.';
  }

  @override
  String get adFreeUnavailable => 'Walang video ngayon. Subukan ulit mamaya.';
}
