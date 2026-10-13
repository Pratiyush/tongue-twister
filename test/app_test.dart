import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tongue_twister/providers/favorites_provider.dart';
import 'package:tongue_twister/providers/practice_provider.dart';
import 'package:tongue_twister/providers/settings_provider.dart';

import 'helpers.dart';

void main() {
  testWidgets('home lists English (UK and US), Hindi and German', (
    tester,
  ) async {
    final container = await createContainer();
    addTearDown(container.dispose);
    await tester.pumpWidget(buildApp(container));

    expect(find.text('English'), findsOneWidget);
    expect(find.text('British English'), findsOneWidget);
    expect(find.text('American English'), findsOneWidget);
    await tester.scrollUntilVisible(find.text('हिन्दी · Hindi'), 200);
    expect(find.text('हिन्दी · Hindi'), findsOneWidget);
    await tester.scrollUntilVisible(find.text('Deutsch · German'), 200);
    expect(find.text('Deutsch · German'), findsOneWidget);
  });

  testWidgets('browse a section, filter, open, practise and favourite', (
    tester,
  ) async {
    final engine = FakeSpeechEngine();
    final container = await createContainer(engine: engine);
    addTearDown(container.dispose);
    await tester.pumpWidget(buildApp(container));

    await tester.scrollUntilVisible(find.text('British English'), 200);
    await tester.tap(find.text('British English'));
    await tester.pumpAndSettle();

    await tester.enterText(find.byType(TextField), 'lorry');
    await tester.pumpAndSettle();
    expect(find.textContaining('Red lorry'), findsOneWidget);
    expect(find.textContaining('seashells'), findsNothing);

    await tester.tap(find.textContaining('Red lorry'));
    await tester.pumpAndSettle();

    await tester.tap(find.text('Listen'));
    await tester.pumpAndSettle();
    expect(engine.languages, ['en-GB']);
    expect(engine.spoken.single, startsWith('Red lorry'));

    await tester.tap(find.text('I said it!'));
    await tester.pump();
    expect(container.read(practiceProvider)['gb-red-lorry'], 1);

    await tester.tap(find.byTooltip('Add to favourites'));
    await tester.pump();
    expect(container.read(favoritesProvider), {'gb-red-lorry'});
  });

  testWidgets('missing voice shows a hint', (tester) async {
    final container = await createContainer(
      engine: FakeSpeechEngine(unavailable: {'hi-IN'}),
    );
    addTearDown(container.dispose);
    await tester.pumpWidget(buildApp(container));

    await tester.scrollUntilVisible(find.text('हिन्दी · Hindi'), 200);
    await tester.tap(find.text('हिन्दी · Hindi'));
    await tester.pumpAndSettle();
    await tester.tap(find.byTooltip('Listen').first);
    await tester.pumpAndSettle();

    expect(find.textContaining('No hi-IN voice'), findsOneWidget);
  });

  testWidgets('settings: theme, repeat count, display toggles, voices, reset', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(1170, 2532);
    tester.view.devicePixelRatio = 3;
    addTearDown(tester.view.reset);
    final engine = FakeSpeechEngine(unavailable: {'hi-IN'});
    final container = await createContainer(
      engine: engine,
      prefs: {'practice_counts': '{"de-fischers-fritz":2}'},
    );
    addTearDown(container.dispose);
    await tester.pumpWidget(buildApp(container));

    await tester.tap(find.byTooltip('Settings'));
    await tester.pumpAndSettle();

    await tester.tap(find.text('Dark'));
    await tester.pumpAndSettle();
    final app = tester.widget<MaterialApp>(find.byType(MaterialApp));
    expect(app.themeMode, ThemeMode.dark);

    await tester.tap(find.byTooltip('More repeats'));
    await tester.pump();
    expect(container.read(settingsProvider).repeatCount, 4);

    await tester.tap(find.text('Show meaning'));
    await tester.pump();
    expect(container.read(settingsProvider).showMeaning, isFalse);

    await tester.scrollUntilVisible(find.text('Deutsch · German'), 200);
    expect(find.textContaining('hi-IN · Not installed'), findsOneWidget);
    expect(find.textContaining('de-DE · Installed'), findsOneWidget);
    await tester.ensureVisible(find.byTooltip('Test German voice'));
    await tester.pumpAndSettle();
    await tester.tap(find.byTooltip('Test German voice'));
    await tester.pumpAndSettle();
    expect(engine.languages.last, 'de-DE');

    await tester.scrollUntilVisible(find.text('Reset practice progress'), 200);
    await tester.tap(find.text('Reset practice progress'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Clear'));
    await tester.pumpAndSettle();
    expect(container.read(practiceProvider), isEmpty);

    // Meaning is hidden and the challenge button follows the repeat count.
    await tester.pageBack();
    await tester.pumpAndSettle();
    await tester.scrollUntilVisible(find.text('Deutsch · German'), 200);
    await tester.tap(find.text('Deutsch · German'));
    await tester.pumpAndSettle();
    await tester.tap(find.textContaining('Fischers Fritz'));
    await tester.pumpAndSettle();
    expect(find.text('MEANING'), findsNothing);
    await tester.tap(find.text('4× in a row'));
    await tester.pumpAndSettle();
    expect(
      engine.spoken.where((t) => t.startsWith('Fischers Fritz')),
      hasLength(4),
    );
  });
}
