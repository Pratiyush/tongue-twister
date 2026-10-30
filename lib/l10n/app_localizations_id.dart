// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'Bahasa aplikasi';

  @override
  String get languageSystemDefault => 'Default sistem';

  @override
  String languageFollowsDevice(String language) {
    return 'Ikuti perangkat · $language';
  }

  @override
  String get languageSearchHint => 'Cari bahasa';

  @override
  String appCredit(String name) {
    return 'Dibuat dengan ❤️ oleh $name';
  }

  @override
  String get favouritesTitle => 'Favorit';

  @override
  String get settingsTitle => 'Setelan';

  @override
  String get actionListen => 'Dengarkan';

  @override
  String get actionStop => 'Berhenti';

  @override
  String get addToFavourites => 'Tambah ke favorit';

  @override
  String get removeFromFavourites => 'Hapus dari favorit';

  @override
  String get languageBritishEnglish => 'Inggris Britania';

  @override
  String get languageAmericanEnglish => 'Inggris Amerika';

  @override
  String get languageHindi => 'Hindi';

  @override
  String get languageGerman => 'Jerman';

  @override
  String get groupEnglish => 'Inggris';

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
      'Lorries, biscuits, dan secangkir teh yang pas';

  @override
  String get sectionSubtitleUS => 'Marmot, kereta bayi, dan Unique New York';

  @override
  String get difficultyEasy => 'Mudah';

  @override
  String get difficultyMedium => 'Sedang';

  @override
  String get difficultyHard => 'Sulit';

  @override
  String get speedSlow => 'Lambat';

  @override
  String get speedNormal => 'Normal';

  @override
  String get speedFast => 'Cepat';

  @override
  String get heroTitle => 'Pelintir lidahmu!';

  @override
  String get heroSubtitle =>
      'Dengar suara penutur asli, lalu ucapkan makin cepat tiap kali.';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => 'dilatih';

  @override
  String get heroStatFavourites => 'favorit';

  @override
  String get surpriseMe => 'Kejutkan aku';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: '$practised dari $total dilatih',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => 'Rekomendasi untukmu';

  @override
  String get recommendRevise =>
      'Waktunya mengulang: yang paling jarang kamu latih';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Yang mudah untuk memulai',
      'medium': 'Yang sedang untuk memulai',
      'hard': 'Yang sulit untuk memulai',
      'other': 'Pilihan bagus untuk memulai',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Kalimat mudah baru berbahasa $language, bahasa latihanmu',
      'medium':
          'Kalimat baru tingkat sedang berbahasa $language, bahasa latihanmu',
      'hard': 'Kalimat sulit baru berbahasa $language, bahasa latihanmu',
      'other': 'Kalimat baru berbahasa $language, bahasa latihanmu',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return 'Coba hal baru dalam bahasa $language';
  }

  @override
  String get searchTwistersHint => 'Cari kalimat';

  @override
  String get filterAll => 'Semua';

  @override
  String get noTwistersMatch => 'Tidak ada yang cocok.';

  @override
  String get favouritesEmpty =>
      'Ketuk ♡ di kalimat mana pun untuk menyimpannya di sini.';

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
    return '$current / $total · geser untuk lainnya';
  }

  @override
  String get pronunciationLabel => 'Pelafalan';

  @override
  String get meaningLabel => 'Arti';

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
  String get saidIt => 'Sudah kuucapkan!';

  @override
  String get practiseFirstTry =>
      'Percobaan pertama dicatat. Ucapkan lebih cepat!';

  @override
  String get practiseThreeTimes => 'Tiga kali! Lidahmu mulai luwes.';

  @override
  String get practiseTenTimes => 'Sepuluh kali. Kamu sudah menguasainya!';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mantap! Dilatih $count kali.',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return 'Tidak ada suara $locale di perangkat ini. Tambahkan di setelan text-to-speech sistem.';
  }

  @override
  String get settingsAppearance => 'Tampilan';

  @override
  String get themeSystem => 'Sistem';

  @override
  String get themeLight => 'Terang';

  @override
  String get themeDark => 'Gelap';

  @override
  String get settingsLanguages => 'Bahasa';

  @override
  String get settingsLanguagesHelp =>
      'Pilih bahasa yang ingin kamu pelajari. Bahasa yang disembunyikan hilang dari layar utama.';

  @override
  String get settingsPlayback => 'Pemutaran';

  @override
  String get settingsSpeakingSpeed => 'Kecepatan bicara';

  @override
  String get settingsRepeatChallenge => 'Tantangan ulang';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Diputar $count kali berturut-turut',
      one: 'Diputar sekali',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => 'Kurangi pengulangan';

  @override
  String get moreRepeats => 'Tambah pengulangan';

  @override
  String get settingsDisplay => 'Tampilan teks';

  @override
  String get showPronunciation => 'Tampilkan pelafalan';

  @override
  String get showPronunciationHelp => 'Teks Latin di bawah kalimat Hindi';

  @override
  String get showMeaning => 'Tampilkan arti';

  @override
  String get showMeaningHelp => 'Terjemahan Inggris untuk Hindi dan Jerman';

  @override
  String get settingsVoices => 'Suara';

  @override
  String get settingsVoicesHelp =>
      'Kalimat diputar dari rekaman penutur asli. Suara text-to-speech ponselmu hanya dipakai jika rekaman tidak ada. Jika suatu bahasa tampil belum terpasang, tambahkan di setelan text-to-speech ponselmu.';

  @override
  String get voiceInstalled => 'Terpasang';

  @override
  String get voiceNotInstalled => 'Belum terpasang';

  @override
  String get voiceUnknown => 'Tidak diketahui';

  @override
  String get voiceChecking => 'Memeriksa…';

  @override
  String voiceStatusLine(String locale, String status) {
    return '$locale · $status';
  }

  @override
  String testVoice(String language) {
    return 'Tes suara $language';
  }

  @override
  String get settingsYourData => 'Datamu';

  @override
  String get resetProgress => 'Reset progres latihan';

  @override
  String get resetProgressTitle => 'Reset progres?';

  @override
  String get resetProgressBody => 'Semua hitungan latihan akan kembali ke nol.';

  @override
  String get resetProgressDone => 'Progres latihan direset';

  @override
  String get clearFavourites => 'Hapus favorit';

  @override
  String get clearFavouritesTitle => 'Hapus favorit?';

  @override
  String get clearFavouritesBody =>
      'Semua kalimat akan dihapus dari favoritmu.';

  @override
  String get clearFavouritesDone => 'Favorit dihapus';

  @override
  String get dialogCancel => 'Batal';

  @override
  String get dialogClear => 'Hapus';

  @override
  String get settingsAbout => 'Tentang';

  @override
  String aboutVersion(String version) {
    return 'Versi $version';
  }

  @override
  String get privacyChoices => 'Pilihan privasi';

  @override
  String get privacyChoicesHelp => 'Ubah persetujuan iklan';

  @override
  String get settingsAds => 'Iklan';

  @override
  String get adFreeWatch => 'Tanpa iklan selama 24 jam';

  @override
  String get adFreeWatchHelp => 'Tonton satu video pendek';

  @override
  String adFreeActive(String time) {
    return 'Tanpa iklan sampai $time';
  }

  @override
  String adFreeThanks(String time) {
    return 'Makasih! Tanpa iklan sampai $time.';
  }

  @override
  String get adFreeUnavailable => 'Belum ada video sekarang. Coba lagi nanti.';
}
