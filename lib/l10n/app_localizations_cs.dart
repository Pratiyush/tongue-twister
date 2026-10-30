// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class AppLocalizationsCs extends AppLocalizations {
  AppLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'Jazyk aplikace';

  @override
  String get languageSystemDefault => 'Podle systému';

  @override
  String languageFollowsDevice(String language) {
    return 'Podle zařízení · $language';
  }

  @override
  String get languageSearchHint => 'Hledat jazyky';

  @override
  String appCredit(String name) {
    return 'Vytvořeno s ❤️ – $name';
  }

  @override
  String get favouritesTitle => 'Oblíbené';

  @override
  String get settingsTitle => 'Nastavení';

  @override
  String get actionListen => 'Poslechnout';

  @override
  String get actionStop => 'Zastavit';

  @override
  String get addToFavourites => 'Přidat do oblíbených';

  @override
  String get removeFromFavourites => 'Odebrat z oblíbených';

  @override
  String get languageBritishEnglish => 'Britská angličtina';

  @override
  String get languageAmericanEnglish => 'Americká angličtina';

  @override
  String get languageHindi => 'Hindština';

  @override
  String get languageGerman => 'Němčina';

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
  String get sectionSubtitleUK => 'Náklaďáky, sušenky a pořádný šálek čaje';

  @override
  String get sectionSubtitleUS => 'Svišti, kočárky a Unique New York';

  @override
  String get difficultyEasy => 'Snadné';

  @override
  String get difficultyMedium => 'Střední';

  @override
  String get difficultyHard => 'Těžké';

  @override
  String get speedSlow => 'Pomalu';

  @override
  String get speedNormal => 'Běžně';

  @override
  String get speedFast => 'Rychle';

  @override
  String get heroTitle => 'Zamotej si jazyk!';

  @override
  String get heroSubtitle =>
      'Poslechni si rodilého mluvčího a pak to říkej pořád rychleji.';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => 'procvičeno';

  @override
  String get heroStatFavourites => 'oblíbené';

  @override
  String get surpriseMe => 'Překvap mě';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: 'Procvičeno $practised z $total',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => 'Doporučeno pro tebe';

  @override
  String get recommendRevise => 'Zopakuj si: tvůj nejméně procvičený jazykolam';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Snadný na začátek',
      'medium': 'Střední na začátek',
      'hard': 'Těžký na začátek',
      'other': 'Dobrý na začátek',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Nový snadný jazykolam v jazyce, co procvičuješ: $language',
      'medium': 'Nový střední jazykolam v jazyce, co procvičuješ: $language',
      'hard': 'Nový těžký jazykolam v jazyce, co procvičuješ: $language',
      'other': 'Nový jazykolam v jazyce, co procvičuješ: $language',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return 'Zkus něco nového: $language';
  }

  @override
  String get searchTwistersHint => 'Hledat jazykolamy';

  @override
  String get filterAll => 'Vše';

  @override
  String get noTwistersMatch => 'Žádné jazykolamy nenalezeny.';

  @override
  String get favouritesEmpty => 'Klepni na ♡ u jazykolamu a uložíš si ho sem.';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Procvičeno $count×',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · listuj dál';
  }

  @override
  String get pronunciationLabel => 'Výslovnost';

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
  String get practiseFirstTry => 'První pokus zapsán. Teď rychleji!';

  @override
  String get practiseThreeTimes => 'Třikrát! Jazyk se ti rozehřívá.';

  @override
  String get practiseTenTimes => 'Desetkrát. Tenhle už máš v malíčku!';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Super! Procvičeno ${count}krát.',
      one: 'Super! Procvičeno jednou.',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return 'V zařízení chybí hlas $locale. Přidej ho v nastavení převodu textu na řeč.';
  }

  @override
  String get settingsAppearance => 'Vzhled';

  @override
  String get themeSystem => 'Systém';

  @override
  String get themeLight => 'Světlý';

  @override
  String get themeDark => 'Tmavý';

  @override
  String get settingsLanguages => 'Jazyky';

  @override
  String get settingsLanguagesHelp =>
      'Vyber jazyky, které se chceš učit. Skryté jazyky zmizí z domovské obrazovky.';

  @override
  String get settingsPlayback => 'Přehrávání';

  @override
  String get settingsSpeakingSpeed => 'Rychlost řeči';

  @override
  String get settingsRepeatChallenge => 'Opakovací výzva';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Přehraje ho $count× za sebou',
      one: 'Přehraje jazykolam jednou',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => 'Méně opakování';

  @override
  String get moreRepeats => 'Více opakování';

  @override
  String get settingsDisplay => 'Zobrazení';

  @override
  String get showPronunciation => 'Zobrazit výslovnost';

  @override
  String get showPronunciationHelp =>
      'Přepis latinkou pod jazykolamy v hindštině';

  @override
  String get showMeaning => 'Zobrazit význam';

  @override
  String get showMeaningHelp => 'Anglický překlad pro hindštinu a němčinu';

  @override
  String get settingsVoices => 'Hlasy';

  @override
  String get settingsVoicesHelp =>
      'Jazykolamy přehráváme z nahrávek rodilých mluvčích. Hlas převodu textu na řeč v telefonu se použije, jen když nahrávka chybí. Pokud jazyk není nainstalovaný, přidej ho v nastavení převodu textu na řeč v telefonu.';

  @override
  String get voiceInstalled => 'Nainstalováno';

  @override
  String get voiceNotInstalled => 'Nenainstalováno';

  @override
  String get voiceUnknown => 'Neznámé';

  @override
  String get voiceChecking => 'Kontrola…';

  @override
  String voiceStatusLine(String locale, String status) {
    return '$locale · $status';
  }

  @override
  String testVoice(String language) {
    return 'Vyzkoušet hlas: $language';
  }

  @override
  String get settingsYourData => 'Tvoje data';

  @override
  String get resetProgress => 'Vynulovat pokrok';

  @override
  String get resetProgressTitle => 'Vynulovat pokrok?';

  @override
  String get resetProgressBody => 'Všechna počítadla procvičování se vynulují.';

  @override
  String get resetProgressDone => 'Pokrok vynulován';

  @override
  String get clearFavourites => 'Vymazat oblíbené';

  @override
  String get clearFavouritesTitle => 'Vymazat oblíbené?';

  @override
  String get clearFavouritesBody =>
      'Všechny jazykolamy budou odebrány z oblíbených.';

  @override
  String get clearFavouritesDone => 'Oblíbené vymazány';

  @override
  String get dialogCancel => 'Zrušit';

  @override
  String get dialogClear => 'Vymazat';

  @override
  String get settingsAbout => 'O aplikaci';

  @override
  String aboutVersion(String version) {
    return 'Verze $version';
  }

  @override
  String get privacyChoices => 'Nastavení soukromí';

  @override
  String get privacyChoicesHelp => 'Změnit souhlas s reklamami';

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
