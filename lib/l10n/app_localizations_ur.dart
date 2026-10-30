// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'ایپ کی زبان';

  @override
  String get languageSystemDefault => 'سسٹم ڈیفالٹ';

  @override
  String languageFollowsDevice(String language) {
    return 'آپ کے آلے کے مطابق · $language';
  }

  @override
  String get languageSearchHint => 'زبانیں تلاش کریں';

  @override
  String appCredit(String name) {
    return '$name نے ❤️ سے بنایا';
  }

  @override
  String get favouritesTitle => 'پسندیدہ';

  @override
  String get settingsTitle => 'ترتیبات';

  @override
  String get actionListen => 'سنیں';

  @override
  String get actionStop => 'روکیں';

  @override
  String get addToFavourites => 'پسندیدہ میں شامل کریں';

  @override
  String get removeFromFavourites => 'پسندیدہ سے ہٹائیں';

  @override
  String get languageBritishEnglish => 'برطانوی انگریزی';

  @override
  String get languageAmericanEnglish => 'امریکی انگریزی';

  @override
  String get languageHindi => 'ہندی';

  @override
  String get languageGerman => 'جرمن';

  @override
  String get groupEnglish => 'انگریزی';

  @override
  String sectionTitleNative(String native, String language) {
    return '$native · $language';
  }

  @override
  String get sectionShortUK => 'UK';

  @override
  String get sectionShortUS => 'US';

  @override
  String get sectionSubtitleUK => 'Lorries، biscuits اور چائے کا ایک اچھا کپ';

  @override
  String get sectionSubtitleUS => 'مارموٹ، بگیاں اور Unique New York';

  @override
  String get difficultyEasy => 'آسان';

  @override
  String get difficultyMedium => 'درمیانہ';

  @override
  String get difficultyHard => 'مشکل';

  @override
  String get speedSlow => 'آہستہ';

  @override
  String get speedNormal => 'نارمل';

  @override
  String get speedFast => 'تیز';

  @override
  String get heroTitle => 'زبان کو الجھائیں!';

  @override
  String get heroSubtitle =>
      'اہلِ زبان کی آواز سنیں، پھر ہر بار اسے پہلے سے تیز بولیں۔';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => 'مشق شدہ';

  @override
  String get heroStatFavourites => 'پسندیدہ';

  @override
  String get surpriseMe => 'مجھے حیران کریں';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: '$total میں سے $practised کی مشق',
      one: '$total میں سے $practised کی مشق',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => 'آپ کے لیے تجویز';

  @override
  String get recommendRevise =>
      'دہرانے کا وقت: آپ کا سب سے کم مشق کیا ٹنگ ٹوئسٹر';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'شروع کے لیے ایک اچھا آسان ٹنگ ٹوئسٹر',
      'medium': 'شروع کے لیے ایک اچھا درمیانہ ٹنگ ٹوئسٹر',
      'hard': 'شروع کے لیے ایک اچھا مشکل ٹنگ ٹوئسٹر',
      'other': 'شروع کے لیے ایک اچھا ٹنگ ٹوئسٹر',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': '$language میں نیا آسان ٹنگ ٹوئسٹر، جس زبان کی آپ مشق کرتے ہیں',
      'medium':
          '$language میں نیا درمیانہ ٹنگ ٹوئسٹر، جس زبان کی آپ مشق کرتے ہیں',
      'hard': '$language میں نیا مشکل ٹنگ ٹوئسٹر، جس زبان کی آپ مشق کرتے ہیں',
      'other': '$language میں نیا ٹنگ ٹوئسٹر، جس زبان کی آپ مشق کرتے ہیں',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return '$language میں کچھ نیا آزمائیں';
  }

  @override
  String get searchTwistersHint => 'ٹنگ ٹوئسٹر تلاش کریں';

  @override
  String get filterAll => 'سب';

  @override
  String get noTwistersMatch => 'کوئی ٹنگ ٹوئسٹر نہیں ملا۔';

  @override
  String get favouritesEmpty =>
      'کسی بھی ٹنگ ٹوئسٹر پر ♡ دبائیں تاکہ وہ یہاں محفوظ ہو جائے۔';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count× مشق',
      one: '$count× مشق',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · مزید کے لیے سوائپ کریں';
  }

  @override
  String get pronunciationLabel => 'تلفظ';

  @override
  String get meaningLabel => 'مطلب';

  @override
  String repeatInARow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'لگاتار $count×',
      one: 'لگاتار $count×',
    );
    return '$_temp0';
  }

  @override
  String get saidIt => 'میں نے بول دیا!';

  @override
  String get practiseFirstTry => 'پہلی کوشش درج ہو گئی۔ اب تیز بولیں!';

  @override
  String get practiseThreeTimes => 'تین بار! آپ کی زبان گرم ہو رہی ہے۔';

  @override
  String get practiseTenTimes => 'دس بار۔ آپ نے یہ والا سیکھ لیا!';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'شاباش! $count بار مشق ہو گئی۔',
      one: 'شاباش! ایک بار مشق ہو گئی۔',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return 'اس آلے پر $locale آواز نہیں ہے۔ سسٹم کی ٹیکسٹ ٹو اسپیچ ترتیبات میں ایک شامل کریں۔';
  }

  @override
  String get settingsAppearance => 'ظاہری شکل';

  @override
  String get themeSystem => 'سسٹم';

  @override
  String get themeLight => 'لائٹ';

  @override
  String get themeDark => 'ڈارک';

  @override
  String get settingsLanguages => 'زبانیں';

  @override
  String get settingsLanguagesHelp =>
      'وہ زبانیں چنیں جو آپ سیکھنا چاہتے ہیں۔ چھپی ہوئی زبانیں ہوم اسکرین سے ہٹ جاتی ہیں۔';

  @override
  String get settingsPlayback => 'پلے بیک';

  @override
  String get settingsSpeakingSpeed => 'بولنے کی رفتار';

  @override
  String get settingsRepeatChallenge => 'دہرانے کا چیلنج';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ٹنگ ٹوئسٹر لگاتار $count بار چلتا ہے',
      one: 'ٹنگ ٹوئسٹر ایک بار چلتا ہے',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => 'کم دہرائیں';

  @override
  String get moreRepeats => 'زیادہ دہرائیں';

  @override
  String get settingsDisplay => 'ڈسپلے';

  @override
  String get showPronunciation => 'تلفظ دکھائیں';

  @override
  String get showPronunciationHelp => 'ہندی ٹنگ ٹوئسٹرز کے نیچے رومن متن';

  @override
  String get showMeaning => 'مطلب دکھائیں';

  @override
  String get showMeaningHelp => 'ہندی اور جرمن کا انگریزی ترجمہ';

  @override
  String get settingsVoices => 'آوازیں';

  @override
  String get settingsVoicesHelp =>
      'ٹنگ ٹوئسٹر اہلِ زبان کی ریکارڈنگز میں چلتے ہیں۔ فون کی ٹیکسٹ ٹو اسپیچ آواز صرف تب استعمال ہوتی ہے جب ریکارڈنگ نہ ہو۔ اگر کوئی زبان \"انسٹال نہیں\" دکھائے تو اسے اپنے فون کی ٹیکسٹ ٹو اسپیچ ترتیبات میں شامل کریں۔';

  @override
  String get voiceInstalled => 'انسٹال ہے';

  @override
  String get voiceNotInstalled => 'انسٹال نہیں';

  @override
  String get voiceUnknown => 'نامعلوم';

  @override
  String get voiceChecking => 'جانچ ہو رہی ہے…';

  @override
  String voiceStatusLine(String locale, String status) {
    return '$locale · $status';
  }

  @override
  String testVoice(String language) {
    return 'آواز آزمائیں: $language';
  }

  @override
  String get settingsYourData => 'آپ کا ڈیٹا';

  @override
  String get resetProgress => 'مشق کی پیش رفت ری سیٹ کریں';

  @override
  String get resetProgressTitle => 'پیش رفت ری سیٹ کریں؟';

  @override
  String get resetProgressBody => 'مشق کی تمام گنتیاں صفر ہو جائیں گی۔';

  @override
  String get resetProgressDone => 'مشق کی پیش رفت ری سیٹ ہو گئی';

  @override
  String get clearFavourites => 'پسندیدہ صاف کریں';

  @override
  String get clearFavouritesTitle => 'پسندیدہ صاف کریں؟';

  @override
  String get clearFavouritesBody =>
      'تمام ٹنگ ٹوئسٹر آپ کے پسندیدہ سے ہٹا دیے جائیں گے۔';

  @override
  String get clearFavouritesDone => 'پسندیدہ صاف ہو گئے';

  @override
  String get dialogCancel => 'منسوخ';

  @override
  String get dialogClear => 'صاف کریں';

  @override
  String get settingsAbout => 'ایپ کے بارے میں';

  @override
  String aboutVersion(String version) {
    return 'ورژن $version';
  }

  @override
  String get privacyChoices => 'رازداری کے انتخاب';

  @override
  String get privacyChoicesHelp => 'اشتہارات کی رضامندی تبدیل کریں';

  @override
  String get settingsAds => 'اشتہارات';

  @override
  String get adFreeWatch => '24 گھنٹے اشتہارات کے بغیر';

  @override
  String get adFreeWatchHelp => 'ایک مختصر ویڈیو دیکھیں';

  @override
  String adFreeActive(String time) {
    return '$time تک کوئی اشتہار نہیں';
  }

  @override
  String adFreeThanks(String time) {
    return 'شکریہ! $time تک کوئی اشتہار نہیں۔';
  }

  @override
  String get adFreeUnavailable =>
      'ابھی کوئی ویڈیو دستیاب نہیں۔ بعد میں دوبارہ کوشش کریں۔';
}
