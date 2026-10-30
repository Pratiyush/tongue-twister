// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bulgarian (`bg`).
class AppLocalizationsBg extends AppLocalizations {
  AppLocalizationsBg([String locale = 'bg']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'Език на приложението';

  @override
  String get languageSystemDefault => 'Като в системата';

  @override
  String languageFollowsDevice(String language) {
    return 'Като на устройството · $language';
  }

  @override
  String get languageSearchHint => 'Търси език';

  @override
  String appCredit(String name) {
    return 'Създадено с ❤️ от $name';
  }

  @override
  String get favouritesTitle => 'Любими';

  @override
  String get settingsTitle => 'Настройки';

  @override
  String get actionListen => 'Слушай';

  @override
  String get actionStop => 'Стоп';

  @override
  String get addToFavourites => 'Добави в любими';

  @override
  String get removeFromFavourites => 'Премахни от любими';

  @override
  String get languageBritishEnglish => 'Британски английски';

  @override
  String get languageAmericanEnglish => 'Американски английски';

  @override
  String get languageHindi => 'Хинди';

  @override
  String get languageGerman => 'Немски';

  @override
  String get groupEnglish => 'Английски';

  @override
  String sectionTitleNative(String native, String language) {
    return '$native · $language';
  }

  @override
  String get sectionShortUK => 'UK';

  @override
  String get sectionShortUS => 'US';

  @override
  String get sectionSubtitleUK => 'Lorries, biscuits и хубава чаша чай';

  @override
  String get sectionSubtitleUS => 'Мармоти, колички и Unique New York';

  @override
  String get difficultyEasy => 'Лесно';

  @override
  String get difficultyMedium => 'Средно';

  @override
  String get difficultyHard => 'Трудно';

  @override
  String get speedSlow => 'Бавно';

  @override
  String get speedNormal => 'Нормално';

  @override
  String get speedFast => 'Бързо';

  @override
  String get heroTitle => 'Развържи си езика!';

  @override
  String get heroSubtitle =>
      'Чуй носител на езика, после го кажи все по-бързо.';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => 'упражнени';

  @override
  String get heroStatFavourites => 'любими';

  @override
  String get surpriseMe => 'Изненадай ме';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: 'Упражнени $practised от $total',
      one: 'Упражнени $practised от $total',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => 'Препоръчано за теб';

  @override
  String get recommendRevise => 'Време за преговор: най-малко упражнената';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Лесна – добра за начало',
      'medium': 'Средна – добра за начало',
      'hard': 'Трудна – добра за начало',
      'other': 'Добра за начало',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Нова лесна – вече упражняваш: $language',
      'medium': 'Нова средна – вече упражняваш: $language',
      'hard': 'Нова трудна – вече упражняваш: $language',
      'other': 'Нова – вече упражняваш: $language',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return 'Опитай нещо ново: $language';
  }

  @override
  String get searchTwistersHint => 'Търси скоропоговорки';

  @override
  String get filterAll => 'Всички';

  @override
  String get noTwistersMatch => 'Нищо не е намерено.';

  @override
  String get favouritesEmpty =>
      'Докосни ♡ при скоропоговорка, за да я запазиш тук.';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Упражнена $count×',
      one: 'Упражнена $count×',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · плъзни за още';
  }

  @override
  String get pronunciationLabel => 'Произношение';

  @override
  String get meaningLabel => 'Значение';

  @override
  String repeatInARow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count× подред',
      one: '$count× подред',
    );
    return '$_temp0';
  }

  @override
  String get saidIt => 'Казах я!';

  @override
  String get practiseFirstTry => 'Първият опит е записан. Сега по-бързо!';

  @override
  String get practiseThreeTimes => 'Три пъти! Езикът ти загрява.';

  @override
  String get practiseTenTimes => 'Десет пъти. Тази вече я владееш!';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Браво! Упражнена $count пъти.',
      one: 'Браво! Упражнена $count път.',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return 'Няма глас за $locale на това устройство. Добави такъв в системните настройки за синтез на реч.';
  }

  @override
  String get settingsAppearance => 'Облик';

  @override
  String get themeSystem => 'Система';

  @override
  String get themeLight => 'Светла';

  @override
  String get themeDark => 'Тъмна';

  @override
  String get settingsLanguages => 'Езици';

  @override
  String get settingsLanguagesHelp =>
      'Избери езиците, които искаш да учиш. Скритите езици изчезват от началния екран.';

  @override
  String get settingsPlayback => 'Възпроизвеждане';

  @override
  String get settingsSpeakingSpeed => 'Скорост на говора';

  @override
  String get settingsRepeatChallenge => 'Повторение подред';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Пуска скоропоговорка $count пъти подред',
      one: 'Пуска скоропоговорка $count път',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => 'По-малко повторения';

  @override
  String get moreRepeats => 'Повече повторения';

  @override
  String get settingsDisplay => 'Показване';

  @override
  String get showPronunciation => 'Покажи произношението';

  @override
  String get showPronunciationHelp => 'Латиница под скоропоговорките на хинди';

  @override
  String get showMeaning => 'Покажи значението';

  @override
  String get showMeaningHelp => 'Превод на английски за хинди и немски';

  @override
  String get settingsVoices => 'Гласове';

  @override
  String get settingsVoicesHelp =>
      'Скоропоговорките са записи на носители на езика. Гласът за синтез на реч на телефона се ползва само когато липсва запис. Ако липсва език, инсталирай го в системните настройки (Android: Настройки → Система → Езици → Синтез на реч; iOS: Настройки → Достъпност → Изговорено съдържание → Гласове).';

  @override
  String get voiceInstalled => 'Инсталиран';

  @override
  String get voiceNotInstalled => 'Не е инсталиран';

  @override
  String get voiceUnknown => 'Неизвестно';

  @override
  String get voiceChecking => 'Проверка…';

  @override
  String voiceStatusLine(String locale, String status) {
    return '$locale · $status';
  }

  @override
  String testVoice(String language) {
    return 'Тествай гласа: $language';
  }

  @override
  String get settingsYourData => 'Твоите данни';

  @override
  String get resetProgress => 'Нулирай напредъка';

  @override
  String get resetProgressTitle => 'Нулиране на напредъка?';

  @override
  String get resetProgressBody =>
      'Всички броячи на упражненията ще се върнат на нула.';

  @override
  String get resetProgressDone => 'Напредъкът е нулиран';

  @override
  String get clearFavourites => 'Изчисти любимите';

  @override
  String get clearFavouritesTitle => 'Изчистване на любимите?';

  @override
  String get clearFavouritesBody =>
      'Всички скоропоговорки ще бъдат премахнати от любими.';

  @override
  String get clearFavouritesDone => 'Любимите са изчистени';

  @override
  String get dialogCancel => 'Отказ';

  @override
  String get dialogClear => 'Изчисти';

  @override
  String get settingsAbout => 'Информация';

  @override
  String aboutVersion(String version) {
    return 'Версия $version';
  }

  @override
  String get privacyChoices => 'Поверителност';

  @override
  String get privacyChoicesHelp => 'Промени съгласието за реклами';
}
