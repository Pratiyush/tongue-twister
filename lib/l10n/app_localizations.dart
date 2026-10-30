import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_bg.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_cs.dart';
import 'app_localizations_da.dart';
import 'app_localizations_de.dart';
import 'app_localizations_el.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_fi.dart';
import 'app_localizations_fil.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_he.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_hr.dart';
import 'app_localizations_hu.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_ms.dart';
import 'app_localizations_nb.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ro.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_sk.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_sw.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ar'),
    Locale('bg'),
    Locale('bn'),
    Locale('cs'),
    Locale('da'),
    Locale('de'),
    Locale('el'),
    Locale('es'),
    Locale('fa'),
    Locale('fi'),
    Locale('fil'),
    Locale('fr'),
    Locale('he'),
    Locale('hi'),
    Locale('hr'),
    Locale('hu'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('ms'),
    Locale('nb'),
    Locale('nl'),
    Locale('pl'),
    Locale('pt'),
    Locale('pt', 'PT'),
    Locale('ro'),
    Locale('ru'),
    Locale('sk'),
    Locale('sv'),
    Locale('sw'),
    Locale('ta'),
    Locale('th'),
    Locale('tr'),
    Locale('uk'),
    Locale('ur'),
    Locale('vi'),
    Locale('zh'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
  ];

  /// Brand name, app bar title. Do NOT translate.
  ///
  /// In en, this message translates to:
  /// **'Tongue Twisters'**
  String get appTitle;

  /// Settings row and screen title for choosing the UI language. Max ~20 chars.
  ///
  /// In en, this message translates to:
  /// **'App language'**
  String get settingsLanguage;

  /// First option in the language list: follow the phone's language. Max ~20 chars.
  ///
  /// In en, this message translates to:
  /// **'System default'**
  String get languageSystemDefault;

  /// Subtitle under 'System default'; {language} is a flag + language name like '🇩🇪 Deutsch'.
  ///
  /// In en, this message translates to:
  /// **'Follows your device · {language}'**
  String languageFollowsDevice(String language);

  /// Hint text in the search box on the language list. Max ~24 chars.
  ///
  /// In en, this message translates to:
  /// **'Search languages'**
  String get languageSearchHint;

  /// Credit line in the home footer and Settings → About. {name} is the developer's name, never translated. Keep the ❤️ emoji. Max ~40 chars plus the name.
  ///
  /// In en, this message translates to:
  /// **'Made with ❤️ by {name}'**
  String appCredit(String name);

  /// Home app-bar heart button tooltip and the Favourites screen title. Max ~20 chars.
  ///
  /// In en, this message translates to:
  /// **'Favourites'**
  String get favouritesTitle;

  /// Home app-bar gear button tooltip and the Settings screen title. Max ~20 chars.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;

  /// Button / tooltip that plays a twister aloud. Max ~12 chars.
  ///
  /// In en, this message translates to:
  /// **'Listen'**
  String get actionListen;

  /// Button / tooltip that stops playback. Max ~12 chars.
  ///
  /// In en, this message translates to:
  /// **'Stop'**
  String get actionStop;

  /// Tooltip on the empty heart icon of a twister. Max ~30 chars.
  ///
  /// In en, this message translates to:
  /// **'Add to favourites'**
  String get addToFavourites;

  /// Tooltip on the filled heart icon of a twister. Max ~30 chars.
  ///
  /// In en, this message translates to:
  /// **'Remove from favourites'**
  String get removeFromFavourites;

  /// Name of the British English section (home card, app bar, settings) and used inside sentences. Max ~20 chars.
  ///
  /// In en, this message translates to:
  /// **'British English'**
  String get languageBritishEnglish;

  /// Name of the American English section (home card, app bar, settings) and used inside sentences. Max ~20 chars.
  ///
  /// In en, this message translates to:
  /// **'American English'**
  String get languageAmericanEnglish;

  /// The language name Hindi: home heading, chips, and inside sentences. Max ~14 chars.
  ///
  /// In en, this message translates to:
  /// **'Hindi'**
  String get languageHindi;

  /// The language name German: home heading, chips, and inside sentences. Max ~14 chars.
  ///
  /// In en, this message translates to:
  /// **'German'**
  String get languageGerman;

  /// Home-screen heading above the British and American English sections. Max ~14 chars.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get groupEnglish;

  /// Section title for non-English sections, e.g. 'हिन्दी · Hindi'. {native} is the language's own name and is never translated; {language} is the translated language name. Usually keep as is.
  ///
  /// In en, this message translates to:
  /// **'{native} · {language}'**
  String sectionTitleNative(String native, String language);

  /// Very short label for British English on chips next to a flag. Max ~6 chars.
  ///
  /// In en, this message translates to:
  /// **'UK'**
  String get sectionShortUK;

  /// Very short label for American English on chips next to a flag. Max ~6 chars.
  ///
  /// In en, this message translates to:
  /// **'US'**
  String get sectionShortUS;

  /// Tagline under 'British English' on the home card and in Settings; a playful hint at British vocabulary. Max ~45 chars.
  ///
  /// In en, this message translates to:
  /// **'Lorries, biscuits and a proper cup of tea'**
  String get sectionSubtitleUK;

  /// Tagline under 'American English' on the home card and in Settings; a playful hint at American twisters. Max ~45 chars.
  ///
  /// In en, this message translates to:
  /// **'Woodchucks, buggies and unique New York'**
  String get sectionSubtitleUS;

  /// Difficulty badge and filter chip. Max ~10 chars.
  ///
  /// In en, this message translates to:
  /// **'Easy'**
  String get difficultyEasy;

  /// Difficulty badge and filter chip. Max ~10 chars.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get difficultyMedium;

  /// Difficulty badge and filter chip. Max ~10 chars.
  ///
  /// In en, this message translates to:
  /// **'Hard'**
  String get difficultyHard;

  /// Playback speed segment (three segments share a 360 dp row). Max ~8 chars.
  ///
  /// In en, this message translates to:
  /// **'Slow'**
  String get speedSlow;

  /// Playback speed segment (three segments share a 360 dp row). Max ~8 chars.
  ///
  /// In en, this message translates to:
  /// **'Normal'**
  String get speedNormal;

  /// Playback speed segment (three segments share a 360 dp row). Max ~8 chars.
  ///
  /// In en, this message translates to:
  /// **'Fast'**
  String get speedFast;

  /// Big headline on the home-screen banner. Max ~24 chars.
  ///
  /// In en, this message translates to:
  /// **'Twist your tongue!'**
  String get heroTitle;

  /// Line under the home banner headline. Max ~70 chars.
  ///
  /// In en, this message translates to:
  /// **'Listen to a native voice, then say it faster each time.'**
  String get heroSubtitle;

  /// Big number on the home banner: twisters practised out of all visible twisters, e.g. '3/100'.
  ///
  /// In en, this message translates to:
  /// **'{done}/{total}'**
  String heroStatRatio(int done, int total);

  /// Small lowercase label under the 'done/total' number on the home banner. Max ~12 chars.
  ///
  /// In en, this message translates to:
  /// **'practised'**
  String get heroStatPractised;

  /// Small lowercase label under the favourites count on the home banner. Max ~12 chars.
  ///
  /// In en, this message translates to:
  /// **'favourites'**
  String get heroStatFavourites;

  /// Home banner button that opens a random twister. Max ~20 chars.
  ///
  /// In en, this message translates to:
  /// **'Surprise me'**
  String get surpriseMe;

  /// Under the progress bar on a home section card, e.g. '3 of 25 practised'. Max ~25 chars.
  ///
  /// In en, this message translates to:
  /// **'{practised, plural, other{{practised} of {total} practised}}'**
  String sectionProgress(int practised, int total);

  /// Heading of the suggestion card on the home screen. Max ~25 chars.
  ///
  /// In en, this message translates to:
  /// **'Recommended for you'**
  String get recommendedTitle;

  /// Why a twister is suggested: the user has tried everything; this is the one practised least. Max ~50 chars.
  ///
  /// In en, this message translates to:
  /// **'Time to revise: your least-practised twister'**
  String get recommendRevise;

  /// Why a twister is suggested to a brand-new user. {level} is easy, medium or hard. Max ~40 chars.
  ///
  /// In en, this message translates to:
  /// **'{level, select, easy{A good easy one to start with} medium{A good medium one to start with} hard{A good hard one to start with} other{A good one to start with}}'**
  String recommendStarter(String level);

  /// Why a twister is suggested: an untried one in a language the user already practises. {level} is easy, medium or hard; {language} is a language name like 'German'. Max ~60 chars.
  ///
  /// In en, this message translates to:
  /// **'{level, select, easy{New easy twister in {language}, a language you practise} medium{New medium twister in {language}, a language you practise} hard{New hard twister in {language}, a language you practise} other{New twister in {language}, a language you practise}}'**
  String recommendPractisedLanguage(String level, String language);

  /// Why a twister is suggested: a language the user hasn't practised yet. {language} is a language name like 'Hindi'. Max ~40 chars.
  ///
  /// In en, this message translates to:
  /// **'Try something new in {language}'**
  String recommendNewLanguage(String language);

  /// Hint in the search box on a section's twister list. Max ~24 chars.
  ///
  /// In en, this message translates to:
  /// **'Search twisters'**
  String get searchTwistersHint;

  /// Filter chip that shows every difficulty. Max ~8 chars.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get filterAll;

  /// Empty state when search or filter finds nothing. Max ~40 chars.
  ///
  /// In en, this message translates to:
  /// **'No twisters match.'**
  String get noTwistersMatch;

  /// Empty state on the Favourites screen. Keep the ♡ symbol. Max ~60 chars.
  ///
  /// In en, this message translates to:
  /// **'Tap ♡ on any twister to keep it here.'**
  String get favouritesEmpty;

  /// Small label on a twister: how many times the user said it, e.g. 'Practised 3×'. × means 'times'. Max ~16 chars.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, other{Practised {count}×}}'**
  String practisedTimes(int count);

  /// Below a twister on the practice screen: position in the list, e.g. '3 / 25 · swipe for more'. Max ~32 chars.
  ///
  /// In en, this message translates to:
  /// **'{current} / {total} · swipe for more'**
  String pagerSwipeHint(int current, int total);

  /// Small caps heading above the romanised text of a Hindi twister (shown upper-cased). Max ~20 chars.
  ///
  /// In en, this message translates to:
  /// **'Pronunciation'**
  String get pronunciationLabel;

  /// Small caps heading above the translation of a twister (shown upper-cased). Max ~20 chars.
  ///
  /// In en, this message translates to:
  /// **'Meaning'**
  String get meaningLabel;

  /// Practice-screen button that plays the twister several times back to back, e.g. '3× in a row'. Half of a 360 dp row. Max ~16 chars.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, other{{count}× in a row}}'**
  String repeatInARow(int count);

  /// Big green button the user taps after saying the twister aloud. Max ~20 chars.
  ///
  /// In en, this message translates to:
  /// **'I said it!'**
  String get saidIt;

  /// Toast after the first 'I said it!' on a twister. Max ~50 chars.
  ///
  /// In en, this message translates to:
  /// **'First try logged. Now say it faster!'**
  String get practiseFirstTry;

  /// Toast after the third 'I said it!' on a twister. Max ~50 chars.
  ///
  /// In en, this message translates to:
  /// **'Three times! Your tongue is warming up.'**
  String get practiseThreeTimes;

  /// Toast after the tenth 'I said it!' on a twister. Max ~50 chars.
  ///
  /// In en, this message translates to:
  /// **'Ten times. You have mastered this one!'**
  String get practiseTenTimes;

  /// Toast after 'I said it!' for any other count. Max ~40 chars.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{Nice! Practised once.} other{Nice! Practised {count} times.}}'**
  String practisedCountToast(int count);

  /// Snackbar when the phone has no text-to-speech voice for a language. {locale} is a code like 'hi-IN'. Max ~100 chars.
  ///
  /// In en, this message translates to:
  /// **'No {locale} voice on this device. Add one in your system text-to-speech settings.'**
  String noVoiceForLocale(String locale);

  /// Settings section header. Max ~20 chars.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get settingsAppearance;

  /// Theme segment: follow the phone's light/dark setting. Max ~8 chars.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get themeSystem;

  /// Theme segment: light mode. Max ~8 chars.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get themeLight;

  /// Theme segment: dark mode. Max ~8 chars.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get themeDark;

  /// Settings section header for which twister languages to show. Max ~20 chars.
  ///
  /// In en, this message translates to:
  /// **'Languages'**
  String get settingsLanguages;

  /// Help text under the 'Languages' header in Settings. Max ~100 chars.
  ///
  /// In en, this message translates to:
  /// **'Choose the languages you want to learn. Hidden languages disappear from the home screen.'**
  String get settingsLanguagesHelp;

  /// Settings section header. Max ~20 chars.
  ///
  /// In en, this message translates to:
  /// **'Playback'**
  String get settingsPlayback;

  /// Settings row title above the speed buttons. Max ~24 chars.
  ///
  /// In en, this message translates to:
  /// **'Speaking speed'**
  String get settingsSpeakingSpeed;

  /// Settings row title for how many times '× in a row' plays. Max ~24 chars.
  ///
  /// In en, this message translates to:
  /// **'Repeat challenge'**
  String get settingsRepeatChallenge;

  /// Settings row subtitle under 'Repeat challenge'. Max ~40 chars.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{Plays a twister once} other{Plays a twister {count} times in a row}}'**
  String settingsRepeatSubtitle(int count);

  /// Current repeat count between the − and + buttons, e.g. '3×'.
  ///
  /// In en, this message translates to:
  /// **'{count}×'**
  String repeatCountValue(int count);

  /// Tooltip on the − button of 'Repeat challenge'. Max ~20 chars.
  ///
  /// In en, this message translates to:
  /// **'Fewer repeats'**
  String get fewerRepeats;

  /// Tooltip on the + button of 'Repeat challenge'. Max ~20 chars.
  ///
  /// In en, this message translates to:
  /// **'More repeats'**
  String get moreRepeats;

  /// Settings section header. Max ~20 chars.
  ///
  /// In en, this message translates to:
  /// **'Display'**
  String get settingsDisplay;

  /// Settings switch title. Max ~24 chars.
  ///
  /// In en, this message translates to:
  /// **'Show pronunciation'**
  String get showPronunciation;

  /// Settings switch subtitle. Max ~45 chars.
  ///
  /// In en, this message translates to:
  /// **'Romanised text under Hindi twisters'**
  String get showPronunciationHelp;

  /// Settings switch title. Max ~24 chars.
  ///
  /// In en, this message translates to:
  /// **'Show meaning'**
  String get showMeaning;

  /// Settings switch subtitle: the twisters' meanings are written in English. Max ~45 chars.
  ///
  /// In en, this message translates to:
  /// **'English translation for Hindi and German'**
  String get showMeaningHelp;

  /// Settings section header. Max ~20 chars.
  ///
  /// In en, this message translates to:
  /// **'Voices'**
  String get settingsVoices;

  /// Help paragraph under 'Voices' in Settings. Translate the Android/iOS menu paths using the phone's own menu names in your language if you know them. Max ~350 chars.
  ///
  /// In en, this message translates to:
  /// **'Twisters play recordings by native speakers. Your phone\'s text-to-speech voice is used only when a recording is missing. If a language is missing, install it in your system settings (Android: Settings → System → Languages → Text-to-speech; iOS: Settings → Accessibility → Spoken Content → Voices).'**
  String get settingsVoicesHelp;

  /// Voice status: the phone has a voice for this language. Max ~16 chars.
  ///
  /// In en, this message translates to:
  /// **'Installed'**
  String get voiceInstalled;

  /// Voice status: the phone lacks a voice for this language. Max ~16 chars.
  ///
  /// In en, this message translates to:
  /// **'Not installed'**
  String get voiceNotInstalled;

  /// Voice status: the check failed. Max ~16 chars.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get voiceUnknown;

  /// Voice status while checking. Max ~16 chars.
  ///
  /// In en, this message translates to:
  /// **'Checking…'**
  String get voiceChecking;

  /// Subtitle of a voice row, e.g. 'de-DE · Installed'. {locale} is a code; {status} is one of the voice statuses.
  ///
  /// In en, this message translates to:
  /// **'{locale} · {status}'**
  String voiceStatusLine(String locale, String status);

  /// Tooltip on the play button of a voice row. {language} is a short label like 'UK' or 'German'. Max ~30 chars.
  ///
  /// In en, this message translates to:
  /// **'Test {language} voice'**
  String testVoice(String language);

  /// Settings section header. Max ~20 chars.
  ///
  /// In en, this message translates to:
  /// **'Your data'**
  String get settingsYourData;

  /// Settings row that clears practice counts. Max ~30 chars.
  ///
  /// In en, this message translates to:
  /// **'Reset practice progress'**
  String get resetProgress;

  /// Confirmation dialog title. Max ~30 chars.
  ///
  /// In en, this message translates to:
  /// **'Reset progress?'**
  String get resetProgressTitle;

  /// Confirmation dialog text. Max ~80 chars.
  ///
  /// In en, this message translates to:
  /// **'All practice counts will be set back to zero.'**
  String get resetProgressBody;

  /// Snackbar after resetting. Max ~40 chars.
  ///
  /// In en, this message translates to:
  /// **'Practice progress reset'**
  String get resetProgressDone;

  /// Settings row that removes all favourites. Max ~30 chars.
  ///
  /// In en, this message translates to:
  /// **'Clear favourites'**
  String get clearFavourites;

  /// Confirmation dialog title. Max ~30 chars.
  ///
  /// In en, this message translates to:
  /// **'Clear favourites?'**
  String get clearFavouritesTitle;

  /// Confirmation dialog text. Max ~80 chars.
  ///
  /// In en, this message translates to:
  /// **'All twisters will be removed from your favourites.'**
  String get clearFavouritesBody;

  /// Snackbar after clearing favourites. Max ~40 chars.
  ///
  /// In en, this message translates to:
  /// **'Favourites cleared'**
  String get clearFavouritesDone;

  /// Dialog button that closes without changing anything. Max ~12 chars.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get dialogCancel;

  /// Dialog button that confirms a reset or clear. Max ~12 chars.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get dialogClear;

  /// Settings section header. Max ~20 chars.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get settingsAbout;

  /// First line of the About row, e.g. 'Version 1.0.0'. Max ~20 chars.
  ///
  /// In en, this message translates to:
  /// **'Version {version}'**
  String aboutVersion(String version);

  /// Settings row that reopens the ad-consent form (EU/UK). Max ~30 chars.
  ///
  /// In en, this message translates to:
  /// **'Privacy choices'**
  String get privacyChoices;

  /// Subtitle of 'Privacy choices'. Max ~40 chars.
  ///
  /// In en, this message translates to:
  /// **'Change your ad consent'**
  String get privacyChoicesHelp;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'ar',
    'bg',
    'bn',
    'cs',
    'da',
    'de',
    'el',
    'en',
    'es',
    'fa',
    'fi',
    'fil',
    'fr',
    'he',
    'hi',
    'hr',
    'hu',
    'id',
    'it',
    'ja',
    'ko',
    'ms',
    'nb',
    'nl',
    'pl',
    'pt',
    'ro',
    'ru',
    'sk',
    'sv',
    'sw',
    'ta',
    'th',
    'tr',
    'uk',
    'ur',
    'vi',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+script codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.scriptCode) {
          case 'Hant':
            return AppLocalizationsZhHant();
        }
        break;
      }
  }

  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'pt':
      {
        switch (locale.countryCode) {
          case 'PT':
            return AppLocalizationsPtPt();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'bg':
      return AppLocalizationsBg();
    case 'bn':
      return AppLocalizationsBn();
    case 'cs':
      return AppLocalizationsCs();
    case 'da':
      return AppLocalizationsDa();
    case 'de':
      return AppLocalizationsDe();
    case 'el':
      return AppLocalizationsEl();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fa':
      return AppLocalizationsFa();
    case 'fi':
      return AppLocalizationsFi();
    case 'fil':
      return AppLocalizationsFil();
    case 'fr':
      return AppLocalizationsFr();
    case 'he':
      return AppLocalizationsHe();
    case 'hi':
      return AppLocalizationsHi();
    case 'hr':
      return AppLocalizationsHr();
    case 'hu':
      return AppLocalizationsHu();
    case 'id':
      return AppLocalizationsId();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
    case 'ms':
      return AppLocalizationsMs();
    case 'nb':
      return AppLocalizationsNb();
    case 'nl':
      return AppLocalizationsNl();
    case 'pl':
      return AppLocalizationsPl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ro':
      return AppLocalizationsRo();
    case 'ru':
      return AppLocalizationsRu();
    case 'sk':
      return AppLocalizationsSk();
    case 'sv':
      return AppLocalizationsSv();
    case 'sw':
      return AppLocalizationsSw();
    case 'ta':
      return AppLocalizationsTa();
    case 'th':
      return AppLocalizationsTh();
    case 'tr':
      return AppLocalizationsTr();
    case 'uk':
      return AppLocalizationsUk();
    case 'ur':
      return AppLocalizationsUr();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
