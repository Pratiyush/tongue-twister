// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class AppLocalizationsHu extends AppLocalizations {
  AppLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'Alkalmazás nyelve';

  @override
  String get languageSystemDefault => 'Rendszer szerint';

  @override
  String languageFollowsDevice(String language) {
    return 'Az eszköz szerint · $language';
  }

  @override
  String get languageSearchHint => 'Nyelvek keresése';

  @override
  String appCredit(String name) {
    return 'Szívvel ❤️ készítette: $name';
  }

  @override
  String get favouritesTitle => 'Kedvencek';

  @override
  String get settingsTitle => 'Beállítások';

  @override
  String get actionListen => 'Meghallgatás';

  @override
  String get actionStop => 'Leállítás';

  @override
  String get addToFavourites => 'Hozzáadás a kedvencekhez';

  @override
  String get removeFromFavourites => 'Törlés a kedvencekből';

  @override
  String get languageBritishEnglish => 'Brit angol';

  @override
  String get languageAmericanEnglish => 'Amerikai angol';

  @override
  String get languageHindi => 'Hindi';

  @override
  String get languageGerman => 'Német';

  @override
  String get groupEnglish => 'Angol';

  @override
  String sectionTitleNative(String native, String language) {
    return '$native · $language';
  }

  @override
  String get sectionShortUK => 'UK';

  @override
  String get sectionShortUS => 'US';

  @override
  String get sectionSubtitleUK => 'Lorries, biscuits és egy rendes csésze tea';

  @override
  String get sectionSubtitleUS => 'Mormoták, babakocsik és Unique New York';

  @override
  String get difficultyEasy => 'Könnyű';

  @override
  String get difficultyMedium => 'Közepes';

  @override
  String get difficultyHard => 'Nehéz';

  @override
  String get speedSlow => 'Lassú';

  @override
  String get speedNormal => 'Normál';

  @override
  String get speedFast => 'Gyors';

  @override
  String get heroTitle => 'Tekerd ki a nyelved!';

  @override
  String get heroSubtitle =>
      'Hallgasd meg egy anyanyelvi beszélőtől, aztán mondd egyre gyorsabban.';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => 'gyakorolva';

  @override
  String get heroStatFavourites => 'kedvenc';

  @override
  String get surpriseMe => 'Lepj meg!';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: '$practised / $total gyakorolva',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => 'Neked ajánljuk';

  @override
  String get recommendRevise =>
      'Ideje ismételni: a legkevésbé gyakorolt nyelvtörőd';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Egy jó könnyű kezdésnek',
      'medium': 'Egy jó közepes kezdésnek',
      'hard': 'Egy jó nehéz kezdésnek',
      'other': 'Egy jó kezdésnek',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Új könnyű nyelvtörő egy általad gyakorolt nyelven: $language',
      'medium': 'Új közepes nyelvtörő egy általad gyakorolt nyelven: $language',
      'hard': 'Új nehéz nyelvtörő egy általad gyakorolt nyelven: $language',
      'other': 'Új nyelvtörő egy általad gyakorolt nyelven: $language',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return 'Próbálj ki valami újat: $language';
  }

  @override
  String get searchTwistersHint => 'Nyelvtörők keresése';

  @override
  String get filterAll => 'Mind';

  @override
  String get noTwistersMatch => 'Nincs találat.';

  @override
  String get favouritesEmpty =>
      'Koppints a ♡ ikonra egy nyelvtörőnél, és ide kerül.';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count× gyakorolva',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · lapozz tovább';
  }

  @override
  String get pronunciationLabel => 'Kiejtés';

  @override
  String get meaningLabel => 'Jelentés';

  @override
  String repeatInARow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count× egymás után',
    );
    return '$_temp0';
  }

  @override
  String get saidIt => 'Kimondtam!';

  @override
  String get practiseFirstTry => 'Első próba rögzítve. Most gyorsabban!';

  @override
  String get practiseThreeTimes => 'Háromszor! Bemelegszik a nyelved.';

  @override
  String get practiseTenTimes => 'Tízszer. Ezt már tudod!';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Szép! $count alkalommal gyakorolva.',
      one: 'Szép! Egyszer gyakorolva.',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return 'Nincs $locale hang az eszközön. Adj hozzá egyet a rendszer szövegfelolvasó beállításaiban.';
  }

  @override
  String get settingsAppearance => 'Megjelenés';

  @override
  String get themeSystem => 'Rendszer';

  @override
  String get themeLight => 'Világos';

  @override
  String get themeDark => 'Sötét';

  @override
  String get settingsLanguages => 'Nyelvek';

  @override
  String get settingsLanguagesHelp =>
      'Válaszd ki, mely nyelveket szeretnéd tanulni. A rejtett nyelvek eltűnnek a kezdőképernyőről.';

  @override
  String get settingsPlayback => 'Lejátszás';

  @override
  String get settingsSpeakingSpeed => 'Beszédtempó';

  @override
  String get settingsRepeatChallenge => 'Ismétléses kihívás';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count× játssza le egymás után',
      one: 'Egyszer játssza le a nyelvtörőt',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => 'Kevesebb ismétlés';

  @override
  String get moreRepeats => 'Több ismétlés';

  @override
  String get settingsDisplay => 'Megjelenítés';

  @override
  String get showPronunciation => 'Kiejtés mutatása';

  @override
  String get showPronunciationHelp =>
      'Latin betűs átírás a hindi nyelvtörők alatt';

  @override
  String get showMeaning => 'Jelentés mutatása';

  @override
  String get showMeaningHelp => 'Angol fordítás a hindi és német szövegekhez';

  @override
  String get settingsVoices => 'Hangok';

  @override
  String get settingsVoicesHelp =>
      'A nyelvtörőket anyanyelvi beszélők felvételéről hallod. A telefonod szövegfelolvasó hangja csak akkor szól, ha hiányzik a felvétel. Ha egy nyelv nincs telepítve, add hozzá a telefonod szövegfelolvasási beállításaiban.';

  @override
  String get voiceInstalled => 'Telepítve';

  @override
  String get voiceNotInstalled => 'Nincs telepítve';

  @override
  String get voiceUnknown => 'Ismeretlen';

  @override
  String get voiceChecking => 'Ellenőrzés…';

  @override
  String voiceStatusLine(String locale, String status) {
    return '$locale · $status';
  }

  @override
  String testVoice(String language) {
    return 'Hang tesztelése: $language';
  }

  @override
  String get settingsYourData => 'Adataid';

  @override
  String get resetProgress => 'Haladás nullázása';

  @override
  String get resetProgressTitle => 'Nullázod a haladást?';

  @override
  String get resetProgressBody => 'Minden gyakorlásszámláló nullára áll.';

  @override
  String get resetProgressDone => 'Haladás nullázva';

  @override
  String get clearFavourites => 'Kedvencek törlése';

  @override
  String get clearFavouritesTitle => 'Törlöd a kedvenceket?';

  @override
  String get clearFavouritesBody =>
      'Minden nyelvtörő kikerül a kedvenceid közül.';

  @override
  String get clearFavouritesDone => 'Kedvencek törölve';

  @override
  String get dialogCancel => 'Mégse';

  @override
  String get dialogClear => 'Törlés';

  @override
  String get settingsAbout => 'Névjegy';

  @override
  String aboutVersion(String version) {
    return 'Verzió: $version';
  }

  @override
  String get privacyChoices => 'Adatvédelmi beállítások';

  @override
  String get privacyChoicesHelp => 'Hirdetési hozzájárulás módosítása';

  @override
  String get settingsAds => 'Hirdetések';

  @override
  String get adFreeWatch => '1 óra hirdetések nélkül';

  @override
  String get adFreeWatchHelp => 'Nézz meg egy rövid videót';

  @override
  String adFreeActive(String time) {
    return 'Hirdetésmentes eddig: $time';
  }

  @override
  String adFreeThanks(String time) {
    return 'Köszi! Nincs hirdetés eddig: $time.';
  }

  @override
  String get adFreeUnavailable =>
      'Most nincs elérhető videó. Próbáld újra később.';
}
