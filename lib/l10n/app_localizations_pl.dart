// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'Język aplikacji';

  @override
  String get languageSystemDefault => 'Język systemu';

  @override
  String languageFollowsDevice(String language) {
    return 'Jak w urządzeniu · $language';
  }

  @override
  String get languageSearchHint => 'Szukaj języków';

  @override
  String appCredit(String name) {
    return 'Zrobione z ❤️ przez $name';
  }

  @override
  String get favouritesTitle => 'Ulubione';

  @override
  String get settingsTitle => 'Ustawienia';

  @override
  String get actionListen => 'Posłuchaj';

  @override
  String get actionStop => 'Zatrzymaj';

  @override
  String get addToFavourites => 'Dodaj do ulubionych';

  @override
  String get removeFromFavourites => 'Usuń z ulubionych';

  @override
  String get languageBritishEnglish => 'Angielski brytyjski';

  @override
  String get languageAmericanEnglish => 'Angielski amerykański';

  @override
  String get languageHindi => 'Hindi';

  @override
  String get languageGerman => 'Niemiecki';

  @override
  String get groupEnglish => 'Angielski';

  @override
  String sectionTitleNative(String native, String language) {
    return '$native · $language';
  }

  @override
  String get sectionShortUK => 'UK';

  @override
  String get sectionShortUS => 'USA';

  @override
  String get sectionSubtitleUK => 'Ciężarówki, herbatniki i porządna herbata';

  @override
  String get sectionSubtitleUS => 'Świstaki, wózki i Unique New York';

  @override
  String get difficultyEasy => 'Łatwy';

  @override
  String get difficultyMedium => 'Średni';

  @override
  String get difficultyHard => 'Trudny';

  @override
  String get speedSlow => 'Wolne';

  @override
  String get speedNormal => 'Normalne';

  @override
  String get speedFast => 'Szybkie';

  @override
  String get heroTitle => 'Połam sobie język!';

  @override
  String get heroSubtitle =>
      'Posłuchaj native speakera, a potem mów coraz szybciej.';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => 'przećwiczone';

  @override
  String get heroStatFavourites => 'ulubione';

  @override
  String get surpriseMe => 'Zaskocz mnie';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: 'Przećwiczone: $practised z $total',
      many: 'Przećwiczone: $practised z $total',
      few: 'Przećwiczone: $practised z $total',
      one: 'Przećwiczone: $practised z $total',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => 'Polecane dla ciebie';

  @override
  String get recommendRevise =>
      'Czas na powtórkę: najrzadziej ćwiczony łamaniec';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Łatwy na dobry początek',
      'medium': 'Średni na dobry początek',
      'hard': 'Trudny na dobry początek',
      'other': 'Dobry na początek',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Nowy łatwy łamaniec w ćwiczonym języku: $language',
      'medium': 'Nowy średni łamaniec w ćwiczonym języku: $language',
      'hard': 'Nowy trudny łamaniec w ćwiczonym języku: $language',
      'other': 'Nowy łamaniec w ćwiczonym języku: $language',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return 'Spróbuj czegoś nowego: $language';
  }

  @override
  String get searchTwistersHint => 'Szukaj łamańców';

  @override
  String get filterAll => 'Wszystkie';

  @override
  String get noTwistersMatch => 'Brak pasujących łamańców.';

  @override
  String get favouritesEmpty =>
      'Stuknij ♡ przy łamańcu, żeby zachować go tutaj.';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ćwiczony $count×',
      many: 'Ćwiczony $count×',
      few: 'Ćwiczony $count×',
      one: 'Ćwiczony $count×',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · przesuń dalej';
  }

  @override
  String get pronunciationLabel => 'Wymowa';

  @override
  String get meaningLabel => 'Znaczenie';

  @override
  String repeatInARow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count× z rzędu',
      many: '$count× z rzędu',
      few: '$count× z rzędu',
      one: '$count× z rzędu',
    );
    return '$_temp0';
  }

  @override
  String get saidIt => 'Powiedziane!';

  @override
  String get practiseFirstTry => 'Pierwsza próba zapisana. Teraz szybciej!';

  @override
  String get practiseThreeTimes => 'Trzy razy! Twój język się rozgrzewa.';

  @override
  String get practiseTenTimes => 'Dziesięć razy. Ten masz już opanowany!';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Super! Przećwiczony $count razy.',
      many: 'Super! Przećwiczony $count razy.',
      few: 'Super! Przećwiczony $count razy.',
      one: 'Super! Przećwiczony raz.',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return 'Brak głosu $locale na tym urządzeniu. Dodaj go w ustawieniach przetwarzania tekstu na mowę.';
  }

  @override
  String get settingsAppearance => 'Wygląd';

  @override
  String get themeSystem => 'System';

  @override
  String get themeLight => 'Jasny';

  @override
  String get themeDark => 'Ciemny';

  @override
  String get settingsLanguages => 'Języki';

  @override
  String get settingsLanguagesHelp =>
      'Wybierz języki, których chcesz się uczyć. Ukryte znikną z ekranu głównego.';

  @override
  String get settingsPlayback => 'Odtwarzanie';

  @override
  String get settingsSpeakingSpeed => 'Tempo mowy';

  @override
  String get settingsRepeatChallenge => 'Wyzwanie powtórek';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Odtwarza go $count razy z rzędu',
      many: 'Odtwarza go $count razy z rzędu',
      few: 'Odtwarza go $count razy z rzędu',
      one: 'Odtwarza łamaniec raz',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => 'Mniej powtórzeń';

  @override
  String get moreRepeats => 'Więcej powtórzeń';

  @override
  String get settingsDisplay => 'Wyświetlanie';

  @override
  String get showPronunciation => 'Pokaż wymowę';

  @override
  String get showPronunciationHelp => 'Zapis łacinką pod łamańcami w hindi';

  @override
  String get showMeaning => 'Pokaż znaczenie';

  @override
  String get showMeaningHelp => 'Tłumaczenie angielskie: hindi i niemiecki';

  @override
  String get settingsVoices => 'Głosy';

  @override
  String get settingsVoicesHelp =>
      'Łamańce odtwarzamy z nagrań native speakerów. Głos syntezatora mowy w telefonie jest używany tylko wtedy, gdy brakuje nagrania. Jeśli język nie jest zainstalowany, dodaj go w ustawieniach przetwarzania tekstu na mowę w telefonie.';

  @override
  String get voiceInstalled => 'Zainstalowany';

  @override
  String get voiceNotInstalled => 'Niezainstalowany';

  @override
  String get voiceUnknown => 'Nieznany';

  @override
  String get voiceChecking => 'Sprawdzanie…';

  @override
  String voiceStatusLine(String locale, String status) {
    return '$locale · $status';
  }

  @override
  String testVoice(String language) {
    return 'Testuj głos: $language';
  }

  @override
  String get settingsYourData => 'Twoje dane';

  @override
  String get resetProgress => 'Wyzeruj postępy';

  @override
  String get resetProgressTitle => 'Wyzerować postępy?';

  @override
  String get resetProgressBody =>
      'Wszystkie liczniki ćwiczeń zostaną wyzerowane.';

  @override
  String get resetProgressDone => 'Postępy wyzerowane';

  @override
  String get clearFavourites => 'Wyczyść ulubione';

  @override
  String get clearFavouritesTitle => 'Wyczyścić ulubione?';

  @override
  String get clearFavouritesBody =>
      'Wszystkie łamańce zostaną usunięte z ulubionych.';

  @override
  String get clearFavouritesDone => 'Ulubione wyczyszczone';

  @override
  String get dialogCancel => 'Anuluj';

  @override
  String get dialogClear => 'Wyczyść';

  @override
  String get settingsAbout => 'Informacje';

  @override
  String aboutVersion(String version) {
    return 'Wersja $version';
  }

  @override
  String get privacyChoices => 'Ustawienia prywatności';

  @override
  String get privacyChoicesHelp => 'Zmień zgodę na reklamy';

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
