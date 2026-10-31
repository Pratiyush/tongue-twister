// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'アプリの言語';

  @override
  String get languageSystemDefault => 'システムのデフォルト';

  @override
  String languageFollowsDevice(String language) {
    return '端末の設定に従う · $language';
  }

  @override
  String get languageSearchHint => '言語を検索';

  @override
  String appCredit(String name) {
    return '$name が ❤️ を込めて制作';
  }

  @override
  String get favouritesTitle => 'お気に入り';

  @override
  String get settingsTitle => '設定';

  @override
  String get actionListen => '聞く';

  @override
  String get actionStop => '停止';

  @override
  String get addToFavourites => 'お気に入りに追加';

  @override
  String get removeFromFavourites => 'お気に入りから削除';

  @override
  String get languageBritishEnglish => 'イギリス英語';

  @override
  String get languageAmericanEnglish => 'アメリカ英語';

  @override
  String get languageHindi => 'ヒンディー語';

  @override
  String get languageGerman => 'ドイツ語';

  @override
  String get groupEnglish => '英語';

  @override
  String sectionTitleNative(String native, String language) {
    return '$native · $language';
  }

  @override
  String get sectionShortUK => '英国';

  @override
  String get sectionShortUS => '米国';

  @override
  String get sectionSubtitleUK => 'Lorries、biscuits、そして本格的な紅茶';

  @override
  String get sectionSubtitleUS => 'ウッドチャック、ベビーカー、Unique New York';

  @override
  String get difficultyEasy => 'やさしい';

  @override
  String get difficultyMedium => 'ふつう';

  @override
  String get difficultyHard => 'むずかしい';

  @override
  String get speedSlow => 'ゆっくり';

  @override
  String get speedNormal => 'ふつう';

  @override
  String get speedFast => '速い';

  @override
  String get heroTitle => '舌を回そう！';

  @override
  String get heroSubtitle => 'ネイティブの声を聞いて、毎回もっと速く言ってみよう。';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => '練習済み';

  @override
  String get heroStatFavourites => 'お気に入り';

  @override
  String get surpriseMe => 'おまかせ';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: '$total 個中 $practised 個練習済み',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => 'あなたへのおすすめ';

  @override
  String get recommendRevise => '復習しよう：いちばん練習が少ない早口言葉';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'はじめにおすすめ：やさしい早口言葉',
      'medium': 'はじめにおすすめ：ふつうの早口言葉',
      'hard': 'はじめにおすすめ：むずかしい早口言葉',
      'other': 'はじめにおすすめの早口言葉',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': '練習中の$languageから、新しいやさしい早口言葉',
      'medium': '練習中の$languageから、新しいふつうの早口言葉',
      'hard': '練習中の$languageから、新しいむずかしい早口言葉',
      'other': '練習中の$languageから、新しい早口言葉',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return '$languageで新しいことに挑戦';
  }

  @override
  String get searchTwistersHint => '早口言葉を検索';

  @override
  String get filterAll => 'すべて';

  @override
  String get noTwistersMatch => '一致する早口言葉はありません。';

  @override
  String get favouritesEmpty => '早口言葉の ♡ をタップするとここに保存されます。';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count回練習済み',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · スワイプで次へ';
  }

  @override
  String get pronunciationLabel => '読み方';

  @override
  String get meaningLabel => '意味';

  @override
  String repeatInARow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count回連続',
    );
    return '$_temp0';
  }

  @override
  String get saidIt => '言えた！';

  @override
  String get practiseFirstTry => '1回目を記録。次はもっと速く！';

  @override
  String get practiseThreeTimes => '3回目！舌が温まってきたね。';

  @override
  String get practiseTenTimes => '10回達成。これはもう完璧！';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'いいね！$count回練習しました。',
      one: 'いいね！1回練習しました。',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return 'この端末には$localeの音声がありません。システムのテキスト読み上げ設定で追加してください。';
  }

  @override
  String get settingsAppearance => '外観';

  @override
  String get themeSystem => 'システム';

  @override
  String get themeLight => 'ライト';

  @override
  String get themeDark => 'ダーク';

  @override
  String get settingsLanguages => '言語';

  @override
  String get settingsLanguagesHelp => '学びたい言語を選んでね。非表示にした言語はホーム画面から消えます。';

  @override
  String get settingsPlayback => '再生';

  @override
  String get settingsSpeakingSpeed => '話す速さ';

  @override
  String get settingsRepeatChallenge => '連続チャレンジ';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count回連続で再生',
      one: '1回だけ再生',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => '回数を減らす';

  @override
  String get moreRepeats => '回数を増やす';

  @override
  String get settingsDisplay => '表示';

  @override
  String get showPronunciation => '読み方を表示';

  @override
  String get showPronunciationHelp => 'ヒンディー語の早口言葉にローマ字を表示';

  @override
  String get showMeaning => '意味を表示';

  @override
  String get showMeaningHelp => 'ヒンディー語とドイツ語の英語訳';

  @override
  String get settingsVoices => '音声';

  @override
  String get settingsVoicesHelp =>
      '早口言葉はネイティブ話者の録音で再生されます。スマホのテキスト読み上げ音声は、録音がないときだけ使います。言語が「未インストール」と表示されたら、スマホのテキスト読み上げ設定で追加してください。';

  @override
  String get voiceInstalled => 'インストール済み';

  @override
  String get voiceNotInstalled => '未インストール';

  @override
  String get voiceUnknown => '不明';

  @override
  String get voiceChecking => '確認中…';

  @override
  String voiceStatusLine(String locale, String status) {
    return '$locale · $status';
  }

  @override
  String testVoice(String language) {
    return '$languageの音声をテスト';
  }

  @override
  String get settingsYourData => 'あなたのデータ';

  @override
  String get resetProgress => '練習の記録をリセット';

  @override
  String get resetProgressTitle => '記録をリセットしますか？';

  @override
  String get resetProgressBody => 'すべての練習回数が 0 に戻ります。';

  @override
  String get resetProgressDone => '練習の記録をリセットしました';

  @override
  String get clearFavourites => 'お気に入りを消去';

  @override
  String get clearFavouritesTitle => 'お気に入りを消去しますか？';

  @override
  String get clearFavouritesBody => 'すべての早口言葉がお気に入りから削除されます。';

  @override
  String get clearFavouritesDone => 'お気に入りを消去しました';

  @override
  String get dialogCancel => 'キャンセル';

  @override
  String get dialogClear => '消去';

  @override
  String get settingsAbout => 'このアプリについて';

  @override
  String aboutVersion(String version) {
    return 'バージョン $version';
  }

  @override
  String get privacyChoices => 'プライバシー設定';

  @override
  String get privacyChoicesHelp => '広告の同意を変更';

  @override
  String get settingsAds => '広告';

  @override
  String get adFreeWatch => '1時間広告なしで使う';

  @override
  String get adFreeWatchHelp => '短い動画を1本見る';

  @override
  String adFreeActive(String time) {
    return '$timeまで広告なし';
  }

  @override
  String adFreeThanks(String time) {
    return 'ありがとう！$timeまで広告なし。';
  }

  @override
  String get adFreeUnavailable => '今は見られる動画がありません。あとでもう一度お試しください。';
}
