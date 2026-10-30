// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'Langue de l\'app';

  @override
  String get languageSystemDefault => 'Langue du système';

  @override
  String languageFollowsDevice(String language) {
    return 'Comme ton appareil · $language';
  }

  @override
  String get languageSearchHint => 'Chercher une langue';

  @override
  String appCredit(String name) {
    return 'Fait avec ❤️ par $name';
  }

  @override
  String get favouritesTitle => 'Favoris';

  @override
  String get settingsTitle => 'Réglages';

  @override
  String get actionListen => 'Écouter';

  @override
  String get actionStop => 'Arrêter';

  @override
  String get addToFavourites => 'Ajouter aux favoris';

  @override
  String get removeFromFavourites => 'Retirer des favoris';

  @override
  String get languageBritishEnglish => 'Anglais britannique';

  @override
  String get languageAmericanEnglish => 'Anglais américain';

  @override
  String get languageHindi => 'Hindi';

  @override
  String get languageGerman => 'Allemand';

  @override
  String get groupEnglish => 'Anglais';

  @override
  String sectionTitleNative(String native, String language) {
    return '$native · $language';
  }

  @override
  String get sectionShortUK => 'UK';

  @override
  String get sectionShortUS => 'US';

  @override
  String get sectionSubtitleUK => 'Lorries, biscuits et une bonne tasse de thé';

  @override
  String get sectionSubtitleUS => 'Marmottes, poussettes et Unique New York';

  @override
  String get difficultyEasy => 'Facile';

  @override
  String get difficultyMedium => 'Moyen';

  @override
  String get difficultyHard => 'Difficile';

  @override
  String get speedSlow => 'Lent';

  @override
  String get speedNormal => 'Normal';

  @override
  String get speedFast => 'Rapide';

  @override
  String get heroTitle => 'Délie ta langue !';

  @override
  String get heroSubtitle =>
      'Écoute une voix native, puis répète-le de plus en plus vite.';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => 'pratiqués';

  @override
  String get heroStatFavourites => 'favoris';

  @override
  String get surpriseMe => 'Surprends-moi';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: '$practised sur $total pratiqués',
      one: '$practised sur $total pratiqué',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => 'Pour toi';

  @override
  String get recommendRevise => 'À réviser : ton virelangue le moins pratiqué';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Un facile pour commencer',
      'medium': 'Un moyen pour commencer',
      'hard': 'Un difficile pour commencer',
      'other': 'Un bon pour commencer',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Nouveau et facile, dans ta langue : $language',
      'medium': 'Nouveau et moyen, dans ta langue : $language',
      'hard': 'Nouveau et difficile, dans ta langue : $language',
      'other': 'Nouveau, dans ta langue : $language',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return 'Essaie du nouveau : $language';
  }

  @override
  String get searchTwistersHint => 'Chercher un virelangue';

  @override
  String get filterAll => 'Tous';

  @override
  String get noTwistersMatch => 'Aucun virelangue trouvé.';

  @override
  String get favouritesEmpty =>
      'Touche ♡ sur un virelangue pour le garder ici.';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Pratiqué $count×',
      one: 'Pratiqué $count×',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · glisse pour plus';
  }

  @override
  String get pronunciationLabel => 'Prononciation';

  @override
  String get meaningLabel => 'Sens';

  @override
  String repeatInARow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count× d\'affilée',
      one: '$count× d\'affilée',
    );
    return '$_temp0';
  }

  @override
  String get saidIt => 'Je l\'ai dit !';

  @override
  String get practiseFirstTry => 'Premier essai noté. Maintenant, plus vite !';

  @override
  String get practiseThreeTimes => 'Trois fois ! Ta langue s\'échauffe.';

  @override
  String get practiseTenTimes => 'Dix fois. Celui-là, tu le maîtrises !';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Bravo ! Pratiqué $count fois.',
      one: 'Bravo ! Pratiqué une fois.',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return 'Pas de voix $locale sur cet appareil. Ajoutes-en une dans les réglages de synthèse vocale.';
  }

  @override
  String get settingsAppearance => 'Apparence';

  @override
  String get themeSystem => 'Système';

  @override
  String get themeLight => 'Clair';

  @override
  String get themeDark => 'Sombre';

  @override
  String get settingsLanguages => 'Langues';

  @override
  String get settingsLanguagesHelp =>
      'Choisis les langues que tu veux apprendre. Les langues masquées disparaissent de l\'accueil.';

  @override
  String get settingsPlayback => 'Lecture';

  @override
  String get settingsSpeakingSpeed => 'Vitesse de parole';

  @override
  String get settingsRepeatChallenge => 'Défi répétition';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Lit un virelangue $count fois d\'affilée',
      one: 'Lit un virelangue une fois',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => 'Moins de répétitions';

  @override
  String get moreRepeats => 'Plus de répétitions';

  @override
  String get settingsDisplay => 'Affichage';

  @override
  String get showPronunciation => 'Voir la prononciation';

  @override
  String get showPronunciationHelp =>
      'Texte romanisé sous les virelangues hindi';

  @override
  String get showMeaning => 'Afficher le sens';

  @override
  String get showMeaningHelp => 'Traduction en anglais (hindi, allemand)';

  @override
  String get settingsVoices => 'Voix';

  @override
  String get settingsVoicesHelp =>
      'Les virelangues sont des enregistrements de locuteurs natifs. La synthèse vocale de ton téléphone ne sert que si un enregistrement manque. Si une langue manque, installe-la dans les réglages système (Android : Paramètres → Système → Langues → Synthèse vocale ; iOS : Réglages → Accessibilité → Contenu énoncé → Voix).';

  @override
  String get voiceInstalled => 'Installée';

  @override
  String get voiceNotInstalled => 'Non installée';

  @override
  String get voiceUnknown => 'Inconnu';

  @override
  String get voiceChecking => 'Vérification…';

  @override
  String voiceStatusLine(String locale, String status) {
    return '$locale · $status';
  }

  @override
  String testVoice(String language) {
    return 'Tester la voix : $language';
  }

  @override
  String get settingsYourData => 'Tes données';

  @override
  String get resetProgress => 'Réinitialiser la progression';

  @override
  String get resetProgressTitle => 'Réinitialiser ?';

  @override
  String get resetProgressBody =>
      'Tous les compteurs de pratique seront remis à zéro.';

  @override
  String get resetProgressDone => 'Progression réinitialisée';

  @override
  String get clearFavourites => 'Vider les favoris';

  @override
  String get clearFavouritesTitle => 'Vider les favoris ?';

  @override
  String get clearFavouritesBody =>
      'Tous les virelangues seront retirés de tes favoris.';

  @override
  String get clearFavouritesDone => 'Favoris vidés';

  @override
  String get dialogCancel => 'Annuler';

  @override
  String get dialogClear => 'Effacer';

  @override
  String get settingsAbout => 'À propos';

  @override
  String aboutVersion(String version) {
    return 'Version $version';
  }

  @override
  String get privacyChoices => 'Confidentialité';

  @override
  String get privacyChoicesHelp => 'Modifier ton consentement pub';
}
