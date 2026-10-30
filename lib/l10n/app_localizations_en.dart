// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Tongue Twisters';

  @override
  String get settingsLanguage => 'App language';

  @override
  String get languageSystemDefault => 'System default';

  @override
  String languageFollowsDevice(String language) {
    return 'Follows your device · $language';
  }

  @override
  String get languageSearchHint => 'Search languages';
}
