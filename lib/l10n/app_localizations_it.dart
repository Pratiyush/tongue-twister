// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'Lingua dell\'app';

  @override
  String get languageSystemDefault => 'Lingua di sistema';

  @override
  String languageFollowsDevice(String language) {
    return 'Segue il dispositivo · $language';
  }

  @override
  String get languageSearchHint => 'Cerca lingue';

  @override
  String appCredit(String name) {
    return 'Fatto con ❤️ da $name';
  }

  @override
  String get favouritesTitle => 'Preferiti';

  @override
  String get settingsTitle => 'Impostazioni';

  @override
  String get actionListen => 'Ascolta';

  @override
  String get actionStop => 'Ferma';

  @override
  String get addToFavourites => 'Aggiungi ai preferiti';

  @override
  String get removeFromFavourites => 'Togli dai preferiti';

  @override
  String get languageBritishEnglish => 'Inglese britannico';

  @override
  String get languageAmericanEnglish => 'Inglese americano';

  @override
  String get languageHindi => 'Hindi';

  @override
  String get languageGerman => 'Tedesco';

  @override
  String get groupEnglish => 'Inglese';

  @override
  String sectionTitleNative(String native, String language) {
    return '$native · $language';
  }

  @override
  String get sectionShortUK => 'UK';

  @override
  String get sectionShortUS => 'US';

  @override
  String get sectionSubtitleUK => 'Lorry, biscuit e una bella tazza di tè';

  @override
  String get sectionSubtitleUS => 'Marmotte, passeggini e Unique New York';

  @override
  String get difficultyEasy => 'Facile';

  @override
  String get difficultyMedium => 'Medio';

  @override
  String get difficultyHard => 'Difficile';

  @override
  String get speedSlow => 'Lenta';

  @override
  String get speedNormal => 'Normale';

  @override
  String get speedFast => 'Veloce';

  @override
  String get heroTitle => 'Annoda la lingua!';

  @override
  String get heroSubtitle =>
      'Ascolta una voce madrelingua, poi ripeti sempre più veloce.';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => 'esercitati';

  @override
  String get heroStatFavourites => 'preferiti';

  @override
  String get surpriseMe => 'Sorprendimi';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: '$practised su $total esercitati',
      one: '$practised su $total esercitato',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => 'Consigliato per te';

  @override
  String get recommendRevise => 'Ripassa il tuo scioglilingua meno esercitato';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Uno scioglilingua facile per iniziare',
      'medium': 'Uno scioglilingua medio per iniziare',
      'hard': 'Uno scioglilingua difficile per iniziare',
      'other': 'Un buon scioglilingua per iniziare',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Nuovo e facile in $language, che già eserciti',
      'medium': 'Nuovo, di media difficoltà, in $language, che già eserciti',
      'hard': 'Nuovo e difficile in $language, che già eserciti',
      'other': 'Nuovo in $language, che già eserciti',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return 'Prova qualcosa di nuovo in $language';
  }

  @override
  String get searchTwistersHint => 'Cerca scioglilingua';

  @override
  String get filterAll => 'Tutti';

  @override
  String get noTwistersMatch => 'Nessuno scioglilingua trovato.';

  @override
  String get favouritesEmpty => 'Tocca ♡ su uno scioglilingua per tenerlo qui.';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Esercitato $count×',
      one: 'Esercitato $count×',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · scorri per altri';
  }

  @override
  String get pronunciationLabel => 'Pronuncia';

  @override
  String get meaningLabel => 'Significato';

  @override
  String repeatInARow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count× di fila',
      one: '$count× di fila',
    );
    return '$_temp0';
  }

  @override
  String get saidIt => 'L\'ho detto!';

  @override
  String get practiseFirstTry => 'Primo tentativo registrato. Ora più veloce!';

  @override
  String get practiseThreeTimes => 'Tre volte! La tua lingua si sta scaldando.';

  @override
  String get practiseTenTimes => 'Dieci volte. Questo ormai lo padroneggi!';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Grande! Esercitato $count volte.',
      one: 'Grande! Esercitato una volta.',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return 'Nessuna voce $locale su questo dispositivo. Aggiungine una nelle impostazioni di sintesi vocale.';
  }

  @override
  String get settingsAppearance => 'Aspetto';

  @override
  String get themeSystem => 'Sistema';

  @override
  String get themeLight => 'Chiaro';

  @override
  String get themeDark => 'Scuro';

  @override
  String get settingsLanguages => 'Lingue';

  @override
  String get settingsLanguagesHelp =>
      'Scegli le lingue che vuoi imparare. Quelle nascoste spariscono dalla schermata iniziale.';

  @override
  String get settingsPlayback => 'Riproduzione';

  @override
  String get settingsSpeakingSpeed => 'Velocità di lettura';

  @override
  String get settingsRepeatChallenge => 'Sfida di ripetizione';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Lo riproduce $count volte di fila',
      one: 'Riproduce lo scioglilingua una volta',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => 'Meno ripetizioni';

  @override
  String get moreRepeats => 'Più ripetizioni';

  @override
  String get settingsDisplay => 'Visualizzazione';

  @override
  String get showPronunciation => 'Mostra pronuncia';

  @override
  String get showPronunciationHelp =>
      'Testo latino sotto gli scioglilingua hindi';

  @override
  String get showMeaning => 'Mostra significato';

  @override
  String get showMeaningHelp => 'Traduzione inglese per hindi e tedesco';

  @override
  String get settingsVoices => 'Voci';

  @override
  String get settingsVoicesHelp =>
      'Gli scioglilingua usano registrazioni di madrelingua. La sintesi vocale del telefono si usa solo se manca una registrazione. Se una lingua risulta non installata, aggiungila nelle impostazioni di sintesi vocale del telefono.';

  @override
  String get voiceInstalled => 'Installata';

  @override
  String get voiceNotInstalled => 'Non installata';

  @override
  String get voiceUnknown => 'Sconosciuta';

  @override
  String get voiceChecking => 'Controllo…';

  @override
  String voiceStatusLine(String locale, String status) {
    return '$locale · $status';
  }

  @override
  String testVoice(String language) {
    return 'Prova voce: $language';
  }

  @override
  String get settingsYourData => 'I tuoi dati';

  @override
  String get resetProgress => 'Azzera i progressi';

  @override
  String get resetProgressTitle => 'Azzerare i progressi?';

  @override
  String get resetProgressBody =>
      'Tutti i conteggi di pratica torneranno a zero.';

  @override
  String get resetProgressDone => 'Progressi azzerati';

  @override
  String get clearFavourites => 'Svuota i preferiti';

  @override
  String get clearFavouritesTitle => 'Svuotare i preferiti?';

  @override
  String get clearFavouritesBody =>
      'Tutti gli scioglilingua verranno tolti dai preferiti.';

  @override
  String get clearFavouritesDone => 'Preferiti svuotati';

  @override
  String get dialogCancel => 'Annulla';

  @override
  String get dialogClear => 'Cancella';

  @override
  String get settingsAbout => 'Info';

  @override
  String aboutVersion(String version) {
    return 'Versione $version';
  }

  @override
  String get privacyChoices => 'Scelte sulla privacy';

  @override
  String get privacyChoicesHelp => 'Modifica il consenso per gli annunci';
}
