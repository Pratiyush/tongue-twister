import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'providers/settings_provider.dart';

import 'screens/home_screen.dart';

class TongueTwisterApp extends ConsumerWidget {
  const TongueTwisterApp({super.key});

  static const _seed = Color(0xFFE4572E);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      themeMode: ref.watch(settingsProvider.select((s) => s.themeMode)),
      title: 'Tongue Twisters',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: _seed),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: _seed,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
