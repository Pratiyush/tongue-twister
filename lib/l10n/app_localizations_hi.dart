// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'ऐप की भाषा';

  @override
  String get languageSystemDefault => 'सिस्टम डिफ़ॉल्ट';

  @override
  String languageFollowsDevice(String language) {
    return 'तुम्हारे डिवाइस के अनुसार · $language';
  }

  @override
  String get languageSearchHint => 'भाषा खोजो';

  @override
  String appCredit(String name) {
    return '$name ने ❤️ से बनाया';
  }

  @override
  String get favouritesTitle => 'पसंदीदा';

  @override
  String get settingsTitle => 'सेटिंग्स';

  @override
  String get actionListen => 'सुनो';

  @override
  String get actionStop => 'रोको';

  @override
  String get addToFavourites => 'पसंदीदा में जोड़ो';

  @override
  String get removeFromFavourites => 'पसंदीदा से हटाओ';

  @override
  String get languageBritishEnglish => 'ब्रिटिश अंग्रेज़ी';

  @override
  String get languageAmericanEnglish => 'अमेरिकी अंग्रेज़ी';

  @override
  String get languageHindi => 'हिंदी';

  @override
  String get languageGerman => 'जर्मन';

  @override
  String get groupEnglish => 'अंग्रेज़ी';

  @override
  String sectionTitleNative(String native, String language) {
    return '$native · $language';
  }

  @override
  String get sectionShortUK => 'UK';

  @override
  String get sectionShortUS => 'US';

  @override
  String get sectionSubtitleUK => 'Lorries, biscuits और कड़क चाय का प्याला';

  @override
  String get sectionSubtitleUS => 'वुडचक, बग्गियाँ और Unique New York';

  @override
  String get difficultyEasy => 'आसान';

  @override
  String get difficultyMedium => 'मध्यम';

  @override
  String get difficultyHard => 'कठिन';

  @override
  String get speedSlow => 'धीमा';

  @override
  String get speedNormal => 'सामान्य';

  @override
  String get speedFast => 'तेज़';

  @override
  String get heroTitle => 'ज़बान घुमाओ!';

  @override
  String get heroSubtitle => 'नेटिव स्पीकर से सुनो, फिर हर बार और तेज़ बोलो।';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => 'अभ्यास किए';

  @override
  String get heroStatFavourites => 'पसंदीदा';

  @override
  String get surpriseMe => 'चौंका दो';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: '$total में से $practised का अभ्यास',
      one: '$total में से $practised का अभ्यास',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => 'तुम्हारे लिए सुझाव';

  @override
  String get recommendRevise =>
      'दोहराने का समय: सबसे कम अभ्यास वाला टंग ट्विस्टर';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'शुरुआत के लिए बढ़िया आसान वाला',
      'medium': 'शुरुआत के लिए बढ़िया मध्यम वाला',
      'hard': 'शुरुआत के लिए बढ़िया कठिन वाला',
      'other': 'शुरुआत के लिए बढ़िया',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'तुम्हारी अभ्यास वाली भाषा $language में नया आसान टंग ट्विस्टर',
      'medium':
          'तुम्हारी अभ्यास वाली भाषा $language में नया मध्यम टंग ट्विस्टर',
      'hard': 'तुम्हारी अभ्यास वाली भाषा $language में नया कठिन टंग ट्विस्टर',
      'other': 'तुम्हारी अभ्यास वाली भाषा $language में नया टंग ट्विस्टर',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return '$language में कुछ नया आज़माओ';
  }

  @override
  String get searchTwistersHint => 'टंग ट्विस्टर खोजो';

  @override
  String get filterAll => 'सभी';

  @override
  String get noTwistersMatch => 'कोई टंग ट्विस्टर नहीं मिला।';

  @override
  String get favouritesEmpty =>
      'किसी भी टंग ट्विस्टर पर ♡ दबाओ, वो यहाँ सेव हो जाएगा।';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count× अभ्यास',
      one: '$count× अभ्यास',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · स्वाइप करो, और भी हैं';
  }

  @override
  String get pronunciationLabel => 'उच्चारण';

  @override
  String get meaningLabel => 'अर्थ';

  @override
  String repeatInARow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'लगातार $count×',
      one: 'लगातार $count×',
    );
    return '$_temp0';
  }

  @override
  String get saidIt => 'बोल दिया!';

  @override
  String get practiseFirstTry => 'पहली कोशिश दर्ज हुई। अब और तेज़ बोलो!';

  @override
  String get practiseThreeTimes => 'तीन बार! ज़बान गरम हो रही है।';

  @override
  String get practiseTenTimes => 'दस बार। ये वाला तो पक्का हो गया!';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'बढ़िया! $count बार अभ्यास हुआ।',
      one: 'बढ़िया! $count बार अभ्यास हुआ।',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return 'इस डिवाइस पर $locale की कोई आवाज़ नहीं है। सिस्टम की टेक्स्ट-टू-स्पीच सेटिंग्स में जोड़ लो।';
  }

  @override
  String get settingsAppearance => 'रंग-रूप';

  @override
  String get themeSystem => 'सिस्टम';

  @override
  String get themeLight => 'लाइट';

  @override
  String get themeDark => 'डार्क';

  @override
  String get settingsLanguages => 'भाषाएँ';

  @override
  String get settingsLanguagesHelp =>
      'वो भाषाएँ चुनो जो तुम सीखना चाहते हो। छिपी भाषाएँ होम स्क्रीन से हट जाती हैं।';

  @override
  String get settingsPlayback => 'प्लेबैक';

  @override
  String get settingsSpeakingSpeed => 'बोलने की रफ़्तार';

  @override
  String get settingsRepeatChallenge => 'दोहराने का चैलेंज';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'टंग ट्विस्टर लगातार $count बार चलता है',
      one: 'टंग ट्विस्टर $count बार चलता है',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => 'कम बार';

  @override
  String get moreRepeats => 'ज़्यादा बार';

  @override
  String get settingsDisplay => 'डिस्प्ले';

  @override
  String get showPronunciation => 'उच्चारण दिखाओ';

  @override
  String get showPronunciationHelp =>
      'हिंदी टंग ट्विस्टर के नीचे रोमन लिपि में';

  @override
  String get showMeaning => 'अर्थ दिखाओ';

  @override
  String get showMeaningHelp => 'हिंदी और जर्मन का अंग्रेज़ी अनुवाद';

  @override
  String get settingsVoices => 'आवाज़ें';

  @override
  String get settingsVoicesHelp =>
      'टंग ट्विस्टर नेटिव स्पीकर्स की रिकॉर्डिंग में चलते हैं। फ़ोन की टेक्स्ट-टू-स्पीच आवाज़ सिर्फ़ तब इस्तेमाल होती है जब रिकॉर्डिंग न हो। अगर कोई भाषा \"इंस्टॉल नहीं\" दिखे, तो उसे अपने फ़ोन की टेक्स्ट-टू-स्पीच सेटिंग्स में जोड़ लो।';

  @override
  String get voiceInstalled => 'इंस्टॉल है';

  @override
  String get voiceNotInstalled => 'इंस्टॉल नहीं';

  @override
  String get voiceUnknown => 'पता नहीं';

  @override
  String get voiceChecking => 'जाँच हो रही…';

  @override
  String voiceStatusLine(String locale, String status) {
    return '$locale · $status';
  }

  @override
  String testVoice(String language) {
    return '$language की आवाज़ टेस्ट करो';
  }

  @override
  String get settingsYourData => 'तुम्हारा डेटा';

  @override
  String get resetProgress => 'अभ्यास की प्रगति रीसेट करो';

  @override
  String get resetProgressTitle => 'प्रगति रीसेट करें?';

  @override
  String get resetProgressBody => 'अभ्यास की सारी गिनती शून्य हो जाएगी।';

  @override
  String get resetProgressDone => 'अभ्यास की प्रगति रीसेट हुई';

  @override
  String get clearFavourites => 'पसंदीदा साफ़ करो';

  @override
  String get clearFavouritesTitle => 'पसंदीदा साफ़ करें?';

  @override
  String get clearFavouritesBody =>
      'सारे टंग ट्विस्टर पसंदीदा से हटा दिए जाएँगे।';

  @override
  String get clearFavouritesDone => 'पसंदीदा साफ़ हो गए';

  @override
  String get dialogCancel => 'रद्द करो';

  @override
  String get dialogClear => 'साफ़ करो';

  @override
  String get settingsAbout => 'ऐप के बारे में';

  @override
  String aboutVersion(String version) {
    return 'वर्शन $version';
  }

  @override
  String get privacyChoices => 'प्राइवेसी विकल्प';

  @override
  String get privacyChoicesHelp => 'विज्ञापन की सहमति बदलो';

  @override
  String get privacyPolicy => 'निजता नीति';

  @override
  String get settingsAds => 'विज्ञापन';

  @override
  String get adFreeWatch => '1 घंटा बिना विज्ञापन';

  @override
  String get adFreeWatchHelp => 'एक छोटा वीडियो देखो';

  @override
  String adFreeActive(String time) {
    return '$time तक कोई विज्ञापन नहीं';
  }

  @override
  String adFreeThanks(String time) {
    return 'शुक्रिया! $time तक कोई विज्ञापन नहीं।';
  }

  @override
  String get adFreeUnavailable =>
      'अभी कोई वीडियो नहीं है। थोड़ी देर बाद फिर कोशिश करो।';
}
