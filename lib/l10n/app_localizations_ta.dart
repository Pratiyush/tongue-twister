// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'ஆப் மொழி';

  @override
  String get languageSystemDefault => 'சிஸ்டம் மொழி';

  @override
  String languageFollowsDevice(String language) {
    return 'உங்கள் சாதனப்படி · $language';
  }

  @override
  String get languageSearchHint => 'மொழிகளைத் தேடுக';

  @override
  String appCredit(String name) {
    return '$name ❤️ உடன் உருவாக்கியது';
  }

  @override
  String get favouritesTitle => 'பிடித்தவை';

  @override
  String get settingsTitle => 'அமைப்புகள்';

  @override
  String get actionListen => 'கேளுங்கள்';

  @override
  String get actionStop => 'நிறுத்து';

  @override
  String get addToFavourites => 'பிடித்தவற்றில் சேர்';

  @override
  String get removeFromFavourites => 'பிடித்தவற்றிலிருந்து நீக்கு';

  @override
  String get languageBritishEnglish => 'பிரிட்டிஷ் ஆங்கிலம்';

  @override
  String get languageAmericanEnglish => 'அமெரிக்க ஆங்கிலம்';

  @override
  String get languageHindi => 'இந்தி';

  @override
  String get languageGerman => 'ஜெர்மன்';

  @override
  String get groupEnglish => 'ஆங்கிலம்';

  @override
  String sectionTitleNative(String native, String language) {
    return '$native · $language';
  }

  @override
  String get sectionShortUK => 'UK';

  @override
  String get sectionShortUS => 'US';

  @override
  String get sectionSubtitleUK => 'Lorries, biscuits, ஒரு கப் நல்ல டீ';

  @override
  String get sectionSubtitleUS => 'உட்சக், பக்கி, Unique New York';

  @override
  String get difficultyEasy => 'எளிது';

  @override
  String get difficultyMedium => 'நடுத்தரம்';

  @override
  String get difficultyHard => 'கடினம்';

  @override
  String get speedSlow => 'மெதுவாக';

  @override
  String get speedNormal => 'இயல்பு';

  @override
  String get speedFast => 'வேகமாக';

  @override
  String get heroTitle => 'நாக்கைச் சுழற்றுங்கள்!';

  @override
  String get heroSubtitle =>
      'தாய்மொழியாளர் குரலைக் கேட்டு, ஒவ்வொரு முறையும் வேகமாகச் சொல்லுங்கள்.';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => 'பயின்றவை';

  @override
  String get heroStatFavourites => 'பிடித்தவை';

  @override
  String get surpriseMe => 'ஏதாவது ஒன்று';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: '$total-ல் $practised பயின்றவை',
      one: '$total-ல் $practised பயின்றவை',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => 'உங்களுக்கான பரிந்துரை';

  @override
  String get recommendRevise =>
      'மீண்டும் பயிலும் நேரம்: மிகக் குறைவாகப் பயின்றது';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'தொடங்க ஒரு நல்ல எளியது',
      'medium': 'தொடங்க ஒரு நல்ல நடுத்தரமானது',
      'hard': 'தொடங்க ஒரு நல்ல கடினமானது',
      'other': 'தொடங்க ஒரு நல்லது',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'நீங்கள் பயிலும் மொழியில் புதிய எளியது: $language',
      'medium': 'நீங்கள் பயிலும் மொழியில் புதிய நடுத்தரமானது: $language',
      'hard': 'நீங்கள் பயிலும் மொழியில் புதிய கடினமானது: $language',
      'other': 'நீங்கள் பயிலும் மொழியில் புதியது: $language',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return 'புதிதாக முயலுங்கள்: $language';
  }

  @override
  String get searchTwistersHint => 'டங் ட்விஸ்டர் தேடுக';

  @override
  String get filterAll => 'எல்லாம்';

  @override
  String get noTwistersMatch => 'எதுவும் பொருந்தவில்லை.';

  @override
  String get favouritesEmpty => 'சேமிக்க எந்த டங் ட்விஸ்டரிலும் ♡ தட்டுங்கள்.';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count× பயிற்சி',
      one: '$count× பயிற்சி',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · மேலும் காண ஸ்வைப் செய்க';
  }

  @override
  String get pronunciationLabel => 'உச்சரிப்பு';

  @override
  String get meaningLabel => 'பொருள்';

  @override
  String repeatInARow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'தொடர்ந்து $count×',
      one: 'தொடர்ந்து $count×',
    );
    return '$_temp0';
  }

  @override
  String get saidIt => 'சொல்லிவிட்டேன்!';

  @override
  String get practiseFirstTry =>
      'முதல் முயற்சி பதிவானது. இப்போது இன்னும் வேகமாக!';

  @override
  String get practiseThreeTimes => 'மூன்று முறை! நாக்கு சூடாகிறது.';

  @override
  String get practiseTenTimes => 'பத்து முறை. இதில் தேர்ந்துவிட்டீர்கள்!';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'அருமை! $count முறை பயிற்சி.',
      one: 'அருமை! $count முறை பயிற்சி.',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return 'இந்தச் சாதனத்தில் $locale குரல் இல்லை. சிஸ்டத்தின் உரையிலிருந்து பேச்சு அமைப்புகளில் சேர்க்கவும்.';
  }

  @override
  String get settingsAppearance => 'தோற்றம்';

  @override
  String get themeSystem => 'சிஸ்டம்';

  @override
  String get themeLight => 'வெளிர்';

  @override
  String get themeDark => 'இருள்';

  @override
  String get settingsLanguages => 'மொழிகள்';

  @override
  String get settingsLanguagesHelp =>
      'கற்க விரும்பும் மொழிகளைத் தேர்ந்தெடுங்கள். மறைத்த மொழிகள் முகப்புத் திரையில் தெரியாது.';

  @override
  String get settingsPlayback => 'இயக்கம்';

  @override
  String get settingsSpeakingSpeed => 'பேச்சு வேகம்';

  @override
  String get settingsRepeatChallenge => 'தொடர் சவால்';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'டங் ட்விஸ்டரைத் தொடர்ந்து $count முறை இயக்கும்',
      one: 'டங் ட்விஸ்டரை $count முறை இயக்கும்',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => 'குறைவான முறை';

  @override
  String get moreRepeats => 'அதிக முறை';

  @override
  String get settingsDisplay => 'காட்சி';

  @override
  String get showPronunciation => 'உச்சரிப்பைக் காட்டு';

  @override
  String get showPronunciationHelp =>
      'இந்தி டங் ட்விஸ்டர்களின் கீழ் ரோமன் எழுத்து';

  @override
  String get showMeaning => 'பொருளைக் காட்டு';

  @override
  String get showMeaningHelp => 'இந்தி, ஜெர்மனுக்கு ஆங்கில மொழிபெயர்ப்பு';

  @override
  String get settingsVoices => 'குரல்கள்';

  @override
  String get settingsVoicesHelp =>
      'டங் ட்விஸ்டர்கள் தாய்மொழியாளர்களின் பதிவுகளில் ஒலிக்கும். பதிவு இல்லாதபோது மட்டுமே ஃபோனின் உரையிலிருந்து பேச்சு குரல் பயன்படும். ஒரு மொழி \"நிறுவப்படவில்லை\" எனக் காட்டினால், ஃபோனின் உரையிலிருந்து பேச்சு அமைப்புகளில் சேர்க்கவும்.';

  @override
  String get voiceInstalled => 'நிறுவப்பட்டது';

  @override
  String get voiceNotInstalled => 'நிறுவப்படவில்லை';

  @override
  String get voiceUnknown => 'தெரியவில்லை';

  @override
  String get voiceChecking => 'சரிபார்க்கிறது…';

  @override
  String voiceStatusLine(String locale, String status) {
    return '$locale · $status';
  }

  @override
  String testVoice(String language) {
    return 'குரலைச் சோதி: $language';
  }

  @override
  String get settingsYourData => 'உங்கள் தரவு';

  @override
  String get resetProgress => 'பயிற்சி முன்னேற்றத்தை மீட்டமை';

  @override
  String get resetProgressTitle => 'முன்னேற்றத்தை மீட்டமைக்கவா?';

  @override
  String get resetProgressBody => 'எல்லா பயிற்சி எண்ணிக்கைகளும் பூஜ்ஜியமாகும்.';

  @override
  String get resetProgressDone => 'முன்னேற்றம் மீட்டமைக்கப்பட்டது';

  @override
  String get clearFavourites => 'பிடித்தவற்றை அழி';

  @override
  String get clearFavouritesTitle => 'பிடித்தவற்றை அழிக்கவா?';

  @override
  String get clearFavouritesBody =>
      'எல்லா டங் ட்விஸ்டர்களும் பிடித்தவற்றிலிருந்து நீக்கப்படும்.';

  @override
  String get clearFavouritesDone => 'பிடித்தவை அழிக்கப்பட்டன';

  @override
  String get dialogCancel => 'ரத்துசெய்';

  @override
  String get dialogClear => 'அழிக்கவும்';

  @override
  String get settingsAbout => 'ஆப் பற்றி';

  @override
  String aboutVersion(String version) {
    return 'பதிப்பு $version';
  }

  @override
  String get privacyChoices => 'தனியுரிமைத் தேர்வுகள்';

  @override
  String get privacyChoicesHelp => 'விளம்பர ஒப்புதலை மாற்றுக';

  @override
  String get privacyPolicy => 'தனியுரிமைக் கொள்கை';

  @override
  String get settingsAds => 'விளம்பரங்கள்';

  @override
  String get adFreeWatch => '1 மணிநேரம் விளம்பரமின்றி';

  @override
  String get adFreeWatchHelp => 'ஒரு சிறிய வீடியோ பாருங்கள்';

  @override
  String adFreeActive(String time) {
    return '$time வரை விளம்பரமில்லை';
  }

  @override
  String adFreeThanks(String time) {
    return 'நன்றி! $time வரை விளம்பரங்கள் இல்லை.';
  }

  @override
  String get adFreeUnavailable =>
      'இப்போது வீடியோ இல்லை. பிறகு மீண்டும் முயலுங்கள்.';
}
