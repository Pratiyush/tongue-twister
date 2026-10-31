// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'ภาษาของแอป';

  @override
  String get languageSystemDefault => 'ค่าเริ่มต้นของระบบ';

  @override
  String languageFollowsDevice(String language) {
    return 'ตามอุปกรณ์ของคุณ · $language';
  }

  @override
  String get languageSearchHint => 'ค้นหาภาษา';

  @override
  String appCredit(String name) {
    return 'สร้างด้วย ❤️ โดย $name';
  }

  @override
  String get favouritesTitle => 'รายการโปรด';

  @override
  String get settingsTitle => 'การตั้งค่า';

  @override
  String get actionListen => 'ฟัง';

  @override
  String get actionStop => 'หยุด';

  @override
  String get addToFavourites => 'เพิ่มในรายการโปรด';

  @override
  String get removeFromFavourites => 'นำออกจากรายการโปรด';

  @override
  String get languageBritishEnglish => 'อังกฤษแบบบริติช';

  @override
  String get languageAmericanEnglish => 'อังกฤษแบบอเมริกัน';

  @override
  String get languageHindi => 'ฮินดี';

  @override
  String get languageGerman => 'เยอรมัน';

  @override
  String get groupEnglish => 'ภาษาอังกฤษ';

  @override
  String sectionTitleNative(String native, String language) {
    return '$native · $language';
  }

  @override
  String get sectionShortUK => 'UK';

  @override
  String get sectionShortUS => 'US';

  @override
  String get sectionSubtitleUK => 'Lorries, biscuits และชาดีๆ สักถ้วย';

  @override
  String get sectionSubtitleUS => 'วูดชัก รถเข็นเด็ก และ Unique New York';

  @override
  String get difficultyEasy => 'ง่าย';

  @override
  String get difficultyMedium => 'ปานกลาง';

  @override
  String get difficultyHard => 'ยาก';

  @override
  String get speedSlow => 'ช้า';

  @override
  String get speedNormal => 'ปกติ';

  @override
  String get speedFast => 'เร็ว';

  @override
  String get heroTitle => 'ท้าทายลิ้นของคุณ!';

  @override
  String get heroSubtitle => 'ฟังเสียงเจ้าของภาษา แล้วพูดตามให้เร็วขึ้นทุกรอบ';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => 'ฝึกแล้ว';

  @override
  String get heroStatFavourites => 'รายการโปรด';

  @override
  String get surpriseMe => 'สุ่มให้หน่อย';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: 'ฝึกแล้ว $practised จาก $total',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => 'แนะนำสำหรับคุณ';

  @override
  String get recommendRevise => 'ได้เวลาทบทวน: ประโยคที่คุณฝึกน้อยที่สุด';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'ระดับง่าย เหมาะกับการเริ่มต้น',
      'medium': 'ระดับกลาง เหมาะกับการเริ่มต้น',
      'hard': 'ระดับยาก เหมาะกับการเริ่มต้น',
      'other': 'เหมาะกับการเริ่มต้น',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'ประโยคง่ายใหม่ในภาษาที่คุณฝึกอยู่: $language',
      'medium': 'ประโยคระดับกลางใหม่ในภาษาที่คุณฝึกอยู่: $language',
      'hard': 'ประโยคยากใหม่ในภาษาที่คุณฝึกอยู่: $language',
      'other': 'ประโยคใหม่ในภาษาที่คุณฝึกอยู่: $language',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return 'ลองอะไรใหม่ๆ ในภาษา$language';
  }

  @override
  String get searchTwistersHint => 'ค้นหาประโยคลิ้นพันกัน';

  @override
  String get filterAll => 'ทั้งหมด';

  @override
  String get noTwistersMatch => 'ไม่พบประโยคที่ตรงกัน';

  @override
  String get favouritesEmpty => 'แตะ ♡ ที่ประโยคใดก็ได้เพื่อเก็บไว้ที่นี่';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ฝึกแล้ว $count×',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · ปัดเพื่อดูเพิ่ม';
  }

  @override
  String get pronunciationLabel => 'การออกเสียง';

  @override
  String get meaningLabel => 'ความหมาย';

  @override
  String repeatInARow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count× ติดกัน',
    );
    return '$_temp0';
  }

  @override
  String get saidIt => 'พูดแล้ว!';

  @override
  String get practiseFirstTry => 'บันทึกครั้งแรกแล้ว ทีนี้พูดให้เร็วขึ้น!';

  @override
  String get practiseThreeTimes => 'สามครั้งแล้ว! ลิ้นเริ่มคล่องแล้ว';

  @override
  String get practiseTenTimes => 'สิบครั้ง ประโยคนี้คุณเชี่ยวชาญแล้ว!';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'เยี่ยม! ฝึกแล้ว $count ครั้ง',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return 'อุปกรณ์นี้ไม่มีเสียง $locale เพิ่มได้ในการตั้งค่าแปลงข้อความเป็นเสียงพูดของระบบ';
  }

  @override
  String get settingsAppearance => 'รูปลักษณ์';

  @override
  String get themeSystem => 'ระบบ';

  @override
  String get themeLight => 'สว่าง';

  @override
  String get themeDark => 'มืด';

  @override
  String get settingsLanguages => 'ภาษา';

  @override
  String get settingsLanguagesHelp =>
      'เลือกภาษาที่คุณอยากเรียน ภาษาที่ซ่อนไว้จะหายไปจากหน้าหลัก';

  @override
  String get settingsPlayback => 'การเล่น';

  @override
  String get settingsSpeakingSpeed => 'ความเร็วในการพูด';

  @override
  String get settingsRepeatChallenge => 'ชาเลนจ์พูดซ้ำ';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'เล่นประโยค $count ครั้งติดกัน',
      one: 'เล่นประโยคครั้งเดียว',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => 'ลดจำนวนรอบ';

  @override
  String get moreRepeats => 'เพิ่มจำนวนรอบ';

  @override
  String get settingsDisplay => 'การแสดงผล';

  @override
  String get showPronunciation => 'แสดงการออกเสียง';

  @override
  String get showPronunciationHelp => 'ตัวอักษรโรมันใต้ประโยคภาษาฮินดี';

  @override
  String get showMeaning => 'แสดงความหมาย';

  @override
  String get showMeaningHelp => 'คำแปลภาษาอังกฤษสำหรับฮินดีและเยอรมัน';

  @override
  String get settingsVoices => 'เสียง';

  @override
  String get settingsVoicesHelp =>
      'ประโยคลิ้นพันกันเล่นจากเสียงบันทึกของเจ้าของภาษา เสียงแปลงข้อความเป็นเสียงพูดของโทรศัพท์จะใช้เฉพาะเมื่อไม่มีเสียงบันทึก หากภาษาใดแสดงว่ายังไม่ติดตั้ง ให้เพิ่มในการตั้งค่าแปลงข้อความเป็นเสียงพูดของโทรศัพท์';

  @override
  String get voiceInstalled => 'ติดตั้งแล้ว';

  @override
  String get voiceNotInstalled => 'ยังไม่ติดตั้ง';

  @override
  String get voiceUnknown => 'ไม่ทราบ';

  @override
  String get voiceChecking => 'กำลังตรวจสอบ…';

  @override
  String voiceStatusLine(String locale, String status) {
    return '$locale · $status';
  }

  @override
  String testVoice(String language) {
    return 'ทดสอบเสียง: $language';
  }

  @override
  String get settingsYourData => 'ข้อมูลของคุณ';

  @override
  String get resetProgress => 'รีเซ็ตความคืบหน้าการฝึก';

  @override
  String get resetProgressTitle => 'รีเซ็ตความคืบหน้า?';

  @override
  String get resetProgressBody => 'จำนวนการฝึกทั้งหมดจะกลับเป็นศูนย์';

  @override
  String get resetProgressDone => 'รีเซ็ตความคืบหน้าแล้ว';

  @override
  String get clearFavourites => 'ล้างรายการโปรด';

  @override
  String get clearFavouritesTitle => 'ล้างรายการโปรด?';

  @override
  String get clearFavouritesBody => 'ประโยคทั้งหมดจะถูกนำออกจากรายการโปรด';

  @override
  String get clearFavouritesDone => 'ล้างรายการโปรดแล้ว';

  @override
  String get dialogCancel => 'ยกเลิก';

  @override
  String get dialogClear => 'ล้าง';

  @override
  String get settingsAbout => 'เกี่ยวกับ';

  @override
  String aboutVersion(String version) {
    return 'เวอร์ชัน $version';
  }

  @override
  String get privacyChoices => 'ตัวเลือกความเป็นส่วนตัว';

  @override
  String get privacyChoicesHelp => 'เปลี่ยนความยินยอมเรื่องโฆษณา';

  @override
  String get settingsAds => 'โฆษณา';

  @override
  String get adFreeWatch => 'ปิดโฆษณา 1 ชั่วโมง';

  @override
  String get adFreeWatchHelp => 'ดูวิดีโอสั้น 1 คลิป';

  @override
  String adFreeActive(String time) {
    return 'ไม่มีโฆษณาถึง $time';
  }

  @override
  String adFreeThanks(String time) {
    return 'ขอบคุณ! ไม่มีโฆษณาจนถึง $time';
  }

  @override
  String get adFreeUnavailable => 'ตอนนี้ยังไม่มีวิดีโอ ลองใหม่ภายหลังนะ';
}
