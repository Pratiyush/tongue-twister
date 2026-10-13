import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

class TongueTwisterApp extends StatelessWidget {
  const TongueTwisterApp({super.key});

  static const _seed = Color(0xFFE4572E);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
