import 'package:flutter/material.dart';

import '../models/language_section.dart';
import '../models/twister.dart';

/// Brand colours. The coral matches the launcher icon.
abstract final class AppColors {
  static const brand = Color(0xFFF2542D);
  static const brandDeep = Color(0xFFB0236B);

  /// Filled heart for favourites, the same in every section.
  static const favorite = Color(0xFFE5395B);

  static const heroGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [brandDeep, brand],
  );
}

extension SectionColors on LanguageSection {
  /// Seed for this section's colour scheme and the bright end of its gradient.
  Color get accent => switch (this) {
    LanguageSection.englishUK => const Color(0xFF2557D6),
    LanguageSection.englishUS => const Color(0xFFD62839),
    LanguageSection.hindi => const Color(0xFFFF8A1F),
    LanguageSection.german => const Color(0xFFF5B700),
  };

  /// Dark end of the gradient; card text sits on this side.
  Color get accentDeep => switch (this) {
    LanguageSection.englishUK => const Color(0xFF0B1F5C),
    LanguageSection.englishUS => const Color(0xFF6E0F1B),
    LanguageSection.hindi => const Color(0xFFB8360B),
    LanguageSection.german => const Color(0xFF1C1C1C),
  };

  LinearGradient get gradient => LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [accentDeep, accent],
  );
}

extension DifficultyColors on Difficulty {
  /// Traffic-light colours (background, foreground), tuned per brightness.
  (Color, Color) colors(Brightness brightness) {
    final dark = brightness == Brightness.dark;
    return switch (this) {
      Difficulty.easy =>
        dark
            ? (const Color(0xFF143D22), const Color(0xFF8BE0A4))
            : (const Color(0xFFDDF5E3), const Color(0xFF1B7F3B)),
      Difficulty.medium =>
        dark
            ? (const Color(0xFF3D2E05), const Color(0xFFFFD36B))
            : (const Color(0xFFFFF0C2), const Color(0xFF8A5A00)),
      Difficulty.hard =>
        dark
            ? (const Color(0xFF4A1512), const Color(0xFFFFB4AB))
            : (const Color(0xFFFFE0DC), const Color(0xFFB3261E)),
    };
  }
}

/// Extra font families for glyphs the main font lacks. Only screenshot
/// tests set this; on devices the platform's own font fallback applies.
@visibleForTesting
List<String> debugFontFamilyFallback = const [];

ThemeData buildTheme(Brightness brightness, {Color seed = AppColors.brand}) {
  // Fidelity keeps the primary close to the seed, so colours stay vivid
  // instead of drifting to the muted tones of the default scheme.
  final scheme = ColorScheme.fromSeed(
    seedColor: seed,
    brightness: brightness,
    dynamicSchemeVariant: DynamicSchemeVariant.fidelity,
  );
  final rounded = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16),
  );
  final base = ThemeData(
    useMaterial3: true,
    colorScheme: scheme,
    fontFamilyFallback: debugFontFamilyFallback.isEmpty
        ? null
        : debugFontFamilyFallback,
  );
  final text = base.textTheme;
  final buttonText = text.labelLarge?.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  return base.copyWith(
    scaffoldBackgroundColor: scheme.surface,
    appBarTheme: AppBarTheme(
      backgroundColor: scheme.surface,
      foregroundColor: scheme.onSurface,
      scrolledUnderElevation: 2,
      surfaceTintColor: scheme.primary,
      titleTextStyle: text.titleLarge?.copyWith(
        fontWeight: FontWeight.w600,
        color: scheme.onSurface,
      ),
    ),
    cardTheme: CardThemeData(
      elevation: 0,
      color: scheme.surfaceContainerLow,
      margin: const EdgeInsets.symmetric(vertical: 6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(color: scheme.outlineVariant.withValues(alpha: 0.6)),
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        minimumSize: const Size.fromHeight(52),
        shape: rounded,
        textStyle: buttonText,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size.fromHeight(52),
        shape: rounded,
        side: BorderSide(color: scheme.primary),
        textStyle: buttonText,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: scheme.surfaceContainerHigh,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide.none,
      ),
    ),
    chipTheme: ChipThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
    snackBarTheme: const SnackBarThemeData(behavior: SnackBarBehavior.floating),
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: scheme.primary,
      linearTrackColor: scheme.primaryContainer,
    ),
  );
}

/// Re-themes [child] in a section's own colours, keeping the brightness.
class SectionTheme extends StatelessWidget {
  const SectionTheme({super.key, required this.section, required this.child});

  final LanguageSection section;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    return Theme(
      data: buildTheme(brightness, seed: section.accent),
      child: child,
    );
  }
}
