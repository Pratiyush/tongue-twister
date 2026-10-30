// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'Мова застосунку';

  @override
  String get languageSystemDefault => 'Як у системі';

  @override
  String languageFollowsDevice(String language) {
    return 'Як на пристрої · $language';
  }

  @override
  String get languageSearchHint => 'Пошук мов';

  @override
  String appCredit(String name) {
    return 'Зроблено з ❤️ — $name';
  }

  @override
  String get favouritesTitle => 'Обране';

  @override
  String get settingsTitle => 'Налаштування';

  @override
  String get actionListen => 'Слухати';

  @override
  String get actionStop => 'Стоп';

  @override
  String get addToFavourites => 'Додати в обране';

  @override
  String get removeFromFavourites => 'Прибрати з обраного';

  @override
  String get languageBritishEnglish => 'Британська англійська';

  @override
  String get languageAmericanEnglish => 'Американська англійська';

  @override
  String get languageHindi => 'Гінді';

  @override
  String get languageGerman => 'Німецька';

  @override
  String get groupEnglish => 'Англійська';

  @override
  String sectionTitleNative(String native, String language) {
    return '$native · $language';
  }

  @override
  String get sectionShortUK => 'UK';

  @override
  String get sectionShortUS => 'US';

  @override
  String get sectionSubtitleUK => 'Lorries, biscuits і чашечка доброго чаю';

  @override
  String get sectionSubtitleUS => 'Бабаки, коляски й Unique New York';

  @override
  String get difficultyEasy => 'Легко';

  @override
  String get difficultyMedium => 'Середньо';

  @override
  String get difficultyHard => 'Складно';

  @override
  String get speedSlow => 'Повільно';

  @override
  String get speedNormal => 'Звичайно';

  @override
  String get speedFast => 'Швидко';

  @override
  String get heroTitle => 'Поламай язика!';

  @override
  String get heroSubtitle => 'Послухай носія мови, а потім кажи щоразу швидше.';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => 'опрацьовано';

  @override
  String get heroStatFavourites => 'обране';

  @override
  String get surpriseMe => 'Здивуй мене';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: 'Опрацьовано $practised з $total',
      many: 'Опрацьовано $practised з $total',
      few: 'Опрацьовано $practised з $total',
      one: 'Опрацьовано $practised з $total',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => 'Рекомендуємо тобі';

  @override
  String get recommendRevise => 'Час повторити: твоя найменш опрацьована';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Легка — для початку',
      'medium': 'Середня — для початку',
      'hard': 'Складна — для початку',
      'other': 'Гарна — для початку',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Нова легка, мова вже знайома: $language',
      'medium': 'Нова середня, мова вже знайома: $language',
      'hard': 'Нова складна, мова вже знайома: $language',
      'other': 'Нова, мова вже знайома: $language',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return 'Спробуй нове: $language';
  }

  @override
  String get searchTwistersHint => 'Пошук скоромовок';

  @override
  String get filterAll => 'Усі';

  @override
  String get noTwistersMatch => 'Нічого не знайдено.';

  @override
  String get favouritesEmpty =>
      'Натисни ♡ біля скоромовки, щоб зберегти її тут.';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Опрацьовано $count×',
      many: 'Опрацьовано $count×',
      few: 'Опрацьовано $count×',
      one: 'Опрацьовано $count×',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · гортай далі';
  }

  @override
  String get pronunciationLabel => 'Вимова';

  @override
  String get meaningLabel => 'Значення';

  @override
  String repeatInARow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count× поспіль',
      many: '$count× поспіль',
      few: '$count× поспіль',
      one: '$count× поспіль',
    );
    return '$_temp0';
  }

  @override
  String get saidIt => 'Сказано!';

  @override
  String get practiseFirstTry => 'Першу спробу зараховано. Тепер швидше!';

  @override
  String get practiseThreeTimes => 'Тричі! Язик уже розігрівається.';

  @override
  String get practiseTenTimes => 'Десять разів. Цю вже освоєно!';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Чудово! Опрацьовано $count рази.',
      many: 'Чудово! Опрацьовано $count разів.',
      few: 'Чудово! Опрацьовано $count рази.',
      one: 'Чудово! Опрацьовано $count раз.',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return 'На пристрої немає голосу $locale. Додай його в системних налаштуваннях синтезу мовлення.';
  }

  @override
  String get settingsAppearance => 'Оформлення';

  @override
  String get themeSystem => 'Система';

  @override
  String get themeLight => 'Світла';

  @override
  String get themeDark => 'Темна';

  @override
  String get settingsLanguages => 'Мови';

  @override
  String get settingsLanguagesHelp =>
      'Обери мови, які хочеш вивчати. Приховані мови зникнуть з головного екрана.';

  @override
  String get settingsPlayback => 'Відтворення';

  @override
  String get settingsSpeakingSpeed => 'Швидкість мовлення';

  @override
  String get settingsRepeatChallenge => 'Повтор поспіль';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Звучить $count рази поспіль',
      many: 'Звучить $count разів поспіль',
      few: 'Звучить $count рази поспіль',
      one: 'Звучить $count раз поспіль',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => 'Менше повторів';

  @override
  String get moreRepeats => 'Більше повторів';

  @override
  String get settingsDisplay => 'Відображення';

  @override
  String get showPronunciation => 'Показувати вимову';

  @override
  String get showPronunciationHelp => 'Латиниця під скоромовками гінді';

  @override
  String get showMeaning => 'Показувати значення';

  @override
  String get showMeaningHelp => 'Переклад англійською для гінді й німецької';

  @override
  String get settingsVoices => 'Голоси';

  @override
  String get settingsVoicesHelp =>
      'Скоромовки звучать у записах носіїв мови. Синтез мовлення телефона вмикається, лише якщо запису немає. Якщо мови бракує, встанови її в системних налаштуваннях (Android: Налаштування → Система → Мови → Синтез мовлення; iOS: Параметри → Доступність → Усний контент → Голоси).';

  @override
  String get voiceInstalled => 'Встановлено';

  @override
  String get voiceNotInstalled => 'Не встановлено';

  @override
  String get voiceUnknown => 'Невідомо';

  @override
  String get voiceChecking => 'Перевірка…';

  @override
  String voiceStatusLine(String locale, String status) {
    return '$locale · $status';
  }

  @override
  String testVoice(String language) {
    return 'Перевірити голос: $language';
  }

  @override
  String get settingsYourData => 'Твої дані';

  @override
  String get resetProgress => 'Скинути прогрес';

  @override
  String get resetProgressTitle => 'Скинути прогрес?';

  @override
  String get resetProgressBody => 'Усі лічильники практики обнуляться.';

  @override
  String get resetProgressDone => 'Прогрес скинуто';

  @override
  String get clearFavourites => 'Очистити обране';

  @override
  String get clearFavouritesTitle => 'Очистити обране?';

  @override
  String get clearFavouritesBody => 'Усі скоромовки буде видалено з обраного.';

  @override
  String get clearFavouritesDone => 'Обране очищено';

  @override
  String get dialogCancel => 'Скасувати';

  @override
  String get dialogClear => 'Очистити';

  @override
  String get settingsAbout => 'Про застосунок';

  @override
  String aboutVersion(String version) {
    return 'Версія $version';
  }

  @override
  String get privacyChoices => 'Конфіденційність';

  @override
  String get privacyChoicesHelp => 'Змінити згоду на рекламу';
}
