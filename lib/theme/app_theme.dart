import 'package:flutter/material.dart';

import '../models/language_section.dart';
import '../models/twister.dart';

/// Brand colours. The coral matches the launcher icon.
abstract final class AppColors {
  static const brand = Color(0xFFF2542D);
  static const brandDeep = Color(0xFFB0236B);

  /// Filled heart for favourites, the same in every section.
  static const favorite = Color(0xFFE5395B);

  /// "I said it!" button: a success green, the same in every section so it
  /// stands apart from the section-coloured Listen button.
  static (Color background, Color foreground) success(Brightness brightness) =>
      brightness == Brightness.dark
      ? (const Color(0xFF4ADE80), const Color(0xFF052E16))
      : (const Color(0xFF15803D), Colors.white);

  static const heroGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [brandDeep, brand],
  );
}

/// Hand-picked accent colours for one theme. Surfaces stay neutral, so the
/// accent only shows on buttons, chips, headers and highlights.
class AccentPalette {
  const AccentPalette({
    required this.primary,
    required this.onPrimary,
    required this.container,
    required this.onContainer,
  });

  final Color primary;
  final Color onPrimary;

  /// Tonal fill for selected chips, segmented buttons and tonal buttons.
  final Color container;
  final Color onContainer;
}

const _brandLight = AccentPalette(
  primary: Color(0xFFC83C12),
  onPrimary: Colors.white,
  container: Color(0xFFFFE3D9),
  onContainer: Color(0xFF5C1A05),
);
const _brandDark = AccentPalette(
  primary: Color(0xFFFF8A65),
  onPrimary: Color(0xFF3E0E00),
  container: Color(0xFF5C2210),
  onContainer: Color(0xFFFFDBCF),
);

extension SectionColors on LanguageSection {
  /// Bright end of the section gradient (home card), and icon highlights.
  Color get accent => switch (this) {
    LanguageSection.englishUK => const Color(0xFF2557D6),
    LanguageSection.englishUS => const Color(0xFFD62839),
    LanguageSection.hindi => const Color(0xFFFF8A1F),
    LanguageSection.german => const Color(0xFFF5B700),
  };

  /// Dark end of every section gradient.
  Color get accentDeep => switch (this) {
    LanguageSection.englishUK => const Color(0xFF0B1F5C),
    LanguageSection.englishUS => const Color(0xFF6E0F1B),
    LanguageSection.hindi => const Color(0xFF9A2E07),
    LanguageSection.german => const Color(0xFF141414),
  };

  /// Mid tone that keeps white text readable across a header or card.
  Color get accentMid => switch (this) {
    LanguageSection.englishUK => const Color(0xFF2557D6),
    LanguageSection.englishUS => const Color(0xFFC8102E),
    LanguageSection.hindi => const Color(0xFFD9480F),
    LanguageSection.german => const Color(0xFF3A3A3A),
  };

  /// Home card gradient: deep to bright.
  LinearGradient get gradient => LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [accentDeep, accent],
  );

  /// Header and twister-card gradient: deep to mid, safe for white text.
  LinearGradient get headerGradient => LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [accentDeep, accentMid],
  );

  AccentPalette palette(Brightness brightness) {
    final dark = brightness == Brightness.dark;
    return switch (this) {
      LanguageSection.englishUK =>
        dark
            ? const AccentPalette(
                primary: Color(0xFF8AB4FF),
                onPrimary: Color(0xFF0B1F5C),
                container: Color(0xFF1C2E63),
                onContainer: Color(0xFFDCE6FF),
              )
            : const AccentPalette(
                primary: Color(0xFF2557D6),
                onPrimary: Colors.white,
                container: Color(0xFFDCE6FF),
                onContainer: Color(0xFF0B1F5C),
              ),
      LanguageSection.englishUS =>
        dark
            ? const AccentPalette(
                primary: Color(0xFFFF8A95),
                onPrimary: Color(0xFF4A0710),
                container: Color(0xFF5A1420),
                onContainer: Color(0xFFFFDDE1),
              )
            : const AccentPalette(
                primary: Color(0xFFC8102E),
                onPrimary: Colors.white,
                container: Color(0xFFFFDDE1),
                onContainer: Color(0xFF6E0F1B),
              ),
      LanguageSection.hindi =>
        dark
            ? const AccentPalette(
                primary: Color(0xFFFFA552),
                onPrimary: Color(0xFF4A1A04),
                container: Color(0xFF5A2A0C),
                onContainer: Color(0xFFFFE6CC),
              )
            : const AccentPalette(
                primary: Color(0xFFC2410C),
                onPrimary: Colors.white,
                container: Color(0xFFFFE6CC),
                onContainer: Color(0xFF7A2E0A),
              ),
      LanguageSection.german =>
        dark
            ? const AccentPalette(
                primary: Color(0xFFFFCC00),
                onPrimary: Color(0xFF1C1C1C),
                container: Color(0xFF3D3405),
                onContainer: Color(0xFFFFF1B8),
              )
            : const AccentPalette(
                primary: Color(0xFF262626),
                onPrimary: Colors.white,
                container: Color(0xFFFFF1B8),
                onContainer: Color(0xFF3D3000),
              ),
    };
  }
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

ColorScheme _scheme(Brightness brightness, AccentPalette accent) {
  final dark = brightness == Brightness.dark;
  final base = ColorScheme.fromSeed(
    seedColor: accent.primary,
    brightness: brightness,
  );
  // Neutral greys for every surface; the accent never tints backgrounds.
  return base.copyWith(
    primary: accent.primary,
    onPrimary: accent.onPrimary,
    primaryContainer: accent.container,
    onPrimaryContainer: accent.onContainer,
    secondary: accent.primary,
    onSecondary: accent.onPrimary,
    secondaryContainer: accent.container,
    onSecondaryContainer: accent.onContainer,
    surface: dark ? const Color(0xFF121214) : const Color(0xFFF8F8FA),
    onSurface: dark ? const Color(0xFFE6E6EA) : const Color(0xFF1B1B1F),
    onSurfaceVariant: dark ? const Color(0xFFA9AAB3) : const Color(0xFF5D5E66),
    surfaceContainerLowest: dark
        ? const Color(0xFF0D0D0F)
        : const Color(0xFFFFFFFF),
    surfaceContainerLow: dark
        ? const Color(0xFF1A1A1D)
        : const Color(0xFFFFFFFF),
    surfaceContainer: dark ? const Color(0xFF1F1F23) : const Color(0xFFF1F1F4),
    surfaceContainerHigh: dark
        ? const Color(0xFF29292E)
        : const Color(0xFFEBEBEF),
    surfaceContainerHighest: dark
        ? const Color(0xFF333338)
        : const Color(0xFFE4E4E9),
    outline: dark ? const Color(0xFF75767F) : const Color(0xFF8E8F98),
    outlineVariant: dark ? const Color(0xFF34343A) : const Color(0xFFE2E2E8),
  );
}

ThemeData buildTheme(Brightness brightness, {LanguageSection? section}) {
  final accent =
      section?.palette(brightness) ??
      (brightness == Brightness.dark ? _brandDark : _brandLight);
  final scheme = _scheme(brightness, accent);
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
      scrolledUnderElevation: 0,
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
        side: BorderSide(color: scheme.outlineVariant),
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
        foregroundColor: scheme.primary,
        side: BorderSide(color: scheme.primary, width: 1.5),
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
      side: BorderSide(color: scheme.outlineVariant),
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
      data: buildTheme(brightness, section: section),
      child: child,
    );
  }
}

/// App bar painted with the section's gradient and white content.
class SectionAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SectionAppBar({super.key, required this.section, this.actions});

  final LanguageSection section;
  final List<Widget>? actions;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      foregroundColor: Colors.white,
      backgroundColor: section.accentDeep,
      flexibleSpace: DecoratedBox(
        decoration: BoxDecoration(gradient: section.headerGradient),
      ),
      titleTextStyle: theme.appBarTheme.titleTextStyle?.copyWith(
        color: Colors.white,
      ),
      title: Text('${section.flag}  ${section.title}'),
      actions: actions,
    );
  }
}
