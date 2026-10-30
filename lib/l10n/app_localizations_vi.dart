// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'Ngôn ngữ ứng dụng';

  @override
  String get languageSystemDefault => 'Theo hệ thống';

  @override
  String languageFollowsDevice(String language) {
    return 'Theo thiết bị · $language';
  }

  @override
  String get languageSearchHint => 'Tìm ngôn ngữ';

  @override
  String appCredit(String name) {
    return 'Làm bằng ❤️ bởi $name';
  }

  @override
  String get favouritesTitle => 'Yêu thích';

  @override
  String get settingsTitle => 'Cài đặt';

  @override
  String get actionListen => 'Nghe';

  @override
  String get actionStop => 'Dừng';

  @override
  String get addToFavourites => 'Thêm vào yêu thích';

  @override
  String get removeFromFavourites => 'Bỏ khỏi yêu thích';

  @override
  String get languageBritishEnglish => 'Tiếng Anh-Anh';

  @override
  String get languageAmericanEnglish => 'Tiếng Anh-Mỹ';

  @override
  String get languageHindi => 'Tiếng Hindi';

  @override
  String get languageGerman => 'Tiếng Đức';

  @override
  String get groupEnglish => 'Tiếng Anh';

  @override
  String sectionTitleNative(String native, String language) {
    return '$native · $language';
  }

  @override
  String get sectionShortUK => 'Anh';

  @override
  String get sectionShortUS => 'Mỹ';

  @override
  String get sectionSubtitleUK => 'Lorries, biscuits và một tách trà đúng điệu';

  @override
  String get sectionSubtitleUS => 'Sóc đất, xe đẩy và Unique New York';

  @override
  String get difficultyEasy => 'Dễ';

  @override
  String get difficultyMedium => 'Vừa';

  @override
  String get difficultyHard => 'Khó';

  @override
  String get speedSlow => 'Chậm';

  @override
  String get speedNormal => 'Thường';

  @override
  String get speedFast => 'Nhanh';

  @override
  String get heroTitle => 'Líu lưỡi nào!';

  @override
  String get heroSubtitle =>
      'Nghe giọng người bản xứ, rồi nói lại nhanh hơn mỗi lần.';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => 'đã luyện';

  @override
  String get heroStatFavourites => 'yêu thích';

  @override
  String get surpriseMe => 'Chọn ngẫu nhiên';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: 'Đã luyện $practised/$total câu',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => 'Gợi ý cho bạn';

  @override
  String get recommendRevise => 'Ôn lại nào: câu bạn luyện ít nhất';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Một câu dễ để bắt đầu',
      'medium': 'Một câu vừa sức để bắt đầu',
      'hard': 'Một câu khó để bắt đầu',
      'other': 'Một câu hay để bắt đầu',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Câu dễ mới bằng $language, ngôn ngữ bạn đang luyện',
      'medium': 'Câu vừa mới bằng $language, ngôn ngữ bạn đang luyện',
      'hard': 'Câu khó mới bằng $language, ngôn ngữ bạn đang luyện',
      'other': 'Câu mới bằng $language, ngôn ngữ bạn đang luyện',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return 'Thử điều mới bằng $language';
  }

  @override
  String get searchTwistersHint => 'Tìm câu líu lưỡi';

  @override
  String get filterAll => 'Tất cả';

  @override
  String get noTwistersMatch => 'Không có câu nào phù hợp.';

  @override
  String get favouritesEmpty => 'Chạm ♡ ở câu bất kỳ để lưu vào đây.';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Đã luyện $count×',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · vuốt để xem thêm';
  }

  @override
  String get pronunciationLabel => 'Phát âm';

  @override
  String get meaningLabel => 'Nghĩa';

  @override
  String repeatInARow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count× liên tiếp',
    );
    return '$_temp0';
  }

  @override
  String get saidIt => 'Nói được rồi!';

  @override
  String get practiseFirstTry => 'Đã ghi lần đầu. Giờ nói nhanh hơn nào!';

  @override
  String get practiseThreeTimes => 'Ba lần rồi! Lưỡi bạn đang khởi động đấy.';

  @override
  String get practiseTenTimes => 'Mười lần. Bạn đã thuần thục câu này!';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tuyệt! Đã luyện $count lần.',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return 'Thiết bị chưa có giọng $locale. Hãy thêm trong cài đặt chuyển văn bản thành giọng nói.';
  }

  @override
  String get settingsAppearance => 'Giao diện';

  @override
  String get themeSystem => 'Hệ thống';

  @override
  String get themeLight => 'Sáng';

  @override
  String get themeDark => 'Tối';

  @override
  String get settingsLanguages => 'Ngôn ngữ';

  @override
  String get settingsLanguagesHelp =>
      'Chọn ngôn ngữ bạn muốn học. Ngôn ngữ bị ẩn sẽ biến mất khỏi màn hình chính.';

  @override
  String get settingsPlayback => 'Phát lại';

  @override
  String get settingsSpeakingSpeed => 'Tốc độ nói';

  @override
  String get settingsRepeatChallenge => 'Thử thách lặp lại';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Phát câu $count lần liên tiếp',
      one: 'Phát câu một lần',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => 'Ít lần hơn';

  @override
  String get moreRepeats => 'Nhiều lần hơn';

  @override
  String get settingsDisplay => 'Hiển thị';

  @override
  String get showPronunciation => 'Hiện phát âm';

  @override
  String get showPronunciationHelp => 'Chữ Latinh dưới các câu tiếng Hindi';

  @override
  String get showMeaning => 'Hiện nghĩa';

  @override
  String get showMeaningHelp => 'Bản dịch tiếng Anh cho tiếng Hindi và Đức';

  @override
  String get settingsVoices => 'Giọng đọc';

  @override
  String get settingsVoicesHelp =>
      'Các câu được phát bằng bản ghi âm của người bản xứ. Giọng chuyển văn bản thành giọng nói của điện thoại chỉ được dùng khi thiếu bản ghi. Nếu một ngôn ngữ hiện là chưa cài, hãy thêm trong cài đặt chuyển văn bản thành giọng nói của điện thoại.';

  @override
  String get voiceInstalled => 'Đã cài';

  @override
  String get voiceNotInstalled => 'Chưa cài';

  @override
  String get voiceUnknown => 'Không rõ';

  @override
  String get voiceChecking => 'Đang kiểm tra…';

  @override
  String voiceStatusLine(String locale, String status) {
    return '$locale · $status';
  }

  @override
  String testVoice(String language) {
    return 'Thử giọng $language';
  }

  @override
  String get settingsYourData => 'Dữ liệu của bạn';

  @override
  String get resetProgress => 'Đặt lại tiến độ luyện tập';

  @override
  String get resetProgressTitle => 'Đặt lại tiến độ?';

  @override
  String get resetProgressBody => 'Mọi số lần luyện tập sẽ trở về 0.';

  @override
  String get resetProgressDone => 'Đã đặt lại tiến độ';

  @override
  String get clearFavourites => 'Xóa mục yêu thích';

  @override
  String get clearFavouritesTitle => 'Xóa mục yêu thích?';

  @override
  String get clearFavouritesBody =>
      'Mọi câu sẽ bị gỡ khỏi danh sách yêu thích.';

  @override
  String get clearFavouritesDone => 'Đã xóa mục yêu thích';

  @override
  String get dialogCancel => 'Hủy';

  @override
  String get dialogClear => 'Xóa';

  @override
  String get settingsAbout => 'Giới thiệu';

  @override
  String aboutVersion(String version) {
    return 'Phiên bản $version';
  }

  @override
  String get privacyChoices => 'Lựa chọn quyền riêng tư';

  @override
  String get privacyChoicesHelp => 'Thay đổi sự đồng ý về quảng cáo';

  @override
  String get settingsAds => 'Quảng cáo';

  @override
  String get adFreeWatch => 'Tắt quảng cáo trong 24 giờ';

  @override
  String get adFreeWatchHelp => 'Xem một video ngắn';

  @override
  String adFreeActive(String time) {
    return 'Không quảng cáo đến $time';
  }

  @override
  String adFreeThanks(String time) {
    return 'Cảm ơn! Không quảng cáo đến $time.';
  }

  @override
  String get adFreeUnavailable => 'Hiện chưa có video. Hãy thử lại sau nhé.';
}
