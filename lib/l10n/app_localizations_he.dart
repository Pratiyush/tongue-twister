// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class AppLocalizationsHe extends AppLocalizations {
  AppLocalizationsHe([String locale = 'he']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'שפת האפליקציה';

  @override
  String get languageSystemDefault => 'לפי המערכת';

  @override
  String languageFollowsDevice(String language) {
    return 'לפי המכשיר שלך · $language';
  }

  @override
  String get languageSearchHint => 'חיפוש שפות';

  @override
  String appCredit(String name) {
    return 'נוצר עם ❤️ על ידי $name';
  }

  @override
  String get favouritesTitle => 'מועדפים';

  @override
  String get settingsTitle => 'הגדרות';

  @override
  String get actionListen => 'האזנה';

  @override
  String get actionStop => 'עצירה';

  @override
  String get addToFavourites => 'הוספה למועדפים';

  @override
  String get removeFromFavourites => 'הסרה מהמועדפים';

  @override
  String get languageBritishEnglish => 'אנגלית בריטית';

  @override
  String get languageAmericanEnglish => 'אנגלית אמריקאית';

  @override
  String get languageHindi => 'הינדי';

  @override
  String get languageGerman => 'גרמנית';

  @override
  String get groupEnglish => 'אנגלית';

  @override
  String sectionTitleNative(String native, String language) {
    return '$native · $language';
  }

  @override
  String get sectionShortUK => 'UK';

  @override
  String get sectionShortUS => 'US';

  @override
  String get sectionSubtitleUK => 'Lorries, biscuits וכוס תה כמו שצריך';

  @override
  String get sectionSubtitleUS => 'מרמיטות, עגלות ו-Unique New York';

  @override
  String get difficultyEasy => 'קל';

  @override
  String get difficultyMedium => 'בינוני';

  @override
  String get difficultyHard => 'קשה';

  @override
  String get speedSlow => 'איטי';

  @override
  String get speedNormal => 'רגיל';

  @override
  String get speedFast => 'מהיר';

  @override
  String get heroTitle => 'לשבור את הלשון!';

  @override
  String get heroSubtitle =>
      'מקשיבים לדובר שפת אם, ואז אומרים מהר יותר בכל פעם.';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => 'תורגלו';

  @override
  String get heroStatFavourites => 'מועדפים';

  @override
  String get surpriseMe => 'תפתיעו אותי';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: '$practised מתוך $total תורגלו',
      two: '$practised מתוך $total תורגלו',
      one: '$practised מתוך $total תורגלו',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => 'מומלץ בשבילך';

  @override
  String get recommendRevise => 'זמן לחזרה: שובר הלשון שתרגלת הכי מעט';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'שובר לשון קל, טוב להתחלה',
      'medium': 'שובר לשון בינוני, טוב להתחלה',
      'hard': 'שובר לשון קשה, טוב להתחלה',
      'other': 'שובר לשון טוב להתחלה',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'שובר לשון קל וחדש ב$language, שפה שכבר מתרגלים',
      'medium': 'שובר לשון בינוני וחדש ב$language, שפה שכבר מתרגלים',
      'hard': 'שובר לשון קשה וחדש ב$language, שפה שכבר מתרגלים',
      'other': 'שובר לשון חדש ב$language, שפה שכבר מתרגלים',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return 'לנסות משהו חדש ב$language';
  }

  @override
  String get searchTwistersHint => 'חיפוש שוברי לשון';

  @override
  String get filterAll => 'הכול';

  @override
  String get noTwistersMatch => 'לא נמצאו שוברי לשון.';

  @override
  String get favouritesEmpty => 'הקישו על ♡ ליד שובר לשון כדי לשמור אותו כאן.';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'תורגל $count×',
      two: 'תורגל $count×',
      one: 'תורגל $count×',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · החליקו לעוד';
  }

  @override
  String get pronunciationLabel => 'הגייה';

  @override
  String get meaningLabel => 'משמעות';

  @override
  String repeatInARow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count× ברצף',
      two: '$count× ברצף',
      one: '$count× ברצף',
    );
    return '$_temp0';
  }

  @override
  String get saidIt => 'אמרתי!';

  @override
  String get practiseFirstTry => 'הניסיון הראשון נרשם. עכשיו מהר יותר!';

  @override
  String get practiseThreeTimes => 'שלוש פעמים! הלשון מתחממת.';

  @override
  String get practiseTenTimes => 'עשר פעמים. זה כבר בכיס!';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'יפה! תורגל $count פעמים.',
      two: 'יפה! תורגל פעמיים.',
      one: 'יפה! תורגל פעם אחת.',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return 'אין במכשיר קול ל-$locale. אפשר להוסיף אחד בהגדרות המרת טקסט לדיבור של המערכת.';
  }

  @override
  String get settingsAppearance => 'מראה';

  @override
  String get themeSystem => 'מערכת';

  @override
  String get themeLight => 'בהיר';

  @override
  String get themeDark => 'כהה';

  @override
  String get settingsLanguages => 'שפות';

  @override
  String get settingsLanguagesHelp =>
      'בוחרים את השפות שרוצים ללמוד. שפות מוסתרות נעלמות ממסך הבית.';

  @override
  String get settingsPlayback => 'השמעה';

  @override
  String get settingsSpeakingSpeed => 'מהירות דיבור';

  @override
  String get settingsRepeatChallenge => 'אתגר חזרות';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'משמיע את שובר הלשון $count פעמים ברצף',
      two: 'משמיע את שובר הלשון פעמיים ברצף',
      one: 'משמיע את שובר הלשון פעם אחת',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => 'פחות חזרות';

  @override
  String get moreRepeats => 'יותר חזרות';

  @override
  String get settingsDisplay => 'תצוגה';

  @override
  String get showPronunciation => 'הצגת הגייה';

  @override
  String get showPronunciationHelp => 'תעתיק לטיני מתחת לשוברי לשון בהינדי';

  @override
  String get showMeaning => 'הצגת משמעות';

  @override
  String get showMeaningHelp => 'תרגום לאנגלית להינדי ולגרמנית';

  @override
  String get settingsVoices => 'קולות';

  @override
  String get settingsVoicesHelp =>
      'שוברי הלשון מושמעים בהקלטות של דוברי שפת אם. הקול של הטלפון להמרת טקסט לדיבור משמש רק כשאין הקלטה. אם שפה מופיעה כ\"לא מותקן\", אפשר להוסיף אותה בהגדרות המרת טקסט לדיבור של הטלפון.';

  @override
  String get voiceInstalled => 'מותקן';

  @override
  String get voiceNotInstalled => 'לא מותקן';

  @override
  String get voiceUnknown => 'לא ידוע';

  @override
  String get voiceChecking => 'בבדיקה…';

  @override
  String voiceStatusLine(String locale, String status) {
    return '$locale · $status';
  }

  @override
  String testVoice(String language) {
    return 'בדיקת קול: $language';
  }

  @override
  String get settingsYourData => 'הנתונים שלך';

  @override
  String get resetProgress => 'איפוס התקדמות התרגול';

  @override
  String get resetProgressTitle => 'לאפס את ההתקדמות?';

  @override
  String get resetProgressBody => 'כל מוני התרגול יאופסו.';

  @override
  String get resetProgressDone => 'התקדמות התרגול אופסה';

  @override
  String get clearFavourites => 'ניקוי המועדפים';

  @override
  String get clearFavouritesTitle => 'לנקות את המועדפים?';

  @override
  String get clearFavouritesBody => 'כל שוברי הלשון יוסרו מהמועדפים.';

  @override
  String get clearFavouritesDone => 'המועדפים נוקו';

  @override
  String get dialogCancel => 'ביטול';

  @override
  String get dialogClear => 'ניקוי';

  @override
  String get settingsAbout => 'אודות';

  @override
  String aboutVersion(String version) {
    return 'גרסה $version';
  }

  @override
  String get privacyChoices => 'אפשרויות פרטיות';

  @override
  String get privacyChoicesHelp => 'שינוי ההסכמה לפרסומות';

  @override
  String get settingsAds => 'פרסומות';

  @override
  String get adFreeWatch => '24 שעות בלי פרסומות';

  @override
  String get adFreeWatchHelp => 'צפייה בסרטון קצר אחד';

  @override
  String adFreeActive(String time) {
    return 'בלי פרסומות עד $time';
  }

  @override
  String adFreeThanks(String time) {
    return 'תודה! אין פרסומות עד $time.';
  }

  @override
  String get adFreeUnavailable =>
      'אין כרגע סרטון זמין. אפשר לנסות שוב מאוחר יותר.';
}
