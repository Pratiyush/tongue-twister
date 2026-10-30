// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class AppLocalizationsEl extends AppLocalizations {
  AppLocalizationsEl([String locale = 'el']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'Γλώσσα εφαρμογής';

  @override
  String get languageSystemDefault => 'Όπως το σύστημα';

  @override
  String languageFollowsDevice(String language) {
    return 'Όπως στη συσκευή · $language';
  }

  @override
  String get languageSearchHint => 'Αναζήτηση γλωσσών';

  @override
  String appCredit(String name) {
    return 'Φτιαγμένο με ❤️ από $name';
  }

  @override
  String get favouritesTitle => 'Αγαπημένα';

  @override
  String get settingsTitle => 'Ρυθμίσεις';

  @override
  String get actionListen => 'Άκουσε';

  @override
  String get actionStop => 'Σταμάτα';

  @override
  String get addToFavourites => 'Προσθήκη στα αγαπημένα';

  @override
  String get removeFromFavourites => 'Αφαίρεση από τα αγαπημένα';

  @override
  String get languageBritishEnglish => 'Βρετανικά αγγλικά';

  @override
  String get languageAmericanEnglish => 'Αμερικανικά αγγλικά';

  @override
  String get languageHindi => 'Χίντι';

  @override
  String get languageGerman => 'Γερμανικά';

  @override
  String get groupEnglish => 'Αγγλικά';

  @override
  String sectionTitleNative(String native, String language) {
    return '$native · $language';
  }

  @override
  String get sectionShortUK => 'UK';

  @override
  String get sectionShortUS => 'US';

  @override
  String get sectionSubtitleUK =>
      'Lorries, biscuits κι ένα σωστό φλιτζάνι τσάι';

  @override
  String get sectionSubtitleUS => 'Μαρμότες, καροτσάκια και Unique New York';

  @override
  String get difficultyEasy => 'Εύκολο';

  @override
  String get difficultyMedium => 'Μέτριο';

  @override
  String get difficultyHard => 'Δύσκολο';

  @override
  String get speedSlow => 'Αργά';

  @override
  String get speedNormal => 'Κανονικά';

  @override
  String get speedFast => 'Γρήγορα';

  @override
  String get heroTitle => 'Μπέρδεψε τη γλώσσα σου!';

  @override
  String get heroSubtitle =>
      'Άκου έναν φυσικό ομιλητή και πες το κάθε φορά πιο γρήγορα.';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => 'εξασκημένοι';

  @override
  String get heroStatFavourites => 'αγαπημένα';

  @override
  String get surpriseMe => 'Ξάφνιασέ με';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: 'Εξάσκηση: $practised από $total',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => 'Προτείνουμε για σένα';

  @override
  String get recommendRevise => 'Ώρα για επανάληψη: ο λιγότερο εξασκημένος σου';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Ένας εύκολος για αρχή',
      'medium': 'Ένας μέτριος για αρχή',
      'hard': 'Ένας δύσκολος για αρχή',
      'other': 'Ένας καλός για αρχή',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Νέος εύκολος σε γλώσσα που εξασκείς: $language',
      'medium': 'Νέος μέτριος σε γλώσσα που εξασκείς: $language',
      'hard': 'Νέος δύσκολος σε γλώσσα που εξασκείς: $language',
      'other': 'Νέος γλωσσοδέτης σε γλώσσα που εξασκείς: $language',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return 'Δοκίμασε κάτι νέο: $language';
  }

  @override
  String get searchTwistersHint => 'Αναζήτηση γλωσσοδετών';

  @override
  String get filterAll => 'Όλα';

  @override
  String get noTwistersMatch => 'Δεν βρέθηκε τίποτα.';

  @override
  String get favouritesEmpty =>
      'Πάτα ♡ σε έναν γλωσσοδέτη για να τον κρατήσεις εδώ.';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Εξάσκηση $count×',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · σύρε για άλλους';
  }

  @override
  String get pronunciationLabel => 'Προφορά';

  @override
  String get meaningLabel => 'Σημασία';

  @override
  String repeatInARow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count× στη σειρά',
    );
    return '$_temp0';
  }

  @override
  String get saidIt => 'Το είπα!';

  @override
  String get practiseFirstTry =>
      'Η πρώτη προσπάθεια καταγράφηκε. Τώρα πιο γρήγορα!';

  @override
  String get practiseThreeTimes => 'Τρεις φορές! Η γλώσσα σου ζεσταίνεται.';

  @override
  String get practiseTenTimes => 'Δέκα φορές. Αυτόν τον κατέκτησες!';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Μπράβο! Τον είπες $count φορές.',
      one: 'Μπράβο! Τον είπες μία φορά.',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return 'Δεν υπάρχει φωνή $locale στη συσκευή. Πρόσθεσε μία στις ρυθμίσεις κειμένου σε ομιλία.';
  }

  @override
  String get settingsAppearance => 'Εμφάνιση';

  @override
  String get themeSystem => 'Σύστημα';

  @override
  String get themeLight => 'Ανοιχτό';

  @override
  String get themeDark => 'Σκούρο';

  @override
  String get settingsLanguages => 'Γλώσσες';

  @override
  String get settingsLanguagesHelp =>
      'Διάλεξε τις γλώσσες που θες να μάθεις. Οι κρυφές γλώσσες χάνονται από την αρχική οθόνη.';

  @override
  String get settingsPlayback => 'Αναπαραγωγή';

  @override
  String get settingsSpeakingSpeed => 'Ταχύτητα ομιλίας';

  @override
  String get settingsRepeatChallenge => 'Πρόκληση επανάληψης';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Παίζει $count φορές στη σειρά',
      one: 'Παίζει τον γλωσσοδέτη μία φορά',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => 'Λιγότερες επαναλήψεις';

  @override
  String get moreRepeats => 'Πιο πολλές επαναλήψεις';

  @override
  String get settingsDisplay => 'Προβολή';

  @override
  String get showPronunciation => 'Εμφάνιση προφοράς';

  @override
  String get showPronunciationHelp => 'Λατινικοί χαρακτήρες κάτω από τα χίντι';

  @override
  String get showMeaning => 'Εμφάνιση σημασίας';

  @override
  String get showMeaningHelp => 'Αγγλική μετάφραση για χίντι και γερμανικά';

  @override
  String get settingsVoices => 'Φωνές';

  @override
  String get settingsVoicesHelp =>
      'Οι γλωσσοδέτες ακούγονται από ηχογραφήσεις φυσικών ομιλητών. Η συνθετική φωνή του κινητού σου χρησιμοποιείται μόνο αν λείπει ηχογράφηση. Αν μια γλώσσα φαίνεται μη εγκατεστημένη, πρόσθεσέ τη στις ρυθμίσεις μετατροπής κειμένου σε ομιλία στο κινητό.';

  @override
  String get voiceInstalled => 'Εγκατεστημένη';

  @override
  String get voiceNotInstalled => 'Μη εγκατεστημένη';

  @override
  String get voiceUnknown => 'Άγνωστη';

  @override
  String get voiceChecking => 'Έλεγχος…';

  @override
  String voiceStatusLine(String locale, String status) {
    return '$locale · $status';
  }

  @override
  String testVoice(String language) {
    return 'Δοκιμή φωνής: $language';
  }

  @override
  String get settingsYourData => 'Τα δεδομένα σου';

  @override
  String get resetProgress => 'Επαναφορά προόδου';

  @override
  String get resetProgressTitle => 'Επαναφορά προόδου;';

  @override
  String get resetProgressBody => 'Όλοι οι μετρητές εξάσκησης θα μηδενιστούν.';

  @override
  String get resetProgressDone => 'Η πρόοδος μηδενίστηκε';

  @override
  String get clearFavourites => 'Διαγραφή αγαπημένων';

  @override
  String get clearFavouritesTitle => 'Διαγραφή αγαπημένων;';

  @override
  String get clearFavouritesBody =>
      'Όλοι οι γλωσσοδέτες θα αφαιρεθούν από τα αγαπημένα σου.';

  @override
  String get clearFavouritesDone => 'Τα αγαπημένα διαγράφηκαν';

  @override
  String get dialogCancel => 'Ακύρωση';

  @override
  String get dialogClear => 'Διαγραφή';

  @override
  String get settingsAbout => 'Σχετικά';

  @override
  String aboutVersion(String version) {
    return 'Έκδοση $version';
  }

  @override
  String get privacyChoices => 'Επιλογές απορρήτου';

  @override
  String get privacyChoicesHelp => 'Άλλαξε τη συναίνεση για διαφημίσεις';
}
