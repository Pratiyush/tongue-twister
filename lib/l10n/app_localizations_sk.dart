// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class AppLocalizationsSk extends AppLocalizations {
  AppLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'Jazyk aplikácie';

  @override
  String get languageSystemDefault => 'Podľa systému';

  @override
  String languageFollowsDevice(String language) {
    return 'Podľa zariadenia · $language';
  }

  @override
  String get languageSearchHint => 'Hľadať jazyky';

  @override
  String appCredit(String name) {
    return 'Vytvorené s ❤️ – $name';
  }

  @override
  String get favouritesTitle => 'Obľúbené';

  @override
  String get settingsTitle => 'Nastavenia';

  @override
  String get actionListen => 'Vypočuť';

  @override
  String get actionStop => 'Zastaviť';

  @override
  String get addToFavourites => 'Pridať do obľúbených';

  @override
  String get removeFromFavourites => 'Odstrániť z obľúbených';

  @override
  String get languageBritishEnglish => 'Britská angličtina';

  @override
  String get languageAmericanEnglish => 'Americká angličtina';

  @override
  String get languageHindi => 'Hindčina';

  @override
  String get languageGerman => 'Nemčina';

  @override
  String get groupEnglish => 'Angličtina';

  @override
  String sectionTitleNative(String native, String language) {
    return '$native · $language';
  }

  @override
  String get sectionShortUK => 'UK';

  @override
  String get sectionShortUS => 'US';

  @override
  String get sectionSubtitleUK => 'Kamióny, sušienky a poriadna šálka čaju';

  @override
  String get sectionSubtitleUS => 'Svište, kočíky a Unique New York';

  @override
  String get difficultyEasy => 'Ľahké';

  @override
  String get difficultyMedium => 'Stredné';

  @override
  String get difficultyHard => 'Ťažké';

  @override
  String get speedSlow => 'Pomaly';

  @override
  String get speedNormal => 'Bežne';

  @override
  String get speedFast => 'Rýchlo';

  @override
  String get heroTitle => 'Zamotaj si jazyk!';

  @override
  String get heroSubtitle =>
      'Vypočuj si rodeného hovorcu a potom to hovor stále rýchlejšie.';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => 'precvičené';

  @override
  String get heroStatFavourites => 'obľúbené';

  @override
  String get surpriseMe => 'Prekvap ma';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: 'Precvičené $practised z $total',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => 'Odporúčané pre teba';

  @override
  String get recommendRevise =>
      'Zopakuj si: tvoj najmenej precvičený jazykolam';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Ľahký na začiatok',
      'medium': 'Stredný na začiatok',
      'hard': 'Ťažký na začiatok',
      'other': 'Dobrý na začiatok',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Nový ľahký jazykolam v jazyku, čo precvičuješ: $language',
      'medium': 'Nový stredný jazykolam v jazyku, čo precvičuješ: $language',
      'hard': 'Nový ťažký jazykolam v jazyku, čo precvičuješ: $language',
      'other': 'Nový jazykolam v jazyku, čo precvičuješ: $language',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return 'Skús niečo nové: $language';
  }

  @override
  String get searchTwistersHint => 'Hľadať jazykolamy';

  @override
  String get filterAll => 'Všetky';

  @override
  String get noTwistersMatch => 'Žiadne jazykolamy sa nenašli.';

  @override
  String get favouritesEmpty => 'Ťukni na ♡ pri jazykolame a uložíš si ho sem.';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Precvičené $count×',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · listuj ďalej';
  }

  @override
  String get pronunciationLabel => 'Výslovnosť';

  @override
  String get meaningLabel => 'Význam';

  @override
  String repeatInARow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count× za sebou',
    );
    return '$_temp0';
  }

  @override
  String get saidIt => 'Mám to!';

  @override
  String get practiseFirstTry => 'Prvý pokus zapísaný. Teraz rýchlejšie!';

  @override
  String get practiseThreeTimes => 'Trikrát! Jazyk sa ti rozohrieva.';

  @override
  String get practiseTenTimes => 'Desaťkrát. Tento už máš v malíčku!';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Super! Precvičené $count-krát.',
      one: 'Super! Precvičené raz.',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return 'V zariadení chýba hlas $locale. Pridaj ho v nastaveniach prevodu textu na reč.';
  }

  @override
  String get settingsAppearance => 'Vzhľad';

  @override
  String get themeSystem => 'Systém';

  @override
  String get themeLight => 'Svetlý';

  @override
  String get themeDark => 'Tmavý';

  @override
  String get settingsLanguages => 'Jazyky';

  @override
  String get settingsLanguagesHelp =>
      'Vyber jazyky, ktoré sa chceš učiť. Skryté jazyky zmiznú z domovskej obrazovky.';

  @override
  String get settingsPlayback => 'Prehrávanie';

  @override
  String get settingsSpeakingSpeed => 'Rýchlosť reči';

  @override
  String get settingsRepeatChallenge => 'Výzva opakovania';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Prehrá ho $count× za sebou',
      one: 'Prehrá jazykolam raz',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => 'Menej opakovaní';

  @override
  String get moreRepeats => 'Viac opakovaní';

  @override
  String get settingsDisplay => 'Zobrazenie';

  @override
  String get showPronunciation => 'Zobraziť výslovnosť';

  @override
  String get showPronunciationHelp =>
      'Prepis latinkou pod jazykolamami v hindčine';

  @override
  String get showMeaning => 'Zobraziť význam';

  @override
  String get showMeaningHelp => 'Anglický preklad pre hindčinu a nemčinu';

  @override
  String get settingsVoices => 'Hlasy';

  @override
  String get settingsVoicesHelp =>
      'Jazykolamy prehrávame z nahrávok rodených hovorcov. Hlas prevodu textu na reč v telefóne sa použije, len keď nahrávka chýba. Ak jazyk nie je nainštalovaný, pridaj ho v nastaveniach prevodu textu na reč v telefóne.';

  @override
  String get voiceInstalled => 'Nainštalovaný';

  @override
  String get voiceNotInstalled => 'Nenainštalovaný';

  @override
  String get voiceUnknown => 'Neznámy';

  @override
  String get voiceChecking => 'Kontrola…';

  @override
  String voiceStatusLine(String locale, String status) {
    return '$locale · $status';
  }

  @override
  String testVoice(String language) {
    return 'Otestovať hlas: $language';
  }

  @override
  String get settingsYourData => 'Tvoje údaje';

  @override
  String get resetProgress => 'Vynulovať pokrok';

  @override
  String get resetProgressTitle => 'Vynulovať pokrok?';

  @override
  String get resetProgressBody => 'Všetky počítadlá precvičovania sa vynulujú.';

  @override
  String get resetProgressDone => 'Pokrok vynulovaný';

  @override
  String get clearFavourites => 'Vymazať obľúbené';

  @override
  String get clearFavouritesTitle => 'Vymazať obľúbené?';

  @override
  String get clearFavouritesBody =>
      'Všetky jazykolamy budú odstránené z obľúbených.';

  @override
  String get clearFavouritesDone => 'Obľúbené vymazané';

  @override
  String get dialogCancel => 'Zrušiť';

  @override
  String get dialogClear => 'Vymazať';

  @override
  String get settingsAbout => 'O aplikácii';

  @override
  String aboutVersion(String version) {
    return 'Verzia $version';
  }

  @override
  String get privacyChoices => 'Nastavenia súkromia';

  @override
  String get privacyChoicesHelp => 'Zmeniť súhlas s reklamami';
}
