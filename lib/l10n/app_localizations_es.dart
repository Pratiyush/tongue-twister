// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'Idioma de la app';

  @override
  String get languageSystemDefault => 'Idioma del sistema';

  @override
  String languageFollowsDevice(String language) {
    return 'Según tu dispositivo · $language';
  }

  @override
  String get languageSearchHint => 'Buscar idiomas';

  @override
  String appCredit(String name) {
    return 'Hecho con ❤️ por $name';
  }

  @override
  String get favouritesTitle => 'Favoritos';

  @override
  String get settingsTitle => 'Ajustes';

  @override
  String get actionListen => 'Escuchar';

  @override
  String get actionStop => 'Parar';

  @override
  String get addToFavourites => 'Añadir a favoritos';

  @override
  String get removeFromFavourites => 'Quitar de favoritos';

  @override
  String get languageBritishEnglish => 'Inglés británico';

  @override
  String get languageAmericanEnglish => 'Inglés americano';

  @override
  String get languageHindi => 'Hindi';

  @override
  String get languageGerman => 'Alemán';

  @override
  String get groupEnglish => 'Inglés';

  @override
  String sectionTitleNative(String native, String language) {
    return '$native · $language';
  }

  @override
  String get sectionShortUK => 'UK';

  @override
  String get sectionShortUS => 'US';

  @override
  String get sectionSubtitleUK => 'Lorries, biscuits y una buena taza de té';

  @override
  String get sectionSubtitleUS => 'Marmotas, carritos y Unique New York';

  @override
  String get difficultyEasy => 'Fácil';

  @override
  String get difficultyMedium => 'Media';

  @override
  String get difficultyHard => 'Difícil';

  @override
  String get speedSlow => 'Lenta';

  @override
  String get speedNormal => 'Normal';

  @override
  String get speedFast => 'Rápida';

  @override
  String get heroTitle => '¡Enreda tu lengua!';

  @override
  String get heroSubtitle =>
      'Escucha una voz nativa y luego dilo cada vez más rápido.';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => 'practicados';

  @override
  String get heroStatFavourites => 'favoritos';

  @override
  String get surpriseMe => 'Sorpréndeme';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: '$practised de $total practicados',
      one: '$practised de $total practicado',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => 'Recomendado para ti';

  @override
  String get recommendRevise =>
      'Hora de repasar: tu trabalenguas menos practicado';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Uno fácil para empezar',
      'medium': 'Uno de nivel medio para empezar',
      'hard': 'Uno difícil para empezar',
      'other': 'Uno bueno para empezar',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Nuevo y fácil en $language, que ya practicas',
      'medium': 'Nuevo de nivel medio en $language, que ya practicas',
      'hard': 'Nuevo y difícil en $language, que ya practicas',
      'other': 'Nuevo en $language, que ya practicas',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return 'Prueba algo nuevo en $language';
  }

  @override
  String get searchTwistersHint => 'Buscar trabalenguas';

  @override
  String get filterAll => 'Todos';

  @override
  String get noTwistersMatch => 'Ningún trabalenguas coincide.';

  @override
  String get favouritesEmpty =>
      'Toca ♡ en cualquier trabalenguas para guardarlo aquí.';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Practicado $count×',
      one: 'Practicado $count×',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · desliza para más';
  }

  @override
  String get pronunciationLabel => 'Pronunciación';

  @override
  String get meaningLabel => 'Significado';

  @override
  String repeatInARow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count× seguidas',
      one: '$count× seguidas',
    );
    return '$_temp0';
  }

  @override
  String get saidIt => '¡Lo dije!';

  @override
  String get practiseFirstTry => 'Primer intento anotado. ¡Ahora más rápido!';

  @override
  String get practiseThreeTimes =>
      '¡Tres veces! Tu lengua ya está tomando ritmo.';

  @override
  String get practiseTenTimes => 'Diez veces. ¡Este ya lo dominas!';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '¡Genial! Practicado $count veces.',
      one: '¡Genial! Practicado una vez.',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return 'No hay voz $locale en este dispositivo. Añade una en los ajustes de texto a voz.';
  }

  @override
  String get settingsAppearance => 'Apariencia';

  @override
  String get themeSystem => 'Sistema';

  @override
  String get themeLight => 'Claro';

  @override
  String get themeDark => 'Oscuro';

  @override
  String get settingsLanguages => 'Idiomas';

  @override
  String get settingsLanguagesHelp =>
      'Elige los idiomas que quieres aprender. Los ocultos desaparecen de la pantalla de inicio.';

  @override
  String get settingsPlayback => 'Reproducción';

  @override
  String get settingsSpeakingSpeed => 'Velocidad de habla';

  @override
  String get settingsRepeatChallenge => 'Reto de repetición';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Lo reproduce $count veces seguidas',
      one: 'Reproduce un trabalenguas una vez',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => 'Menos repeticiones';

  @override
  String get moreRepeats => 'Más repeticiones';

  @override
  String get settingsDisplay => 'Visualización';

  @override
  String get showPronunciation => 'Mostrar pronunciación';

  @override
  String get showPronunciationHelp =>
      'Romanización bajo los trabalenguas en hindi';

  @override
  String get showMeaning => 'Mostrar significado';

  @override
  String get showMeaningHelp => 'Traducción al inglés para hindi y alemán';

  @override
  String get settingsVoices => 'Voces';

  @override
  String get settingsVoicesHelp =>
      'Los trabalenguas usan grabaciones de hablantes nativos. La voz de texto a voz de tu teléfono solo se usa si falta una grabación. Si un idioma aparece como no instalado, añádelo en los ajustes de texto a voz de tu teléfono.';

  @override
  String get voiceInstalled => 'Instalada';

  @override
  String get voiceNotInstalled => 'No instalada';

  @override
  String get voiceUnknown => 'Desconocida';

  @override
  String get voiceChecking => 'Comprobando…';

  @override
  String voiceStatusLine(String locale, String status) {
    return '$locale · $status';
  }

  @override
  String testVoice(String language) {
    return 'Probar voz: $language';
  }

  @override
  String get settingsYourData => 'Tus datos';

  @override
  String get resetProgress => 'Restablecer progreso';

  @override
  String get resetProgressTitle => '¿Restablecer progreso?';

  @override
  String get resetProgressBody =>
      'Todos los contadores de práctica volverán a cero.';

  @override
  String get resetProgressDone => 'Progreso restablecido';

  @override
  String get clearFavourites => 'Borrar favoritos';

  @override
  String get clearFavouritesTitle => '¿Borrar favoritos?';

  @override
  String get clearFavouritesBody =>
      'Se quitarán todos los trabalenguas de tus favoritos.';

  @override
  String get clearFavouritesDone => 'Favoritos borrados';

  @override
  String get dialogCancel => 'Cancelar';

  @override
  String get dialogClear => 'Borrar';

  @override
  String get settingsAbout => 'Acerca de';

  @override
  String aboutVersion(String version) {
    return 'Versión $version';
  }

  @override
  String get privacyChoices => 'Opciones de privacidad';

  @override
  String get privacyChoicesHelp => 'Cambia tu consentimiento de anuncios';

  @override
  String get settingsAds => 'Anuncios';

  @override
  String get adFreeWatch => '24 horas sin anuncios';

  @override
  String get adFreeWatchHelp => 'Mira un video corto';

  @override
  String adFreeActive(String time) {
    return 'Sin anuncios hasta $time';
  }

  @override
  String adFreeThanks(String time) {
    return '¡Gracias! Sin anuncios hasta $time.';
  }

  @override
  String get adFreeUnavailable =>
      'Ahora no hay ningún video. Inténtalo más tarde.';
}
