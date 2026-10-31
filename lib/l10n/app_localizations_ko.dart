// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => '앱 언어';

  @override
  String get languageSystemDefault => '시스템 기본값';

  @override
  String languageFollowsDevice(String language) {
    return '기기 설정 따름 · $language';
  }

  @override
  String get languageSearchHint => '언어 검색';

  @override
  String appCredit(String name) {
    return '$name이(가) ❤️을 담아 만듦';
  }

  @override
  String get favouritesTitle => '즐겨찾기';

  @override
  String get settingsTitle => '설정';

  @override
  String get actionListen => '듣기';

  @override
  String get actionStop => '정지';

  @override
  String get addToFavourites => '즐겨찾기에 추가';

  @override
  String get removeFromFavourites => '즐겨찾기에서 삭제';

  @override
  String get languageBritishEnglish => '영국 영어';

  @override
  String get languageAmericanEnglish => '미국 영어';

  @override
  String get languageHindi => '힌디어';

  @override
  String get languageGerman => '독일어';

  @override
  String get groupEnglish => '영어';

  @override
  String sectionTitleNative(String native, String language) {
    return '$native · $language';
  }

  @override
  String get sectionShortUK => '영국';

  @override
  String get sectionShortUS => '미국';

  @override
  String get sectionSubtitleUK => 'Lorries, biscuits 그리고 제대로 된 홍차 한 잔';

  @override
  String get sectionSubtitleUS => '우드척, 유모차 그리고 Unique New York';

  @override
  String get difficultyEasy => '쉬움';

  @override
  String get difficultyMedium => '보통';

  @override
  String get difficultyHard => '어려움';

  @override
  String get speedSlow => '느리게';

  @override
  String get speedNormal => '보통';

  @override
  String get speedFast => '빠르게';

  @override
  String get heroTitle => '혀를 꼬아 봐요!';

  @override
  String get heroSubtitle => '원어민 목소리를 듣고, 매번 더 빠르게 말해 보세요.';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => '연습함';

  @override
  String get heroStatFavourites => '즐겨찾기';

  @override
  String get surpriseMe => '아무거나';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: '$total개 중 $practised개 연습함',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => '맞춤 추천';

  @override
  String get recommendRevise => '복습할 때예요: 가장 적게 연습한 잰말놀이';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': '시작하기 좋은 쉬운 잰말놀이',
      'medium': '시작하기 좋은 보통 잰말놀이',
      'hard': '시작하기 좋은 어려운 잰말놀이',
      'other': '시작하기 좋은 잰말놀이',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': '연습 중인 $language의 새 쉬운 잰말놀이',
      'medium': '연습 중인 $language의 새 보통 잰말놀이',
      'hard': '연습 중인 $language의 새 어려운 잰말놀이',
      'other': '연습 중인 $language의 새 잰말놀이',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return '$language로 새로운 도전';
  }

  @override
  String get searchTwistersHint => '잰말놀이 검색';

  @override
  String get filterAll => '전체';

  @override
  String get noTwistersMatch => '맞는 잰말놀이가 없어요.';

  @override
  String get favouritesEmpty => '잰말놀이의 ♡를 탭하면 여기에 저장돼요.';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count번 연습함',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · 밀어서 더 보기';
  }

  @override
  String get pronunciationLabel => '발음';

  @override
  String get meaningLabel => '뜻';

  @override
  String repeatInARow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count번 연속',
    );
    return '$_temp0';
  }

  @override
  String get saidIt => '말했어요!';

  @override
  String get practiseFirstTry => '첫 시도 기록! 이제 더 빠르게!';

  @override
  String get practiseThreeTimes => '세 번째! 혀가 풀리고 있어요.';

  @override
  String get practiseTenTimes => '열 번! 이제 완벽하게 익혔어요!';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '좋아요! $count번 연습했어요.',
      one: '좋아요! 1번 연습했어요.',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return '이 기기에 $locale 음성이 없어요. 시스템의 텍스트 음성 변환 설정에서 추가하세요.';
  }

  @override
  String get settingsAppearance => '화면 모드';

  @override
  String get themeSystem => '시스템';

  @override
  String get themeLight => '라이트';

  @override
  String get themeDark => '다크';

  @override
  String get settingsLanguages => '언어';

  @override
  String get settingsLanguagesHelp => '배우고 싶은 언어를 고르세요. 숨긴 언어는 홈 화면에서 사라져요.';

  @override
  String get settingsPlayback => '재생';

  @override
  String get settingsSpeakingSpeed => '말하기 속도';

  @override
  String get settingsRepeatChallenge => '반복 도전';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '잰말놀이를 $count번 연속 재생',
      one: '잰말놀이를 한 번 재생',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => '반복 줄이기';

  @override
  String get moreRepeats => '반복 늘리기';

  @override
  String get settingsDisplay => '표시';

  @override
  String get showPronunciation => '발음 표시';

  @override
  String get showPronunciationHelp => '힌디어 잰말놀이 아래 로마자 표기';

  @override
  String get showMeaning => '뜻 표시';

  @override
  String get showMeaningHelp => '힌디어와 독일어의 영어 번역';

  @override
  String get settingsVoices => '음성';

  @override
  String get settingsVoicesHelp =>
      '잰말놀이는 원어민 녹음으로 재생돼요. 휴대폰의 텍스트 음성 변환 음성은 녹음이 없을 때만 사용해요. 언어가 \'설치 안 됨\'으로 표시되면 휴대폰의 텍스트 음성 변환 설정에서 추가해 주세요.';

  @override
  String get voiceInstalled => '설치됨';

  @override
  String get voiceNotInstalled => '설치 안 됨';

  @override
  String get voiceUnknown => '알 수 없음';

  @override
  String get voiceChecking => '확인 중…';

  @override
  String voiceStatusLine(String locale, String status) {
    return '$locale · $status';
  }

  @override
  String testVoice(String language) {
    return '$language 음성 테스트';
  }

  @override
  String get settingsYourData => '내 데이터';

  @override
  String get resetProgress => '연습 기록 초기화';

  @override
  String get resetProgressTitle => '기록을 초기화할까요?';

  @override
  String get resetProgressBody => '모든 연습 횟수가 0으로 돌아가요.';

  @override
  String get resetProgressDone => '연습 기록을 초기화했어요';

  @override
  String get clearFavourites => '즐겨찾기 비우기';

  @override
  String get clearFavouritesTitle => '즐겨찾기를 비울까요?';

  @override
  String get clearFavouritesBody => '모든 문장이 즐겨찾기에서 삭제돼요.';

  @override
  String get clearFavouritesDone => '즐겨찾기를 비웠어요';

  @override
  String get dialogCancel => '취소';

  @override
  String get dialogClear => '지우기';

  @override
  String get settingsAbout => '정보';

  @override
  String aboutVersion(String version) {
    return '버전 $version';
  }

  @override
  String get privacyChoices => '개인정보 설정';

  @override
  String get privacyChoicesHelp => '광고 동의 변경';

  @override
  String get settingsAds => '광고';

  @override
  String get adFreeWatch => '1시간 광고 없이 이용';

  @override
  String get adFreeWatchHelp => '짧은 동영상 1개 보기';

  @override
  String adFreeActive(String time) {
    return '$time까지 광고 없음';
  }

  @override
  String adFreeThanks(String time) {
    return '고마워요! $time까지 광고가 없어요.';
  }

  @override
  String get adFreeUnavailable => '지금은 볼 수 있는 동영상이 없어요. 나중에 다시 해 보세요.';
}
