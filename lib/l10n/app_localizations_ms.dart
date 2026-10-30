// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malay (`ms`).
class AppLocalizationsMs extends AppLocalizations {
  AppLocalizationsMs([String locale = 'ms']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'Bahasa aplikasi';

  @override
  String get languageSystemDefault => 'Lalai sistem';

  @override
  String languageFollowsDevice(String language) {
    return 'Ikut peranti · $language';
  }

  @override
  String get languageSearchHint => 'Cari bahasa';

  @override
  String appCredit(String name) {
    return 'Dibuat dengan ❤️ oleh $name';
  }

  @override
  String get favouritesTitle => 'Kegemaran';

  @override
  String get settingsTitle => 'Tetapan';

  @override
  String get actionListen => 'Dengar';

  @override
  String get actionStop => 'Berhenti';

  @override
  String get addToFavourites => 'Tambah ke kegemaran';

  @override
  String get removeFromFavourites => 'Buang daripada kegemaran';

  @override
  String get languageBritishEnglish => 'Inggeris British';

  @override
  String get languageAmericanEnglish => 'Inggeris Amerika';

  @override
  String get languageHindi => 'Hindi';

  @override
  String get languageGerman => 'Jerman';

  @override
  String get groupEnglish => 'Inggeris';

  @override
  String sectionTitleNative(String native, String language) {
    return '$native · $language';
  }

  @override
  String get sectionShortUK => 'UK';

  @override
  String get sectionShortUS => 'AS';

  @override
  String get sectionSubtitleUK =>
      'Lorries, biscuits dan secawan teh yang sedap';

  @override
  String get sectionSubtitleUS =>
      'Marmot, kereta sorong bayi dan Unique New York';

  @override
  String get difficultyEasy => 'Mudah';

  @override
  String get difficultyMedium => 'Sederhana';

  @override
  String get difficultyHard => 'Sukar';

  @override
  String get speedSlow => 'Perlahan';

  @override
  String get speedNormal => 'Biasa';

  @override
  String get speedFast => 'Laju';

  @override
  String get heroTitle => 'Belitkan lidah anda!';

  @override
  String get heroSubtitle =>
      'Dengar suara penutur asli, kemudian sebut lebih laju setiap kali.';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => 'dilatih';

  @override
  String get heroStatFavourites => 'kegemaran';

  @override
  String get surpriseMe => 'Kejutkan saya';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: '$practised daripada $total dilatih',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => 'Disyorkan untuk anda';

  @override
  String get recommendRevise =>
      'Masa mengulang kaji: yang paling kurang dilatih';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Yang mudah untuk bermula',
      'medium': 'Yang sederhana untuk bermula',
      'hard': 'Yang sukar untuk bermula',
      'other': 'Pilihan baik untuk bermula',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Ayat mudah baharu dalam bahasa $language yang anda latih',
      'medium': 'Ayat sederhana baharu dalam bahasa $language yang anda latih',
      'hard': 'Ayat sukar baharu dalam bahasa $language yang anda latih',
      'other': 'Ayat baharu dalam bahasa $language yang anda latih',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return 'Cuba yang baharu dalam bahasa $language';
  }

  @override
  String get searchTwistersHint => 'Cari pembelit lidah';

  @override
  String get filterAll => 'Semua';

  @override
  String get noTwistersMatch => 'Tiada yang sepadan.';

  @override
  String get favouritesEmpty =>
      'Ketik ♡ pada mana-mana ayat untuk simpan di sini.';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dilatih $count×',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · leret untuk lagi';
  }

  @override
  String get pronunciationLabel => 'Sebutan';

  @override
  String get meaningLabel => 'Maksud';

  @override
  String repeatInARow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count× berturut-turut',
    );
    return '$_temp0';
  }

  @override
  String get saidIt => 'Saya dah sebut!';

  @override
  String get practiseFirstTry =>
      'Cubaan pertama direkod. Sekarang sebut lebih laju!';

  @override
  String get practiseThreeTimes => 'Tiga kali! Lidah anda mula lancar.';

  @override
  String get practiseTenTimes => 'Sepuluh kali. Anda sudah menguasainya!';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Bagus! Dilatih $count kali.',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return 'Tiada suara $locale pada peranti ini. Tambah dalam tetapan teks ke pertuturan sistem.';
  }

  @override
  String get settingsAppearance => 'Penampilan';

  @override
  String get themeSystem => 'Sistem';

  @override
  String get themeLight => 'Cerah';

  @override
  String get themeDark => 'Gelap';

  @override
  String get settingsLanguages => 'Bahasa';

  @override
  String get settingsLanguagesHelp =>
      'Pilih bahasa yang anda mahu pelajari. Bahasa tersembunyi hilang dari skrin utama.';

  @override
  String get settingsPlayback => 'Main balik';

  @override
  String get settingsSpeakingSpeed => 'Kelajuan pertuturan';

  @override
  String get settingsRepeatChallenge => 'Cabaran ulang';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dimainkan $count kali berturut-turut',
      one: 'Dimainkan sekali',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => 'Kurangkan ulangan';

  @override
  String get moreRepeats => 'Tambah ulangan';

  @override
  String get settingsDisplay => 'Paparan';

  @override
  String get showPronunciation => 'Tunjukkan sebutan';

  @override
  String get showPronunciationHelp => 'Teks rumi di bawah ayat Hindi';

  @override
  String get showMeaning => 'Tunjukkan maksud';

  @override
  String get showMeaningHelp => 'Terjemahan Inggeris untuk Hindi dan Jerman';

  @override
  String get settingsVoices => 'Suara';

  @override
  String get settingsVoicesHelp =>
      'Ayat dimainkan daripada rakaman penutur asli. Suara teks ke pertuturan telefon anda hanya digunakan jika rakaman tiada. Jika sesuatu bahasa tertera tidak dipasang, tambahkannya dalam tetapan teks ke pertuturan telefon anda.';

  @override
  String get voiceInstalled => 'Dipasang';

  @override
  String get voiceNotInstalled => 'Tidak dipasang';

  @override
  String get voiceUnknown => 'Tidak diketahui';

  @override
  String get voiceChecking => 'Menyemak…';

  @override
  String voiceStatusLine(String locale, String status) {
    return '$locale · $status';
  }

  @override
  String testVoice(String language) {
    return 'Uji suara $language';
  }

  @override
  String get settingsYourData => 'Data anda';

  @override
  String get resetProgress => 'Tetapkan semula kemajuan';

  @override
  String get resetProgressTitle => 'Tetapkan semula kemajuan?';

  @override
  String get resetProgressBody =>
      'Semua kiraan latihan akan kembali kepada sifar.';

  @override
  String get resetProgressDone => 'Kemajuan latihan ditetapkan semula';

  @override
  String get clearFavourites => 'Kosongkan kegemaran';

  @override
  String get clearFavouritesTitle => 'Kosongkan kegemaran?';

  @override
  String get clearFavouritesBody =>
      'Semua ayat akan dibuang daripada kegemaran anda.';

  @override
  String get clearFavouritesDone => 'Kegemaran dikosongkan';

  @override
  String get dialogCancel => 'Batal';

  @override
  String get dialogClear => 'Kosongkan';

  @override
  String get settingsAbout => 'Perihal';

  @override
  String aboutVersion(String version) {
    return 'Versi $version';
  }

  @override
  String get privacyChoices => 'Pilihan privasi';

  @override
  String get privacyChoicesHelp => 'Tukar persetujuan iklan';

  @override
  String get settingsAds => 'Iklan';

  @override
  String get adFreeWatch => 'Tanpa iklan selama 24 jam';

  @override
  String get adFreeWatchHelp => 'Tonton satu video pendek';

  @override
  String adFreeActive(String time) {
    return 'Tanpa iklan hingga $time';
  }

  @override
  String adFreeThanks(String time) {
    return 'Terima kasih! Tiada iklan hingga $time.';
  }

  @override
  String get adFreeUnavailable => 'Tiada video buat masa ini. Cuba lagi nanti.';
}
