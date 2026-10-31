// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'Язык приложения';

  @override
  String get languageSystemDefault => 'Как в системе';

  @override
  String languageFollowsDevice(String language) {
    return 'Как на устройстве · $language';
  }

  @override
  String get languageSearchHint => 'Поиск языков';

  @override
  String appCredit(String name) {
    return 'Сделано с ❤️ — $name';
  }

  @override
  String get favouritesTitle => 'Избранное';

  @override
  String get settingsTitle => 'Настройки';

  @override
  String get actionListen => 'Слушать';

  @override
  String get actionStop => 'Стоп';

  @override
  String get addToFavourites => 'В избранное';

  @override
  String get removeFromFavourites => 'Убрать из избранного';

  @override
  String get languageBritishEnglish => 'Британский английский';

  @override
  String get languageAmericanEnglish => 'Американский английский';

  @override
  String get languageHindi => 'Хинди';

  @override
  String get languageGerman => 'Немецкий';

  @override
  String get groupEnglish => 'Английский';

  @override
  String sectionTitleNative(String native, String language) {
    return '$native · $language';
  }

  @override
  String get sectionShortUK => 'UK';

  @override
  String get sectionShortUS => 'US';

  @override
  String get sectionSubtitleUK => 'Грузовики, печенье и чашечка хорошего чая';

  @override
  String get sectionSubtitleUS => 'Сурки, коляски и Unique New York';

  @override
  String get difficultyEasy => 'Легко';

  @override
  String get difficultyMedium => 'Средне';

  @override
  String get difficultyHard => 'Сложно';

  @override
  String get speedSlow => 'Медленная';

  @override
  String get speedNormal => 'Обычная';

  @override
  String get speedFast => 'Быстрая';

  @override
  String get heroTitle => 'Поломай язык!';

  @override
  String get heroSubtitle =>
      'Послушай носителя, а потом повторяй всё быстрее и быстрее.';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => 'отработано';

  @override
  String get heroStatFavourites => 'избранное';

  @override
  String get surpriseMe => 'Удиви меня';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: 'Отработано $practised из $total',
      many: 'Отработано $practised из $total',
      few: 'Отработано $practised из $total',
      one: 'Отработано $practised из $total',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => 'Рекомендуем тебе';

  @override
  String get recommendRevise =>
      'Пора повторить: эту ты отрабатываешь реже всего';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Лёгкая — для начала',
      'medium': 'Средняя — для начала',
      'hard': 'Сложная — для начала',
      'other': 'Хорошая — для начала',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Новая лёгкая — на языке, который ты учишь: $language',
      'medium': 'Новая средняя — на языке, который ты учишь: $language',
      'hard': 'Новая сложная — на языке, который ты учишь: $language',
      'other': 'Новая — на языке, который ты учишь: $language',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return 'Попробуй новое: $language';
  }

  @override
  String get searchTwistersHint => 'Поиск скороговорок';

  @override
  String get filterAll => 'Все';

  @override
  String get noTwistersMatch => 'Ничего не найдено.';

  @override
  String get favouritesEmpty =>
      'Нажми ♡ у скороговорки, чтобы сохранить её здесь.';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Отработано $count×',
      many: 'Отработано $count×',
      few: 'Отработано $count×',
      one: 'Отработано $count×',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · листай дальше';
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
      other: '$count× подряд',
      many: '$count× подряд',
      few: '$count× подряд',
      one: '$count× подряд',
    );
    return '$_temp0';
  }

  @override
  String get saidIt => 'Получилось!';

  @override
  String get practiseFirstTry => 'Первая попытка засчитана. Теперь быстрее!';

  @override
  String get practiseThreeTimes => 'Три раза! Язык уже разогревается.';

  @override
  String get practiseTenTimes => 'Десять раз. Эта уже освоена!';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Отлично! Отработано $count раза.',
      many: 'Отлично! Отработано $count раз.',
      few: 'Отлично! Отработано $count раза.',
      one: 'Отлично! Отработано $count раз.',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return 'На устройстве нет голоса $locale. Добавь его в системных настройках синтеза речи.';
  }

  @override
  String get settingsAppearance => 'Оформление';

  @override
  String get themeSystem => 'Система';

  @override
  String get themeLight => 'Светлая';

  @override
  String get themeDark => 'Тёмная';

  @override
  String get settingsLanguages => 'Языки';

  @override
  String get settingsLanguagesHelp =>
      'Выбери языки, которые хочешь учить. Скрытые языки пропадут с главного экрана.';

  @override
  String get settingsPlayback => 'Воспроизведение';

  @override
  String get settingsSpeakingSpeed => 'Скорость речи';

  @override
  String get settingsRepeatChallenge => 'Повтор подряд';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Звучит $count раза подряд',
      many: 'Звучит $count раз подряд',
      few: 'Звучит $count раза подряд',
      one: 'Звучит $count раз',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => 'Меньше повторов';

  @override
  String get moreRepeats => 'Больше повторов';

  @override
  String get settingsDisplay => 'Отображение';

  @override
  String get showPronunciation => 'Показать произношение';

  @override
  String get showPronunciationHelp => 'Латиница под скороговорками на хинди';

  @override
  String get showMeaning => 'Показать значение';

  @override
  String get showMeaningHelp => 'Перевод на английский для хинди и немецкого';

  @override
  String get settingsVoices => 'Голоса';

  @override
  String get settingsVoicesHelp =>
      'Скороговорки звучат в записи носителей языка. Синтез речи телефона используется, только если записи нет. Если язык не установлен, добавь его в настройках синтеза речи на телефоне.';

  @override
  String get voiceInstalled => 'Установлен';

  @override
  String get voiceNotInstalled => 'Не установлен';

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
    return 'Проверить голос: $language';
  }

  @override
  String get settingsYourData => 'Твои данные';

  @override
  String get resetProgress => 'Сбросить прогресс';

  @override
  String get resetProgressTitle => 'Сбросить прогресс?';

  @override
  String get resetProgressBody => 'Все счётчики практики обнулятся.';

  @override
  String get resetProgressDone => 'Прогресс сброшен';

  @override
  String get clearFavourites => 'Очистить избранное';

  @override
  String get clearFavouritesTitle => 'Очистить избранное?';

  @override
  String get clearFavouritesBody =>
      'Все скороговорки будут удалены из избранного.';

  @override
  String get clearFavouritesDone => 'Избранное очищено';

  @override
  String get dialogCancel => 'Отмена';

  @override
  String get dialogClear => 'Очистить';

  @override
  String get settingsAbout => 'О приложении';

  @override
  String aboutVersion(String version) {
    return 'Версия $version';
  }

  @override
  String get privacyChoices => 'Конфиденциальность';

  @override
  String get privacyChoicesHelp => 'Изменить согласие на рекламу';

  @override
  String get settingsAds => 'Реклама';

  @override
  String get adFreeWatch => '1 час без рекламы';

  @override
  String get adFreeWatchHelp => 'Посмотри одно короткое видео';

  @override
  String adFreeActive(String time) {
    return 'Без рекламы до $time';
  }

  @override
  String adFreeThanks(String time) {
    return 'Спасибо! Без рекламы до $time.';
  }

  @override
  String get adFreeUnavailable =>
      'Сейчас нет доступного видео. Попробуй позже.';
}
