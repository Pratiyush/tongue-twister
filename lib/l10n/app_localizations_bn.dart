// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'অ্যাপের ভাষা';

  @override
  String get languageSystemDefault => 'সিস্টেম ডিফল্ট';

  @override
  String languageFollowsDevice(String language) {
    return 'তোমার ডিভাইস অনুযায়ী · $language';
  }

  @override
  String get languageSearchHint => 'ভাষা খোঁজো';

  @override
  String appCredit(String name) {
    return '$name ❤️ দিয়ে বানিয়েছেন';
  }

  @override
  String get favouritesTitle => 'প্রিয়';

  @override
  String get settingsTitle => 'সেটিংস';

  @override
  String get actionListen => 'শোনো';

  @override
  String get actionStop => 'থামাও';

  @override
  String get addToFavourites => 'প্রিয় তালিকায় যোগ করো';

  @override
  String get removeFromFavourites => 'প্রিয় তালিকা থেকে সরাও';

  @override
  String get languageBritishEnglish => 'ব্রিটিশ ইংরেজি';

  @override
  String get languageAmericanEnglish => 'আমেরিকান ইংরেজি';

  @override
  String get languageHindi => 'হিন্দি';

  @override
  String get languageGerman => 'জার্মান';

  @override
  String get groupEnglish => 'ইংরেজি';

  @override
  String sectionTitleNative(String native, String language) {
    return '$native · $language';
  }

  @override
  String get sectionShortUK => 'UK';

  @override
  String get sectionShortUS => 'US';

  @override
  String get sectionSubtitleUK => 'Lorries, biscuits আর এক কাপ জমাটি চা';

  @override
  String get sectionSubtitleUS => 'উডচাক, বাগি আর Unique New York';

  @override
  String get difficultyEasy => 'সহজ';

  @override
  String get difficultyMedium => 'মাঝারি';

  @override
  String get difficultyHard => 'কঠিন';

  @override
  String get speedSlow => 'ধীরে';

  @override
  String get speedNormal => 'স্বাভাবিক';

  @override
  String get speedFast => 'দ্রুত';

  @override
  String get heroTitle => 'জিভ প্যাঁচাও!';

  @override
  String get heroSubtitle =>
      'মাতৃভাষীর গলায় শোনো, তারপর প্রতিবার আরও দ্রুত বলো।';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => 'অনুশীলিত';

  @override
  String get heroStatFavourites => 'প্রিয়';

  @override
  String get surpriseMe => 'চমকে দাও';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: '$totalটির মধ্যে $practisedটি অনুশীলিত',
      one: '$totalটির মধ্যে $practisedটি অনুশীলিত',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => 'তোমার জন্য প্রস্তাব';

  @override
  String get recommendRevise =>
      'ঝালিয়ে নাও: সবচেয়ে কম অনুশীলন করা টাং টুইস্টার';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'শুরুর জন্য দারুণ একটা সহজ',
      'medium': 'শুরুর জন্য দারুণ একটা মাঝারি',
      'hard': 'শুরুর জন্য দারুণ একটা কঠিন',
      'other': 'শুরুর জন্য দারুণ একটা',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'নতুন সহজ টাং টুইস্টার, তোমার অনুশীলনের ভাষা $language',
      'medium': 'নতুন মাঝারি টাং টুইস্টার, তোমার অনুশীলনের ভাষা $language',
      'hard': 'নতুন কঠিন টাং টুইস্টার, তোমার অনুশীলনের ভাষা $language',
      'other': 'নতুন টাং টুইস্টার, তোমার অনুশীলনের ভাষা $language',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return 'নতুন কিছু চেষ্টা করো: $language';
  }

  @override
  String get searchTwistersHint => 'টাং টুইস্টার খোঁজো';

  @override
  String get filterAll => 'সব';

  @override
  String get noTwistersMatch => 'কোনো টাং টুইস্টার মেলেনি।';

  @override
  String get favouritesEmpty =>
      'যেকোনো টাং টুইস্টার-এ ♡ চাপো, এখানে রাখা থাকবে।';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count× অনুশীলন',
      one: '$count× অনুশীলন',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · আরও দেখতে সোয়াইপ করো';
  }

  @override
  String get pronunciationLabel => 'উচ্চারণ';

  @override
  String get meaningLabel => 'অর্থ';

  @override
  String repeatInARow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'পরপর $count×',
      one: 'পরপর $count×',
    );
    return '$_temp0';
  }

  @override
  String get saidIt => 'বলে ফেলেছি!';

  @override
  String get practiseFirstTry => 'প্রথম চেষ্টা হয়ে গেল। এবার আরও দ্রুত বলো!';

  @override
  String get practiseThreeTimes => 'তিনবার! জিভ গরম হচ্ছে।';

  @override
  String get practiseTenTimes => 'দশবার। এটা তুমি রপ্ত করে ফেলেছ!';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'দারুণ! $count বার অনুশীলন হলো।',
      one: 'দারুণ! $count বার অনুশীলন হলো।',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return 'এই ডিভাইসে $locale ভয়েস নেই। সিস্টেমের টেক্সট-টু-স্পিচ সেটিংসে একটা যোগ করো।';
  }

  @override
  String get settingsAppearance => 'চেহারা';

  @override
  String get themeSystem => 'সিস্টেম';

  @override
  String get themeLight => 'লাইট';

  @override
  String get themeDark => 'ডার্ক';

  @override
  String get settingsLanguages => 'ভাষাগুলো';

  @override
  String get settingsLanguagesHelp =>
      'যে ভাষাগুলো শিখতে চাও বেছে নাও। লুকানো ভাষা হোম স্ক্রিন থেকে সরে যায়।';

  @override
  String get settingsPlayback => 'প্লেব্যাক';

  @override
  String get settingsSpeakingSpeed => 'বলার গতি';

  @override
  String get settingsRepeatChallenge => 'পুনরাবৃত্তি চ্যালেঞ্জ';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'টাং টুইস্টার পরপর $count বার বাজে',
      one: 'টাং টুইস্টার $count বার বাজে',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => 'কম বার';

  @override
  String get moreRepeats => 'বেশি বার';

  @override
  String get settingsDisplay => 'প্রদর্শন';

  @override
  String get showPronunciation => 'উচ্চারণ দেখাও';

  @override
  String get showPronunciationHelp => 'হিন্দি টাং টুইস্টার-এর নিচে রোমান হরফে';

  @override
  String get showMeaning => 'অর্থ দেখাও';

  @override
  String get showMeaningHelp => 'হিন্দি ও জার্মানের ইংরেজি অনুবাদ';

  @override
  String get settingsVoices => 'ভয়েস';

  @override
  String get settingsVoicesHelp =>
      'টাং টুইস্টার মাতৃভাষীদের রেকর্ডিংয়ে বাজে। রেকর্ডিং না থাকলে তবেই ফোনের টেক্সট-টু-স্পিচ ভয়েস ব্যবহার হয়। কোনো ভাষা \"ইনস্টল নেই\" দেখালে, ফোনের টেক্সট-টু-স্পিচ সেটিংসে সেটা যোগ করো।';

  @override
  String get voiceInstalled => 'ইনস্টল আছে';

  @override
  String get voiceNotInstalled => 'ইনস্টল নেই';

  @override
  String get voiceUnknown => 'অজানা';

  @override
  String get voiceChecking => 'যাচাই হচ্ছে…';

  @override
  String voiceStatusLine(String locale, String status) {
    return '$locale · $status';
  }

  @override
  String testVoice(String language) {
    return 'ভয়েস যাচাই: $language';
  }

  @override
  String get settingsYourData => 'তোমার ডেটা';

  @override
  String get resetProgress => 'অনুশীলনের অগ্রগতি রিসেট';

  @override
  String get resetProgressTitle => 'অগ্রগতি রিসেট করবে?';

  @override
  String get resetProgressBody => 'সব অনুশীলনের গণনা শূন্যে ফিরে যাবে।';

  @override
  String get resetProgressDone => 'অনুশীলনের অগ্রগতি রিসেট হয়েছে';

  @override
  String get clearFavourites => 'প্রিয় তালিকা মোছো';

  @override
  String get clearFavouritesTitle => 'প্রিয় তালিকা মুছবে?';

  @override
  String get clearFavouritesBody =>
      'সব টাং টুইস্টার তোমার প্রিয় তালিকা থেকে সরানো হবে।';

  @override
  String get clearFavouritesDone => 'প্রিয় তালিকা মোছা হয়েছে';

  @override
  String get dialogCancel => 'বাতিল';

  @override
  String get dialogClear => 'মুছে দাও';

  @override
  String get settingsAbout => 'অ্যাপ সম্পর্কে';

  @override
  String aboutVersion(String version) {
    return 'ভার্সন $version';
  }

  @override
  String get privacyChoices => 'গোপনীয়তার পছন্দ';

  @override
  String get privacyChoicesHelp => 'বিজ্ঞাপনের সম্মতি বদলাও';

  @override
  String get privacyPolicy => 'গোপনীয়তা নীতি';

  @override
  String get settingsAds => 'বিজ্ঞাপন';

  @override
  String get adFreeWatch => '১ ঘণ্টা বিজ্ঞাপন ছাড়া';

  @override
  String get adFreeWatchHelp => 'একটা ছোট ভিডিও দেখো';

  @override
  String adFreeActive(String time) {
    return '$time পর্যন্ত বিজ্ঞাপন নেই';
  }

  @override
  String adFreeThanks(String time) {
    return 'ধন্যবাদ! $time পর্যন্ত কোনো বিজ্ঞাপন নেই।';
  }

  @override
  String get adFreeUnavailable => 'এখন কোনো ভিডিও নেই। পরে আবার চেষ্টা করো।';
}
