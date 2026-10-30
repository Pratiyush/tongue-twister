// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swahili (`sw`).
class AppLocalizationsSw extends AppLocalizations {
  AppLocalizationsSw([String locale = 'sw']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'Lugha ya programu';

  @override
  String get languageSystemDefault => 'Chaguo-msingi';

  @override
  String languageFollowsDevice(String language) {
    return 'Inafuata kifaa chako · $language';
  }

  @override
  String get languageSearchHint => 'Tafuta lugha';

  @override
  String appCredit(String name) {
    return 'Imetengenezwa kwa ❤️ na $name';
  }

  @override
  String get favouritesTitle => 'Vipendwa';

  @override
  String get settingsTitle => 'Mipangilio';

  @override
  String get actionListen => 'Sikiliza';

  @override
  String get actionStop => 'Simamisha';

  @override
  String get addToFavourites => 'Ongeza kwenye vipendwa';

  @override
  String get removeFromFavourites => 'Ondoa kwenye vipendwa';

  @override
  String get languageBritishEnglish => 'Kiingereza (UK)';

  @override
  String get languageAmericanEnglish => 'Kiingereza (US)';

  @override
  String get languageHindi => 'Kihindi';

  @override
  String get languageGerman => 'Kijerumani';

  @override
  String get groupEnglish => 'Kiingereza';

  @override
  String sectionTitleNative(String native, String language) {
    return '$native · $language';
  }

  @override
  String get sectionShortUK => 'UK';

  @override
  String get sectionShortUS => 'US';

  @override
  String get sectionSubtitleUK =>
      'Lorries, biscuits na kikombe kizuri cha chai';

  @override
  String get sectionSubtitleUS => 'Woodchucks, buggies na Unique New York';

  @override
  String get difficultyEasy => 'Rahisi';

  @override
  String get difficultyMedium => 'Wastani';

  @override
  String get difficultyHard => 'Ngumu';

  @override
  String get speedSlow => 'Polepole';

  @override
  String get speedNormal => 'Kawaida';

  @override
  String get speedFast => 'Haraka';

  @override
  String get heroTitle => 'Pindisha ulimi wako!';

  @override
  String get heroSubtitle =>
      'Sikiliza sauti ya mzawa, kisha kitamke haraka zaidi kila mara.';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => 'umefanya';

  @override
  String get heroStatFavourites => 'vipendwa';

  @override
  String get surpriseMe => 'Nishangaze';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: '$practised kati ya $total umefanya',
      one: '$practised kati ya $total umefanya',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => 'Tunakupendekezea';

  @override
  String get recommendRevise =>
      'Wakati wa kurudia: ulichofanya mara chache zaidi';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Rahisi, kizuri kuanzia',
      'medium': 'Cha wastani, kizuri kuanzia',
      'hard': 'Kigumu, kizuri kuanzia',
      'other': 'Kizuri kuanzia',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Kipya rahisi cha $language, lugha unayofanyia mazoezi',
      'medium': 'Kipya cha wastani cha $language, lugha unayofanyia mazoezi',
      'hard': 'Kipya kigumu cha $language, lugha unayofanyia mazoezi',
      'other': 'Kipya cha $language, lugha unayofanyia mazoezi',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return 'Jaribu kitu kipya cha $language';
  }

  @override
  String get searchTwistersHint => 'Tafuta vitanza ndimi';

  @override
  String get filterAll => 'Vyote';

  @override
  String get noTwistersMatch => 'Hakuna kinacholingana.';

  @override
  String get favouritesEmpty =>
      'Gusa ♡ kwenye kitanza ndimi chochote ili kukiweka hapa.';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Umefanya $count×',
      one: 'Umefanya $count×',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · telezesha kuona zaidi';
  }

  @override
  String get pronunciationLabel => 'Matamshi';

  @override
  String get meaningLabel => 'Maana';

  @override
  String repeatInARow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count× mfululizo',
      one: '$count× mfululizo',
    );
    return '$_temp0';
  }

  @override
  String get saidIt => 'Nimekisema!';

  @override
  String get practiseFirstTry =>
      'Jaribio la kwanza limerekodiwa. Sasa kiseme haraka!';

  @override
  String get practiseThreeTimes => 'Mara tatu! Ulimi wako unaanza kuchangamka.';

  @override
  String get practiseTenTimes => 'Mara kumi. Umekimudu hiki!';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Safi! Umefanya mara $count.',
      one: 'Safi! Umefanya mara moja.',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return 'Hakuna sauti ya $locale kwenye kifaa hiki. Iongeze kwenye mipangilio ya maandishi kuwa sauti.';
  }

  @override
  String get settingsAppearance => 'Mwonekano';

  @override
  String get themeSystem => 'Mfumo';

  @override
  String get themeLight => 'Mwanga';

  @override
  String get themeDark => 'Giza';

  @override
  String get settingsLanguages => 'Lugha';

  @override
  String get settingsLanguagesHelp =>
      'Chagua lugha unazotaka kujifunza. Lugha zilizofichwa hazionekani kwenye skrini kuu.';

  @override
  String get settingsPlayback => 'Uchezaji';

  @override
  String get settingsSpeakingSpeed => 'Kasi ya kuongea';

  @override
  String get settingsRepeatChallenge => 'Changamoto ya kurudia';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kinachezwa mara $count mfululizo',
      one: 'Kinachezwa mara moja',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => 'Punguza marudio';

  @override
  String get moreRepeats => 'Ongeza marudio';

  @override
  String get settingsDisplay => 'Onyesho';

  @override
  String get showPronunciation => 'Onyesha matamshi';

  @override
  String get showPronunciationHelp => 'Herufi za Kilatini chini ya Kihindi';

  @override
  String get showMeaning => 'Onyesha maana';

  @override
  String get showMeaningHelp =>
      'Tafsiri ya Kiingereza ya Kihindi na Kijerumani';

  @override
  String get settingsVoices => 'Sauti';

  @override
  String get settingsVoicesHelp =>
      'Vitanza ndimi vinachezwa kutoka kwa rekodi za wazawa. Sauti ya simu yako ya maandishi kuwa sauti hutumika tu rekodi inapokosekana. Lugha ikionyesha haijasakinishwa, iongeze kwenye mipangilio ya maandishi kuwa sauti ya simu yako.';

  @override
  String get voiceInstalled => 'Imesakinishwa';

  @override
  String get voiceNotInstalled => 'Haijasakinishwa';

  @override
  String get voiceUnknown => 'Haijulikani';

  @override
  String get voiceChecking => 'Inakagua…';

  @override
  String voiceStatusLine(String locale, String status) {
    return '$locale · $status';
  }

  @override
  String testVoice(String language) {
    return 'Jaribu sauti ya $language';
  }

  @override
  String get settingsYourData => 'Data yako';

  @override
  String get resetProgress => 'Weka upya maendeleo ya mazoezi';

  @override
  String get resetProgressTitle => 'Weka upya maendeleo?';

  @override
  String get resetProgressBody => 'Hesabu zote za mazoezi zitarudi sifuri.';

  @override
  String get resetProgressDone => 'Maendeleo yamewekwa upya';

  @override
  String get clearFavourites => 'Futa vipendwa';

  @override
  String get clearFavouritesTitle => 'Futa vipendwa?';

  @override
  String get clearFavouritesBody =>
      'Vitanza ndimi vyote vitaondolewa kwenye vipendwa vyako.';

  @override
  String get clearFavouritesDone => 'Vipendwa vimefutwa';

  @override
  String get dialogCancel => 'Ghairi';

  @override
  String get dialogClear => 'Futa';

  @override
  String get settingsAbout => 'Kuhusu';

  @override
  String aboutVersion(String version) {
    return 'Toleo $version';
  }

  @override
  String get privacyChoices => 'Chaguo za faragha';

  @override
  String get privacyChoicesHelp => 'Badilisha idhini ya matangazo';

  @override
  String get settingsAds => 'Matangazo';

  @override
  String get adFreeWatch => 'Saa 24 bila matangazo';

  @override
  String get adFreeWatchHelp => 'Tazama video moja fupi';

  @override
  String adFreeActive(String time) {
    return 'Bila matangazo hadi $time';
  }

  @override
  String adFreeThanks(String time) {
    return 'Asante! Hakuna matangazo hadi $time.';
  }

  @override
  String get adFreeUnavailable => 'Hakuna video kwa sasa. Jaribu tena baadaye.';
}
