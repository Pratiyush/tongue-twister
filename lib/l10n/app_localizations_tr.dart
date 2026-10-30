// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'Uygulama dili';

  @override
  String get languageSystemDefault => 'Sistem varsayılanı';

  @override
  String languageFollowsDevice(String language) {
    return 'Cihazına göre · $language';
  }

  @override
  String get languageSearchHint => 'Dil ara';

  @override
  String appCredit(String name) {
    return '$name tarafından ❤️ ile yapıldı';
  }

  @override
  String get favouritesTitle => 'Favoriler';

  @override
  String get settingsTitle => 'Ayarlar';

  @override
  String get actionListen => 'Dinle';

  @override
  String get actionStop => 'Durdur';

  @override
  String get addToFavourites => 'Favorilere ekle';

  @override
  String get removeFromFavourites => 'Favorilerden çıkar';

  @override
  String get languageBritishEnglish => 'İngiliz İngilizcesi';

  @override
  String get languageAmericanEnglish => 'Amerikan İngilizcesi';

  @override
  String get languageHindi => 'Hintçe';

  @override
  String get languageGerman => 'Almanca';

  @override
  String get groupEnglish => 'İngilizce';

  @override
  String sectionTitleNative(String native, String language) {
    return '$native · $language';
  }

  @override
  String get sectionShortUK => 'BK';

  @override
  String get sectionShortUS => 'ABD';

  @override
  String get sectionSubtitleUK => 'Lorry, biscuit ve güzel bir fincan çay';

  @override
  String get sectionSubtitleUS => 'Dağ sıçanı, puset ve Unique New York';

  @override
  String get difficultyEasy => 'Kolay';

  @override
  String get difficultyMedium => 'Orta';

  @override
  String get difficultyHard => 'Zor';

  @override
  String get speedSlow => 'Yavaş';

  @override
  String get speedNormal => 'Normal';

  @override
  String get speedFast => 'Hızlı';

  @override
  String get heroTitle => 'Dilini düğümle!';

  @override
  String get heroSubtitle =>
      'Ana dili konuşan birini dinle, sonra her seferinde daha hızlı söyle.';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => 'çalışıldı';

  @override
  String get heroStatFavourites => 'favori';

  @override
  String get surpriseMe => 'Beni şaşırt';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: '$total içinden $practised çalışıldı',
      one: '$total içinden $practised çalışıldı',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => 'Sana önerilen';

  @override
  String get recommendRevise => 'Tekrar zamanı: en az çalıştığın tekerleme';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Başlamak için kolay bir tane',
      'medium': 'Başlamak için orta bir tane',
      'hard': 'Başlamak için zor bir tane',
      'other': 'Başlamak için iyi bir tane',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Çalıştığın dilde yeni ve kolay: $language',
      'medium': 'Çalıştığın dilde yeni ve orta: $language',
      'hard': 'Çalıştığın dilde yeni ve zor: $language',
      'other': 'Çalıştığın dilde yeni: $language',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return 'Yeni bir şey dene: $language';
  }

  @override
  String get searchTwistersHint => 'Tekerleme ara';

  @override
  String get filterAll => 'Tümü';

  @override
  String get noTwistersMatch => 'Eşleşen tekerleme yok.';

  @override
  String get favouritesEmpty =>
      'Bir tekerlemeyi burada tutmak için ♡ simgesine dokun.';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count× çalışıldı',
      one: '$count× çalışıldı',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · devamı için kaydır';
  }

  @override
  String get pronunciationLabel => 'Okunuş';

  @override
  String get meaningLabel => 'Anlamı';

  @override
  String repeatInARow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Art arda $count×',
      one: 'Art arda $count×',
    );
    return '$_temp0';
  }

  @override
  String get saidIt => 'Söyledim!';

  @override
  String get practiseFirstTry => 'İlk deneme kaydedildi. Şimdi daha hızlı!';

  @override
  String get practiseThreeTimes => 'Üç kez! Dilin ısınıyor.';

  @override
  String get practiseTenTimes => 'On kez. Bunu artık ustaca söylüyorsun!';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Harika! $count kez çalışıldı.',
      one: 'Harika! Bir kez çalışıldı.',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return 'Bu cihazda $locale sesi yok. Sistemin metin okuma ayarlarından bir tane ekle.';
  }

  @override
  String get settingsAppearance => 'Görünüm';

  @override
  String get themeSystem => 'Sistem';

  @override
  String get themeLight => 'Açık';

  @override
  String get themeDark => 'Koyu';

  @override
  String get settingsLanguages => 'Diller';

  @override
  String get settingsLanguagesHelp =>
      'Öğrenmek istediğin dilleri seç. Gizlenen diller ana ekrandan kaybolur.';

  @override
  String get settingsPlayback => 'Oynatma';

  @override
  String get settingsSpeakingSpeed => 'Konuşma hızı';

  @override
  String get settingsRepeatChallenge => 'Tekrar mücadelesi';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tekerlemeyi art arda $count kez çalar',
      one: 'Tekerlemeyi bir kez çalar',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => 'Daha az tekrar';

  @override
  String get moreRepeats => 'Daha çok tekrar';

  @override
  String get settingsDisplay => 'Gösterim';

  @override
  String get showPronunciation => 'Okunuşu göster';

  @override
  String get showPronunciationHelp =>
      'Hintçe tekerlemelerin altında Latin yazısı';

  @override
  String get showMeaning => 'Anlamı göster';

  @override
  String get showMeaningHelp => 'Hintçe ve Almanca için İngilizce çeviri';

  @override
  String get settingsVoices => 'Sesler';

  @override
  String get settingsVoicesHelp =>
      'Tekerlemeler, ana dili konuşanların kayıtlarıyla çalınır. Telefonunun metin okuma sesi yalnızca kayıt yoksa kullanılır. Bir dil yüklü değil görünüyorsa telefonunun metin okuma ayarlarından ekle.';

  @override
  String get voiceInstalled => 'Yüklü';

  @override
  String get voiceNotInstalled => 'Yüklü değil';

  @override
  String get voiceUnknown => 'Bilinmiyor';

  @override
  String get voiceChecking => 'Denetleniyor…';

  @override
  String voiceStatusLine(String locale, String status) {
    return '$locale · $status';
  }

  @override
  String testVoice(String language) {
    return 'Sesi dene: $language';
  }

  @override
  String get settingsYourData => 'Verilerin';

  @override
  String get resetProgress => 'Çalışma ilerlemesini sıfırla';

  @override
  String get resetProgressTitle => 'İlerleme sıfırlansın mı?';

  @override
  String get resetProgressBody => 'Tüm çalışma sayaçları sıfırlanacak.';

  @override
  String get resetProgressDone => 'Çalışma ilerlemesi sıfırlandı';

  @override
  String get clearFavourites => 'Favorileri temizle';

  @override
  String get clearFavouritesTitle => 'Favoriler temizlensin mi?';

  @override
  String get clearFavouritesBody =>
      'Tüm tekerlemeler favorilerinden kaldırılacak.';

  @override
  String get clearFavouritesDone => 'Favoriler temizlendi';

  @override
  String get dialogCancel => 'İptal';

  @override
  String get dialogClear => 'Temizle';

  @override
  String get settingsAbout => 'Hakkında';

  @override
  String aboutVersion(String version) {
    return 'Sürüm $version';
  }

  @override
  String get privacyChoices => 'Gizlilik seçenekleri';

  @override
  String get privacyChoicesHelp => 'Reklam iznini değiştir';
}
