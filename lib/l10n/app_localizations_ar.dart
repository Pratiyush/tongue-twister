// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'لغة التطبيق';

  @override
  String get languageSystemDefault => 'لغة النظام';

  @override
  String languageFollowsDevice(String language) {
    return 'حسب جهازك · $language';
  }

  @override
  String get languageSearchHint => 'ابحث عن لغة';

  @override
  String appCredit(String name) {
    return 'صُنع بـ ❤️ بواسطة $name';
  }

  @override
  String get favouritesTitle => 'المفضلة';

  @override
  String get settingsTitle => 'الإعدادات';

  @override
  String get actionListen => 'استمع';

  @override
  String get actionStop => 'إيقاف';

  @override
  String get addToFavourites => 'أضف إلى المفضلة';

  @override
  String get removeFromFavourites => 'أزل من المفضلة';

  @override
  String get languageBritishEnglish => 'الإنجليزية البريطانية';

  @override
  String get languageAmericanEnglish => 'الإنجليزية الأمريكية';

  @override
  String get languageHindi => 'الهندية';

  @override
  String get languageGerman => 'الألمانية';

  @override
  String get groupEnglish => 'الإنجليزية';

  @override
  String sectionTitleNative(String native, String language) {
    return '$native · $language';
  }

  @override
  String get sectionShortUK => 'UK';

  @override
  String get sectionShortUS => 'US';

  @override
  String get sectionSubtitleUK => 'Lorries و biscuits وكوب شاي على أصوله';

  @override
  String get sectionSubtitleUS => 'مرموط وعربات أطفال و Unique New York';

  @override
  String get difficultyEasy => 'سهل';

  @override
  String get difficultyMedium => 'متوسط';

  @override
  String get difficultyHard => 'صعب';

  @override
  String get speedSlow => 'بطيء';

  @override
  String get speedNormal => 'عادي';

  @override
  String get speedFast => 'سريع';

  @override
  String get heroTitle => 'حرّك لسانك!';

  @override
  String get heroSubtitle => 'استمع إلى صوت أصلي، ثم قلها أسرع في كل مرة.';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => 'أُنجزت';

  @override
  String get heroStatFavourites => 'مفضلة';

  @override
  String get surpriseMe => 'فاجئني';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: 'أُنجز $practised من $total',
      many: 'أُنجز $practised من $total',
      few: 'أُنجز $practised من $total',
      two: 'أُنجز $practised من $total',
      one: 'أُنجز $practised من $total',
      zero: 'أُنجز $practised من $total',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => 'مقترح لك';

  @override
  String get recommendRevise => 'وقت المراجعة: الجملة الأقل تمرينًا لديك';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'جملة سهلة جيدة للبداية',
      'medium': 'جملة متوسطة جيدة للبداية',
      'hard': 'جملة صعبة جيدة للبداية',
      'other': 'جملة جيدة للبداية',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'جملة سهلة جديدة بلغة تتمرن عليها: $language',
      'medium': 'جملة متوسطة جديدة بلغة تتمرن عليها: $language',
      'hard': 'جملة صعبة جديدة بلغة تتمرن عليها: $language',
      'other': 'جملة جديدة بلغة تتمرن عليها: $language',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return 'جرّب شيئًا جديدًا: $language';
  }

  @override
  String get searchTwistersHint => 'ابحث في الجمل';

  @override
  String get filterAll => 'الكل';

  @override
  String get noTwistersMatch => 'لا توجد نتائج.';

  @override
  String get favouritesEmpty => 'اضغط ♡ على أي جملة لحفظها هنا.';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'تمرّنت $count×',
      many: 'تمرّنت $count×',
      few: 'تمرّنت $count×',
      two: 'تمرّنت $count×',
      one: 'تمرّنت $count×',
      zero: 'تمرّنت $count×',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · اسحب للمزيد';
  }

  @override
  String get pronunciationLabel => 'النطق';

  @override
  String get meaningLabel => 'المعنى';

  @override
  String repeatInARow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count× متتالية',
      many: '$count× متتالية',
      few: '$count× متتالية',
      two: '$count× متتالية',
      one: '$count× متتالية',
      zero: '$count× متتالية',
    );
    return '$_temp0';
  }

  @override
  String get saidIt => 'قلتها!';

  @override
  String get practiseFirstTry => 'سُجّلت المحاولة الأولى. الآن قلها أسرع!';

  @override
  String get practiseThreeTimes => 'ثلاث مرات! لسانك بدأ يسخن.';

  @override
  String get practiseTenTimes => 'عشر مرات. لقد أتقنت هذه!';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'رائع! تمرّنت $count مرة.',
      many: 'رائع! تمرّنت $count مرة.',
      few: 'رائع! تمرّنت $count مرات.',
      two: 'رائع! تمرّنت مرتين.',
      one: 'رائع! تمرّنت مرة واحدة.',
      zero: 'رائع! تمرّنت $count مرة.',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return 'لا يوجد صوت $locale على هذا الجهاز. أضِفه من إعدادات تحويل النص إلى كلام في النظام.';
  }

  @override
  String get settingsAppearance => 'المظهر';

  @override
  String get themeSystem => 'النظام';

  @override
  String get themeLight => 'فاتح';

  @override
  String get themeDark => 'داكن';

  @override
  String get settingsLanguages => 'اللغات';

  @override
  String get settingsLanguagesHelp =>
      'اختر اللغات التي تريد تعلّمها. اللغات المخفية تختفي من الشاشة الرئيسية.';

  @override
  String get settingsPlayback => 'التشغيل';

  @override
  String get settingsSpeakingSpeed => 'سرعة النطق';

  @override
  String get settingsRepeatChallenge => 'تحدي التكرار';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'تشغيل الجملة $count مرة متتالية',
      many: 'تشغيل الجملة $count مرة متتالية',
      few: 'تشغيل الجملة $count مرات متتالية',
      two: 'تشغيل الجملة مرتين متتاليتين',
      one: 'تشغيل الجملة مرة واحدة',
      zero: 'تشغيل الجملة $count مرة متتالية',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => 'تكرار أقل';

  @override
  String get moreRepeats => 'تكرار أكثر';

  @override
  String get settingsDisplay => 'العرض';

  @override
  String get showPronunciation => 'إظهار النطق';

  @override
  String get showPronunciationHelp => 'نص بالحروف اللاتينية تحت الجمل الهندية';

  @override
  String get showMeaning => 'إظهار المعنى';

  @override
  String get showMeaningHelp => 'ترجمة إنجليزية للهندية والألمانية';

  @override
  String get settingsVoices => 'الأصوات';

  @override
  String get settingsVoicesHelp =>
      'تُشغَّل الجمل بتسجيلات لمتحدثين أصليين. يُستخدم صوت تحويل النص إلى كلام في هاتفك فقط عند غياب التسجيل. إذا كانت لغة ما غير موجودة، فثبّتها من إعدادات النظام (Android: الإعدادات ← النظام ← اللغات ← تحويل النص إلى كلام؛ iOS: الإعدادات ← تسهيلات الاستخدام ← المحتوى المنطوق ← الأصوات).';

  @override
  String get voiceInstalled => 'مثبّت';

  @override
  String get voiceNotInstalled => 'غير مثبّت';

  @override
  String get voiceUnknown => 'غير معروف';

  @override
  String get voiceChecking => 'جارٍ التحقق…';

  @override
  String voiceStatusLine(String locale, String status) {
    return '$locale · $status';
  }

  @override
  String testVoice(String language) {
    return 'اختبر الصوت: $language';
  }

  @override
  String get settingsYourData => 'بياناتك';

  @override
  String get resetProgress => 'إعادة ضبط التقدم';

  @override
  String get resetProgressTitle => 'إعادة ضبط التقدم؟';

  @override
  String get resetProgressBody => 'ستُعاد كل عدادات التمرين إلى الصفر.';

  @override
  String get resetProgressDone => 'أُعيد ضبط التقدم';

  @override
  String get clearFavourites => 'مسح المفضلة';

  @override
  String get clearFavouritesTitle => 'مسح المفضلة؟';

  @override
  String get clearFavouritesBody => 'ستُزال كل الجمل من المفضلة.';

  @override
  String get clearFavouritesDone => 'تم مسح المفضلة';

  @override
  String get dialogCancel => 'إلغاء';

  @override
  String get dialogClear => 'مسح';

  @override
  String get settingsAbout => 'حول التطبيق';

  @override
  String aboutVersion(String version) {
    return 'الإصدار $version';
  }

  @override
  String get privacyChoices => 'خيارات الخصوصية';

  @override
  String get privacyChoicesHelp => 'غيّر موافقتك على الإعلانات';
}
