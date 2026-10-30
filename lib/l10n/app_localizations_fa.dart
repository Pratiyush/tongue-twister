// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class AppLocalizationsFa extends AppLocalizations {
  AppLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'زبان برنامه';

  @override
  String get languageSystemDefault => 'پیش‌فرض سیستم';

  @override
  String languageFollowsDevice(String language) {
    return 'مطابق دستگاهت · $language';
  }

  @override
  String get languageSearchHint => 'جست‌وجوی زبان';

  @override
  String appCredit(String name) {
    return 'ساخته‌شده با ❤️ توسط $name';
  }

  @override
  String get favouritesTitle => 'علاقه‌مندی‌ها';

  @override
  String get settingsTitle => 'تنظیمات';

  @override
  String get actionListen => 'گوش کن';

  @override
  String get actionStop => 'توقف';

  @override
  String get addToFavourites => 'افزودن به علاقه‌مندی‌ها';

  @override
  String get removeFromFavourites => 'حذف از علاقه‌مندی‌ها';

  @override
  String get languageBritishEnglish => 'انگلیسی بریتانیایی';

  @override
  String get languageAmericanEnglish => 'انگلیسی آمریکایی';

  @override
  String get languageHindi => 'هندی';

  @override
  String get languageGerman => 'آلمانی';

  @override
  String get groupEnglish => 'انگلیسی';

  @override
  String sectionTitleNative(String native, String language) {
    return '$native · $language';
  }

  @override
  String get sectionShortUK => 'UK';

  @override
  String get sectionShortUS => 'US';

  @override
  String get sectionSubtitleUK => 'Lorries، biscuits و یه فنجون چای حسابی';

  @override
  String get sectionSubtitleUS => 'مارموت‌ها، کالسکه‌ها و Unique New York';

  @override
  String get difficultyEasy => 'آسان';

  @override
  String get difficultyMedium => 'متوسط';

  @override
  String get difficultyHard => 'سخت';

  @override
  String get speedSlow => 'آهسته';

  @override
  String get speedNormal => 'معمولی';

  @override
  String get speedFast => 'تند';

  @override
  String get heroTitle => 'زبانت رو بپیچون!';

  @override
  String get heroSubtitle =>
      'به صدای یک گوینده‌ی بومی گوش کن، بعد هر بار تندتر بگو.';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => 'تمرین‌شده';

  @override
  String get heroStatFavourites => 'علاقه‌مندی';

  @override
  String get surpriseMe => 'غافلگیرم کن';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: '$practised از $total تمرین‌شده',
      one: '$practised از $total تمرین‌شده',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => 'پیشنهاد برای تو';

  @override
  String get recommendRevise => 'وقت مرور: زبان‌پیچی که کمتر از همه تمرین کردی';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'یک زبان‌پیچ آسان برای شروع',
      'medium': 'یک زبان‌پیچ متوسط برای شروع',
      'hard': 'یک زبان‌پیچ سخت برای شروع',
      'other': 'یک زبان‌پیچ خوب برای شروع',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'زبان‌پیچ آسان تازه به $language، زبانی که تمرین می‌کنی',
      'medium': 'زبان‌پیچ متوسط تازه به $language، زبانی که تمرین می‌کنی',
      'hard': 'زبان‌پیچ سخت تازه به $language، زبانی که تمرین می‌کنی',
      'other': 'زبان‌پیچ تازه به $language، زبانی که تمرین می‌کنی',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return 'یه چیز تازه به $language امتحان کن';
  }

  @override
  String get searchTwistersHint => 'جست‌وجوی زبان‌پیچ‌ها';

  @override
  String get filterAll => 'همه';

  @override
  String get noTwistersMatch => 'زبان‌پیچی پیدا نشد.';

  @override
  String get favouritesEmpty => 'روی ♡ هر زبان‌پیچ بزن تا اینجا نگهش داری.';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count× تمرین',
      one: '$count× تمرین',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · برای بیشتر بکش';
  }

  @override
  String get pronunciationLabel => 'تلفظ';

  @override
  String get meaningLabel => 'معنی';

  @override
  String repeatInARow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count× پشت سر هم',
      one: '$count× پشت سر هم',
    );
    return '$_temp0';
  }

  @override
  String get saidIt => 'گفتمش!';

  @override
  String get practiseFirstTry => 'اولین تلاش ثبت شد. حالا تندتر بگو!';

  @override
  String get practiseThreeTimes => 'سه بار! زبانت داره گرم می‌شه.';

  @override
  String get practiseTenTimes => 'ده بار. این یکی رو دیگه بلدی!';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'آفرین! $count بار تمرین شد.',
      one: 'آفرین! $count بار تمرین شد.',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return 'روی این دستگاه صدای $locale نیست. از تنظیمات تبدیل متن به گفتار سیستم یکی اضافه کن.';
  }

  @override
  String get settingsAppearance => 'ظاهر';

  @override
  String get themeSystem => 'سیستم';

  @override
  String get themeLight => 'روشن';

  @override
  String get themeDark => 'تیره';

  @override
  String get settingsLanguages => 'زبان‌ها';

  @override
  String get settingsLanguagesHelp =>
      'زبان‌هایی رو که می‌خوای یاد بگیری انتخاب کن. زبان‌های پنهان از صفحه‌ی اصلی حذف می‌شن.';

  @override
  String get settingsPlayback => 'پخش';

  @override
  String get settingsSpeakingSpeed => 'سرعت گفتار';

  @override
  String get settingsRepeatChallenge => 'چالش تکرار';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'زبان‌پیچ $count بار پشت سر هم پخش می‌شه',
      one: 'زبان‌پیچ $count بار پخش می‌شه',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => 'تکرار کمتر';

  @override
  String get moreRepeats => 'تکرار بیشتر';

  @override
  String get settingsDisplay => 'نمایش';

  @override
  String get showPronunciation => 'نمایش تلفظ';

  @override
  String get showPronunciationHelp => 'آوانویسی لاتین زیر زبان‌پیچ‌های هندی';

  @override
  String get showMeaning => 'نمایش معنی';

  @override
  String get showMeaningHelp => 'ترجمه‌ی انگلیسی برای هندی و آلمانی';

  @override
  String get settingsVoices => 'صداها';

  @override
  String get settingsVoicesHelp =>
      'زبان‌پیچ‌ها با صدای ضبط‌شده‌ی گوینده‌های بومی پخش می‌شن. صدای تبدیل متن به گفتار گوشی فقط وقتی استفاده می‌شه که ضبطی نباشه. اگه زبانی «نصب نشده» نشون داده می‌شه، از تنظیمات تبدیل متن به گفتار گوشیت اضافه‌اش کن.';

  @override
  String get voiceInstalled => 'نصب‌شده';

  @override
  String get voiceNotInstalled => 'نصب نشده';

  @override
  String get voiceUnknown => 'نامشخص';

  @override
  String get voiceChecking => 'در حال بررسی…';

  @override
  String voiceStatusLine(String locale, String status) {
    return '$locale · $status';
  }

  @override
  String testVoice(String language) {
    return 'امتحان صدا: $language';
  }

  @override
  String get settingsYourData => 'داده‌های تو';

  @override
  String get resetProgress => 'بازنشانی پیشرفت تمرین';

  @override
  String get resetProgressTitle => 'پیشرفت بازنشانی بشه؟';

  @override
  String get resetProgressBody => 'همه‌ی شمارنده‌های تمرین صفر می‌شن.';

  @override
  String get resetProgressDone => 'پیشرفت تمرین بازنشانی شد';

  @override
  String get clearFavourites => 'پاک کردن علاقه‌مندی‌ها';

  @override
  String get clearFavouritesTitle => 'علاقه‌مندی‌ها پاک بشن؟';

  @override
  String get clearFavouritesBody =>
      'همه‌ی زبان‌پیچ‌ها از علاقه‌مندی‌ها حذف می‌شن.';

  @override
  String get clearFavouritesDone => 'علاقه‌مندی‌ها پاک شد';

  @override
  String get dialogCancel => 'لغو';

  @override
  String get dialogClear => 'پاک کن';

  @override
  String get settingsAbout => 'درباره';

  @override
  String aboutVersion(String version) {
    return 'نسخه‌ی $version';
  }

  @override
  String get privacyChoices => 'گزینه‌های حریم خصوصی';

  @override
  String get privacyChoicesHelp => 'رضایت تبلیغات رو تغییر بده';

  @override
  String get settingsAds => 'تبلیغات';

  @override
  String get adFreeWatch => '۲۴ ساعت بدون تبلیغات';

  @override
  String get adFreeWatchHelp => 'یه ویدیوی کوتاه ببین';

  @override
  String adFreeActive(String time) {
    return 'بدون تبلیغات تا $time';
  }

  @override
  String adFreeThanks(String time) {
    return 'مرسی! تا $time تبلیغی نمی‌بینی.';
  }

  @override
  String get adFreeUnavailable => 'الان ویدیویی نیست. بعداً دوباره امتحان کن.';
}
