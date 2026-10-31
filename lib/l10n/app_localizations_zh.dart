// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => '应用语言';

  @override
  String get languageSystemDefault => '跟随系统';

  @override
  String languageFollowsDevice(String language) {
    return '跟随设备 · $language';
  }

  @override
  String get languageSearchHint => '搜索语言';

  @override
  String appCredit(String name) {
    return '由 $name 用 ❤️ 打造';
  }

  @override
  String get favouritesTitle => '收藏';

  @override
  String get settingsTitle => '设置';

  @override
  String get actionListen => '听一听';

  @override
  String get actionStop => '停止';

  @override
  String get addToFavourites => '加入收藏';

  @override
  String get removeFromFavourites => '取消收藏';

  @override
  String get languageBritishEnglish => '英式英语';

  @override
  String get languageAmericanEnglish => '美式英语';

  @override
  String get languageHindi => '印地语';

  @override
  String get languageGerman => '德语';

  @override
  String get groupEnglish => '英语';

  @override
  String sectionTitleNative(String native, String language) {
    return '$native · $language';
  }

  @override
  String get sectionShortUK => '英式';

  @override
  String get sectionShortUS => '美式';

  @override
  String get sectionSubtitleUK => 'Lorries、biscuits 和一杯地道的英式茶';

  @override
  String get sectionSubtitleUS => '土拨鼠、婴儿车和 Unique New York';

  @override
  String get difficultyEasy => '简单';

  @override
  String get difficultyMedium => '中等';

  @override
  String get difficultyHard => '困难';

  @override
  String get speedSlow => '慢速';

  @override
  String get speedNormal => '正常';

  @override
  String get speedFast => '快速';

  @override
  String get heroTitle => '绕绕舌头吧！';

  @override
  String get heroSubtitle => '先听母语者朗读，再一次比一次说得快。';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => '已练习';

  @override
  String get heroStatFavourites => '收藏';

  @override
  String get surpriseMe => '随机来一个';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: '已练习 $practised/$total',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => '为你推荐';

  @override
  String get recommendRevise => '该复习了：你练得最少的绕口令';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': '入门之选：简单绕口令',
      'medium': '入门之选：中等绕口令',
      'hard': '入门之选：困难绕口令',
      'other': '入门之选：一个绕口令',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': '你在练的$language：新的简单绕口令',
      'medium': '你在练的$language：新的中等绕口令',
      'hard': '你在练的$language：新的困难绕口令',
      'other': '你在练的$language：新的绕口令',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return '试试$language的新内容';
  }

  @override
  String get searchTwistersHint => '搜索绕口令';

  @override
  String get filterAll => '全部';

  @override
  String get noTwistersMatch => '没有匹配的绕口令。';

  @override
  String get favouritesEmpty => '点任意绕口令上的 ♡，就能收藏到这里。';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '已练 $count 次',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · 滑动查看更多';
  }

  @override
  String get pronunciationLabel => '读音';

  @override
  String get meaningLabel => '释义';

  @override
  String repeatInARow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '连续 $count 次',
    );
    return '$_temp0';
  }

  @override
  String get saidIt => '我说出来了！';

  @override
  String get practiseFirstTry => '第一次已记录。现在说快一点！';

  @override
  String get practiseThreeTimes => '三次了！舌头热起来了。';

  @override
  String get practiseTenTimes => '十次了。这个你已经掌握了！';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '真棒！已练习 $count 次。',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return '此设备没有 $locale 语音。请在系统的文字转语音设置中添加。';
  }

  @override
  String get settingsAppearance => '外观';

  @override
  String get themeSystem => '跟随系统';

  @override
  String get themeLight => '浅色';

  @override
  String get themeDark => '深色';

  @override
  String get settingsLanguages => '语言';

  @override
  String get settingsLanguagesHelp => '选择你想学的语言。隐藏的语言不会出现在首页上。';

  @override
  String get settingsPlayback => '播放';

  @override
  String get settingsSpeakingSpeed => '语速';

  @override
  String get settingsRepeatChallenge => '重复挑战';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '连续播放 $count 次',
      one: '只播放 1 次',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => '减少次数';

  @override
  String get moreRepeats => '增加次数';

  @override
  String get settingsDisplay => '显示';

  @override
  String get showPronunciation => '显示读音';

  @override
  String get showPronunciationHelp => '印地语绕口令下方显示拉丁字母拼写';

  @override
  String get showMeaning => '显示释义';

  @override
  String get showMeaningHelp => '印地语和德语的英文翻译';

  @override
  String get settingsVoices => '语音';

  @override
  String get settingsVoicesHelp =>
      '绕口令播放的是母语者的录音。只有缺少录音时，才会使用手机的文字转语音。如果某种语言显示“未安装”，请在手机的文字转语音设置中添加。';

  @override
  String get voiceInstalled => '已安装';

  @override
  String get voiceNotInstalled => '未安装';

  @override
  String get voiceUnknown => '未知';

  @override
  String get voiceChecking => '检查中…';

  @override
  String voiceStatusLine(String locale, String status) {
    return '$locale · $status';
  }

  @override
  String testVoice(String language) {
    return '试听$language语音';
  }

  @override
  String get settingsYourData => '你的数据';

  @override
  String get resetProgress => '重置练习进度';

  @override
  String get resetProgressTitle => '重置进度？';

  @override
  String get resetProgressBody => '所有练习次数都将归零。';

  @override
  String get resetProgressDone => '练习进度已重置';

  @override
  String get clearFavourites => '清空收藏';

  @override
  String get clearFavouritesTitle => '清空收藏？';

  @override
  String get clearFavouritesBody => '所有绕口令都将从收藏中移除。';

  @override
  String get clearFavouritesDone => '收藏已清空';

  @override
  String get dialogCancel => '取消';

  @override
  String get dialogClear => '清空';

  @override
  String get settingsAbout => '关于';

  @override
  String aboutVersion(String version) {
    return '版本 $version';
  }

  @override
  String get privacyChoices => '隐私选项';

  @override
  String get privacyChoicesHelp => '更改广告同意设置';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String get settingsAds => '广告';

  @override
  String get adFreeWatch => '1 小时无广告';

  @override
  String get adFreeWatchHelp => '观看一段短视频';

  @override
  String adFreeActive(String time) {
    return '$time 前无广告';
  }

  @override
  String adFreeThanks(String time) {
    return '谢谢！$time 前不显示广告。';
  }

  @override
  String get adFreeUnavailable => '暂时没有可用的视频，请稍后再试。';
}

/// The translations for Chinese, using the Han script (`zh_Hant`).
class AppLocalizationsZhHant extends AppLocalizationsZh {
  AppLocalizationsZhHant() : super('zh_Hant');

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'App 語言';

  @override
  String get languageSystemDefault => '系統預設';

  @override
  String languageFollowsDevice(String language) {
    return '依照裝置 · $language';
  }

  @override
  String get languageSearchHint => '搜尋語言';

  @override
  String appCredit(String name) {
    return '由 $name 用 ❤️ 打造';
  }

  @override
  String get favouritesTitle => '我的最愛';

  @override
  String get settingsTitle => '設定';

  @override
  String get actionListen => '聽一聽';

  @override
  String get actionStop => '停止';

  @override
  String get addToFavourites => '加入我的最愛';

  @override
  String get removeFromFavourites => '從我的最愛移除';

  @override
  String get languageBritishEnglish => '英式英文';

  @override
  String get languageAmericanEnglish => '美式英文';

  @override
  String get languageHindi => '印地文';

  @override
  String get languageGerman => '德文';

  @override
  String get groupEnglish => '英文';

  @override
  String sectionTitleNative(String native, String language) {
    return '$native · $language';
  }

  @override
  String get sectionShortUK => '英式';

  @override
  String get sectionShortUS => '美式';

  @override
  String get sectionSubtitleUK => 'Lorries、biscuits 和一杯道地的英式紅茶';

  @override
  String get sectionSubtitleUS => '土撥鼠、嬰兒車和 Unique New York';

  @override
  String get difficultyEasy => '簡單';

  @override
  String get difficultyMedium => '中等';

  @override
  String get difficultyHard => '困難';

  @override
  String get speedSlow => '慢速';

  @override
  String get speedNormal => '正常';

  @override
  String get speedFast => '快速';

  @override
  String get heroTitle => '繞繞舌頭吧！';

  @override
  String get heroSubtitle => '先聽母語人士朗讀，再一次比一次說得快。';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => '已練習';

  @override
  String get heroStatFavourites => '最愛';

  @override
  String get surpriseMe => '隨機來一個';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: '已練習 $practised/$total',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => '為你推薦';

  @override
  String get recommendRevise => '該複習了：你練得最少的繞口令';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': '入門之選：簡單繞口令',
      'medium': '入門之選：中等繞口令',
      'hard': '入門之選：困難繞口令',
      'other': '入門之選：一則繞口令',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': '你在練的$language：新的簡單繞口令',
      'medium': '你在練的$language：新的中等繞口令',
      'hard': '你在練的$language：新的困難繞口令',
      'other': '你在練的$language：新的繞口令',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return '試試$language的新內容';
  }

  @override
  String get searchTwistersHint => '搜尋繞口令';

  @override
  String get filterAll => '全部';

  @override
  String get noTwistersMatch => '沒有符合的繞口令。';

  @override
  String get favouritesEmpty => '點任一繞口令上的 ♡，就能收進這裡。';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '已練 $count 次',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · 滑動看更多';
  }

  @override
  String get pronunciationLabel => '讀音';

  @override
  String get meaningLabel => '釋義';

  @override
  String repeatInARow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '連續 $count 次',
    );
    return '$_temp0';
  }

  @override
  String get saidIt => '我說出來了！';

  @override
  String get practiseFirstTry => '第一次已記錄。現在說快一點！';

  @override
  String get practiseThreeTimes => '三次了！舌頭熱起來了。';

  @override
  String get practiseTenTimes => '十次了。這個你已經掌握了！';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '太棒了！已練習 $count 次。',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return '這部裝置沒有 $locale 語音。請在系統的文字轉語音設定中新增。';
  }

  @override
  String get settingsAppearance => '外觀';

  @override
  String get themeSystem => '系統';

  @override
  String get themeLight => '淺色';

  @override
  String get themeDark => '深色';

  @override
  String get settingsLanguages => '語言';

  @override
  String get settingsLanguagesHelp => '選擇你想學的語言。隱藏的語言不會出現在首頁上。';

  @override
  String get settingsPlayback => '播放';

  @override
  String get settingsSpeakingSpeed => '語速';

  @override
  String get settingsRepeatChallenge => '重複挑戰';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '連續播放 $count 次',
      one: '只播放 1 次',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => '減少次數';

  @override
  String get moreRepeats => '增加次數';

  @override
  String get settingsDisplay => '顯示';

  @override
  String get showPronunciation => '顯示讀音';

  @override
  String get showPronunciationHelp => '印地文繞口令下方顯示羅馬拼音';

  @override
  String get showMeaning => '顯示釋義';

  @override
  String get showMeaningHelp => '印地文和德文的英文翻譯';

  @override
  String get settingsVoices => '語音';

  @override
  String get settingsVoicesHelp =>
      '繞口令播放的是母語人士的錄音。只有缺少錄音時，才會使用手機的文字轉語音。如果某種語言顯示「未安裝」，請到手機的文字轉語音設定中新增。';

  @override
  String get voiceInstalled => '已安裝';

  @override
  String get voiceNotInstalled => '未安裝';

  @override
  String get voiceUnknown => '不明';

  @override
  String get voiceChecking => '檢查中…';

  @override
  String voiceStatusLine(String locale, String status) {
    return '$locale · $status';
  }

  @override
  String testVoice(String language) {
    return '試聽$language語音';
  }

  @override
  String get settingsYourData => '你的資料';

  @override
  String get resetProgress => '重設練習進度';

  @override
  String get resetProgressTitle => '要重設進度嗎？';

  @override
  String get resetProgressBody => '所有練習次數都會歸零。';

  @override
  String get resetProgressDone => '練習進度已重設';

  @override
  String get clearFavourites => '清除我的最愛';

  @override
  String get clearFavouritesTitle => '要清除我的最愛嗎？';

  @override
  String get clearFavouritesBody => '所有繞口令都會從我的最愛中移除。';

  @override
  String get clearFavouritesDone => '已清除我的最愛';

  @override
  String get dialogCancel => '取消';

  @override
  String get dialogClear => '清除';

  @override
  String get settingsAbout => '關於';

  @override
  String aboutVersion(String version) {
    return '版本 $version';
  }

  @override
  String get privacyChoices => '隱私權選項';

  @override
  String get privacyChoicesHelp => '變更廣告同意設定';

  @override
  String get privacyPolicy => '隱私權政策';

  @override
  String get settingsAds => '廣告';

  @override
  String get adFreeWatch => '1 小時無廣告';

  @override
  String get adFreeWatchHelp => '觀看一段短影片';

  @override
  String adFreeActive(String time) {
    return '$time 前無廣告';
  }

  @override
  String adFreeThanks(String time) {
    return '謝謝！$time 前不會顯示廣告。';
  }

  @override
  String get adFreeUnavailable => '目前沒有可播放的影片，請稍後再試。';
}
