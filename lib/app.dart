import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'l10n/app_localizations.dart';
import 'l10n/languages.dart';
import 'providers/settings_provider.dart';
import 'screens/home_screen.dart';
import 'theme/app_theme.dart';

class TongueTwisterApp extends ConsumerWidget {
  const TongueTwisterApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tag = ref.watch(settingsProvider.select((s) => s.language));
    final picked = tag == null ? null : languageForTag(tag);
    return MaterialApp(
      onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      locale: picked != null && picked.available ? picked.locale : null,
      localeListResolutionCallback: (locales, _) =>
          resolveLocale(locales ?? const []),
      debugShowCheckedModeBanner: false,
      themeMode: ref.watch(settingsProvider.select((s) => s.themeMode)),
      theme: buildTheme(Brightness.light),
      darkTheme: buildTheme(Brightness.dark),
      home: const HomeScreen(),
    );
  }
}
