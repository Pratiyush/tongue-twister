// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'Idioma do app';

  @override
  String get languageSystemDefault => 'Padrão do sistema';

  @override
  String languageFollowsDevice(String language) {
    return 'Igual ao seu aparelho · $language';
  }

  @override
  String get languageSearchHint => 'Buscar idiomas';

  @override
  String appCredit(String name) {
    return 'Feito com ❤️ por $name';
  }

  @override
  String get favouritesTitle => 'Favoritos';

  @override
  String get settingsTitle => 'Configurações';

  @override
  String get actionListen => 'Ouvir';

  @override
  String get actionStop => 'Parar';

  @override
  String get addToFavourites => 'Adicionar aos favoritos';

  @override
  String get removeFromFavourites => 'Remover dos favoritos';

  @override
  String get languageBritishEnglish => 'Inglês britânico';

  @override
  String get languageAmericanEnglish => 'Inglês americano';

  @override
  String get languageHindi => 'Híndi';

  @override
  String get languageGerman => 'Alemão';

  @override
  String get groupEnglish => 'Inglês';

  @override
  String sectionTitleNative(String native, String language) {
    return '$native · $language';
  }

  @override
  String get sectionShortUK => 'UK';

  @override
  String get sectionShortUS => 'US';

  @override
  String get sectionSubtitleUK => 'Lorries, biscuits e uma boa xícara de chá';

  @override
  String get sectionSubtitleUS => 'Marmotas, carrinhos e Unique New York';

  @override
  String get difficultyEasy => 'Fácil';

  @override
  String get difficultyMedium => 'Médio';

  @override
  String get difficultyHard => 'Difícil';

  @override
  String get speedSlow => 'Lenta';

  @override
  String get speedNormal => 'Normal';

  @override
  String get speedFast => 'Rápida';

  @override
  String get heroTitle => 'Enrole a língua!';

  @override
  String get heroSubtitle =>
      'Ouça uma voz nativa e depois fale cada vez mais rápido.';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => 'praticados';

  @override
  String get heroStatFavourites => 'favoritos';

  @override
  String get surpriseMe => 'Me surpreenda';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: '$practised de $total praticados',
      one: '$practised de $total praticado',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => 'Recomendado para você';

  @override
  String get recommendRevise =>
      'Hora de revisar: seu trava-língua menos praticado';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Um fácil para começar',
      'medium': 'Um médio para começar',
      'hard': 'Um difícil para começar',
      'other': 'Um bom para começar',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Novo e fácil em $language, que você já pratica',
      'medium': 'Novo e médio em $language, que você já pratica',
      'hard': 'Novo e difícil em $language, que você já pratica',
      'other': 'Novo em $language, que você já pratica',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return 'Experimente algo novo em $language';
  }

  @override
  String get searchTwistersHint => 'Buscar trava-línguas';

  @override
  String get filterAll => 'Todos';

  @override
  String get noTwistersMatch => 'Nenhum trava-língua encontrado.';

  @override
  String get favouritesEmpty =>
      'Toque em ♡ em qualquer trava-língua para guardá-lo aqui.';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Praticado $count×',
      one: 'Praticado $count×',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · deslize para mais';
  }

  @override
  String get pronunciationLabel => 'Pronúncia';

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
  String get saidIt => 'Eu falei!';

  @override
  String get practiseFirstTry =>
      'Primeira tentativa registrada. Agora mais rápido!';

  @override
  String get practiseThreeTimes => 'Três vezes! Sua língua está esquentando.';

  @override
  String get practiseTenTimes => 'Dez vezes. Esse você já domina!';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Boa! Praticado $count vezes.',
      one: 'Boa! Praticado uma vez.',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return 'Nenhuma voz $locale neste aparelho. Adicione uma nas configurações de texto para fala.';
  }

  @override
  String get settingsAppearance => 'Aparência';

  @override
  String get themeSystem => 'Sistema';

  @override
  String get themeLight => 'Claro';

  @override
  String get themeDark => 'Escuro';

  @override
  String get settingsLanguages => 'Idiomas';

  @override
  String get settingsLanguagesHelp =>
      'Escolha os idiomas que você quer aprender. Os ocultos somem da tela inicial.';

  @override
  String get settingsPlayback => 'Reprodução';

  @override
  String get settingsSpeakingSpeed => 'Velocidade da fala';

  @override
  String get settingsRepeatChallenge => 'Desafio de repetição';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Toca o trava-língua $count vezes seguidas',
      one: 'Toca o trava-língua uma vez',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => 'Menos repetições';

  @override
  String get moreRepeats => 'Mais repetições';

  @override
  String get settingsDisplay => 'Exibição';

  @override
  String get showPronunciation => 'Mostrar pronúncia';

  @override
  String get showPronunciationHelp =>
      'Texto romanizado sob os trava-línguas em híndi';

  @override
  String get showMeaning => 'Mostrar significado';

  @override
  String get showMeaningHelp => 'Tradução em inglês para híndi e alemão';

  @override
  String get settingsVoices => 'Vozes';

  @override
  String get settingsVoicesHelp =>
      'Os trava-línguas tocam gravações de falantes nativos. A voz de texto para fala do seu celular só é usada quando falta uma gravação. Se faltar um idioma, instale-o nas configurações do sistema (Android: Configurações → Sistema → Idiomas → Conversão de texto em voz; iOS: Ajustes → Acessibilidade → Conteúdo Falado → Vozes).';

  @override
  String get voiceInstalled => 'Instalada';

  @override
  String get voiceNotInstalled => 'Não instalada';

  @override
  String get voiceUnknown => 'Desconhecido';

  @override
  String get voiceChecking => 'Verificando…';

  @override
  String voiceStatusLine(String locale, String status) {
    return '$locale · $status';
  }

  @override
  String testVoice(String language) {
    return 'Testar voz: $language';
  }

  @override
  String get settingsYourData => 'Seus dados';

  @override
  String get resetProgress => 'Zerar o progresso';

  @override
  String get resetProgressTitle => 'Zerar o progresso?';

  @override
  String get resetProgressBody =>
      'Todas as contagens de prática voltarão a zero.';

  @override
  String get resetProgressDone => 'Progresso zerado';

  @override
  String get clearFavourites => 'Limpar favoritos';

  @override
  String get clearFavouritesTitle => 'Limpar favoritos?';

  @override
  String get clearFavouritesBody =>
      'Todos os trava-línguas serão removidos dos seus favoritos.';

  @override
  String get clearFavouritesDone => 'Favoritos limpos';

  @override
  String get dialogCancel => 'Cancelar';

  @override
  String get dialogClear => 'Limpar';

  @override
  String get settingsAbout => 'Sobre';

  @override
  String aboutVersion(String version) {
    return 'Versão $version';
  }

  @override
  String get privacyChoices => 'Opções de privacidade';

  @override
  String get privacyChoicesHelp => 'Altere seu consentimento de anúncios';
}

/// The translations for Portuguese, as used in Portugal (`pt_PT`).
class AppLocalizationsPtPt extends AppLocalizationsPt {
  AppLocalizationsPtPt() : super('pt_PT');

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'Idioma da app';

  @override
  String get languageSystemDefault => 'Predefinição';

  @override
  String languageFollowsDevice(String language) {
    return 'Igual ao teu dispositivo · $language';
  }

  @override
  String get languageSearchHint => 'Pesquisar idiomas';

  @override
  String appCredit(String name) {
    return 'Feito com ❤️ por $name';
  }

  @override
  String get favouritesTitle => 'Favoritos';

  @override
  String get settingsTitle => 'Definições';

  @override
  String get actionListen => 'Ouvir';

  @override
  String get actionStop => 'Parar';

  @override
  String get addToFavourites => 'Adicionar aos favoritos';

  @override
  String get removeFromFavourites => 'Remover dos favoritos';

  @override
  String get languageBritishEnglish => 'Inglês britânico';

  @override
  String get languageAmericanEnglish => 'Inglês americano';

  @override
  String get languageHindi => 'Hindi';

  @override
  String get languageGerman => 'Alemão';

  @override
  String get groupEnglish => 'Inglês';

  @override
  String sectionTitleNative(String native, String language) {
    return '$native · $language';
  }

  @override
  String get sectionShortUK => 'UK';

  @override
  String get sectionShortUS => 'US';

  @override
  String get sectionSubtitleUK => 'Lorries, biscuits e uma boa chávena de chá';

  @override
  String get sectionSubtitleUS => 'Marmotas, carrinhos e Unique New York';

  @override
  String get difficultyEasy => 'Fácil';

  @override
  String get difficultyMedium => 'Médio';

  @override
  String get difficultyHard => 'Difícil';

  @override
  String get speedSlow => 'Lenta';

  @override
  String get speedNormal => 'Normal';

  @override
  String get speedFast => 'Rápida';

  @override
  String get heroTitle => 'Enrola a língua!';

  @override
  String get heroSubtitle =>
      'Ouve uma voz nativa e depois di-lo cada vez mais depressa.';

  @override
  String heroStatRatio(int done, int total) {
    return '$done/$total';
  }

  @override
  String get heroStatPractised => 'praticados';

  @override
  String get heroStatFavourites => 'favoritos';

  @override
  String get surpriseMe => 'Surpreende-me';

  @override
  String sectionProgress(int practised, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      practised,
      locale: localeName,
      other: '$practised de $total praticados',
      one: '$practised de $total praticado',
    );
    return '$_temp0';
  }

  @override
  String get recommendedTitle => 'Recomendado para ti';

  @override
  String get recommendRevise =>
      'Hora de rever: o teu trava-línguas menos praticado';

  @override
  String recommendStarter(String level) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Um fácil para começar',
      'medium': 'Um médio para começar',
      'hard': 'Um difícil para começar',
      'other': 'Um bom para começar',
    });
    return '$_temp0';
  }

  @override
  String recommendPractisedLanguage(String level, String language) {
    String _temp0 = intl.Intl.selectLogic(level, {
      'easy': 'Novo e fácil em $language, que já praticas',
      'medium': 'Novo e médio em $language, que já praticas',
      'hard': 'Novo e difícil em $language, que já praticas',
      'other': 'Novo em $language, que já praticas',
    });
    return '$_temp0';
  }

  @override
  String recommendNewLanguage(String language) {
    return 'Experimenta algo novo em $language';
  }

  @override
  String get searchTwistersHint => 'Pesquisar trava-línguas';

  @override
  String get filterAll => 'Todos';

  @override
  String get noTwistersMatch => 'Nenhum trava-línguas encontrado.';

  @override
  String get favouritesEmpty =>
      'Toca em ♡ num trava-línguas para o guardar aqui.';

  @override
  String practisedTimes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Praticado $count×',
      one: 'Praticado $count×',
    );
    return '$_temp0';
  }

  @override
  String pagerSwipeHint(int current, int total) {
    return '$current / $total · desliza para mais';
  }

  @override
  String get pronunciationLabel => 'Pronúncia';

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
  String get saidIt => 'Já disse!';

  @override
  String get practiseFirstTry =>
      'Primeira tentativa registada. Agora mais depressa!';

  @override
  String get practiseThreeTimes => 'Três vezes! A tua língua está a aquecer.';

  @override
  String get practiseTenTimes => 'Dez vezes. Este já dominas!';

  @override
  String practisedCountToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Boa! Praticado $count vezes.',
      one: 'Boa! Praticado uma vez.',
    );
    return '$_temp0';
  }

  @override
  String noVoiceForLocale(String locale) {
    return 'Nenhuma voz $locale neste dispositivo. Adiciona uma nas definições de texto para voz.';
  }

  @override
  String get settingsAppearance => 'Aspeto';

  @override
  String get themeSystem => 'Sistema';

  @override
  String get themeLight => 'Claro';

  @override
  String get themeDark => 'Escuro';

  @override
  String get settingsLanguages => 'Idiomas';

  @override
  String get settingsLanguagesHelp =>
      'Escolhe os idiomas que queres aprender. Os ocultos desaparecem do ecrã inicial.';

  @override
  String get settingsPlayback => 'Reprodução';

  @override
  String get settingsSpeakingSpeed => 'Velocidade da fala';

  @override
  String get settingsRepeatChallenge => 'Desafio de repetição';

  @override
  String settingsRepeatSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Reproduz $count vezes seguidas',
      one: 'Reproduz o trava-línguas uma vez',
    );
    return '$_temp0';
  }

  @override
  String repeatCountValue(int count) {
    return '$count×';
  }

  @override
  String get fewerRepeats => 'Menos repetições';

  @override
  String get moreRepeats => 'Mais repetições';

  @override
  String get settingsDisplay => 'Visualização';

  @override
  String get showPronunciation => 'Mostrar pronúncia';

  @override
  String get showPronunciationHelp =>
      'Texto romanizado sob os trava-línguas em hindi';

  @override
  String get showMeaning => 'Mostrar significado';

  @override
  String get showMeaningHelp => 'Tradução em inglês para hindi e alemão';

  @override
  String get settingsVoices => 'Vozes';

  @override
  String get settingsVoicesHelp =>
      'Os trava-línguas usam gravações de falantes nativos. A voz de texto para voz do teu telemóvel só é usada quando falta uma gravação. Se faltar um idioma, instala-o nas definições do sistema (Android: Definições → Sistema → Idiomas → Conversão de texto em voz; iOS: Definições → Acessibilidade → Conteúdo enunciado → Vozes).';

  @override
  String get voiceInstalled => 'Instalada';

  @override
  String get voiceNotInstalled => 'Não instalada';

  @override
  String get voiceUnknown => 'Desconhecido';

  @override
  String get voiceChecking => 'A verificar…';

  @override
  String voiceStatusLine(String locale, String status) {
    return '$locale · $status';
  }

  @override
  String testVoice(String language) {
    return 'Testar voz: $language';
  }

  @override
  String get settingsYourData => 'Os teus dados';

  @override
  String get resetProgress => 'Repor o progresso';

  @override
  String get resetProgressTitle => 'Repor o progresso?';

  @override
  String get resetProgressBody =>
      'Todas as contagens de prática voltam a zero.';

  @override
  String get resetProgressDone => 'Progresso reposto';

  @override
  String get clearFavourites => 'Limpar favoritos';

  @override
  String get clearFavouritesTitle => 'Limpar favoritos?';

  @override
  String get clearFavouritesBody =>
      'Todos os trava-línguas serão removidos dos teus favoritos.';

  @override
  String get clearFavouritesDone => 'Favoritos limpos';

  @override
  String get dialogCancel => 'Cancelar';

  @override
  String get dialogClear => 'Limpar';

  @override
  String get settingsAbout => 'Sobre';

  @override
  String aboutVersion(String version) {
    return 'Versão $version';
  }

  @override
  String get privacyChoices => 'Opções de privacidade';

  @override
  String get privacyChoicesHelp => 'Altera o teu consentimento de anúncios';
}
