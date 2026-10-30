/// Every translation on every screen: for each language with an ARB file
/// (new ones join automatically), open each screen on a small 360 dp phone,
/// with large text, and scroll it to the end. A RenderFlex overflow or any
/// exception fails the test and names the language and screen.
library;

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tongue_twister/l10n/app_localizations.dart';
import 'package:tongue_twister/l10n/languages.dart';
import 'package:tongue_twister/models/language_section.dart';
import 'package:tongue_twister/providers/twister_providers.dart';
import 'package:tongue_twister/screens/favorites_screen.dart';
import 'package:tongue_twister/screens/language_screen.dart';
import 'package:tongue_twister/screens/section_screen.dart';
import 'package:tongue_twister/screens/settings_screen.dart';
import 'package:tongue_twister/screens/twister_detail_screen.dart';

import 'helpers.dart';

void main() {
  for (final locale in AppLocalizations.supportedLocales) {
    final language = languageFor(locale);

    test('$locale has its row in the language table', () {
      expect(language, isNotNull, reason: 'add $locale to lib/l10n/languages.dart');
    });
    if (language == null) continue;

    testWidgets('${language.tag}: every screen fits a 360 dp phone', (
      tester,
    ) async {
      tester.view.physicalSize = const Size(1080, 2280);
      tester.view.devicePixelRatio = 3;
      tester.platformDispatcher.textScaleFactorTestValue = 1.15;
      addTearDown(tester.view.reset);
      addTearDown(tester.platformDispatcher.clearTextScaleFactorTestValue);

      final container = await createContainer(
        prefs: {
          'settings.language': language.tag,
          'practice_counts': '{"gb-seashells":3,"hi-kachcha-papad":1}',
          'favorite_twister_ids': ['gb-seashells', 'de-fischers-fritz'],
        },
      );
      addTearDown(container.dispose);
      await tester.pumpWidget(buildApp(container));
      await tester.pumpAndSettle();
      expect(
        Directionality.of(tester.element(find.byType(Scaffold).first)),
        language.rtl ? TextDirection.rtl : TextDirection.ltr,
      );

      final navigator = tester.state<NavigatorState>(find.byType(Navigator));

      Future<void> scrollToEnd() async {
        final scrollables = find.byType(Scrollable);
        if (scrollables.evaluate().isEmpty) return;
        for (var i = 0; i < 12; i++) {
          await tester.fling(scrollables.last, const Offset(0, -800), 2000);
          await tester.pumpAndSettle();
        }
      }

      Future<void> visit(Widget screen) async {
        navigator.push(MaterialPageRoute<void>(builder: (_) => screen));
        await tester.pumpAndSettle();
        await scrollToEnd();
        navigator.pop();
        await tester.pumpAndSettle();
      }

      await scrollToEnd();
      for (final section in LanguageSection.values) {
        await visit(SectionScreen(section: section));
        final twisters = container.read(sectionTwistersProvider(section));
        // The longest twister on the page is the one most likely to overflow.
        final longest = twisters.reduce(
          (a, b) => b.text.length > a.text.length ? b : a,
        );
        await visit(
          TwisterDetailScreen(
            twisters: twisters,
            initialIndex: twisters.indexOf(longest),
          ),
        );
      }
      await visit(const SettingsScreen());
      await visit(const LanguageScreen());
      await visit(const FavoritesScreen());
    });
  }
}
