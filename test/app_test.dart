import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tongue_twister/providers/favorites_provider.dart';
import 'package:tongue_twister/providers/practice_provider.dart';

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

    await tester.tap(find.text('हिन्दी · Hindi'));
    await tester.pumpAndSettle();
    await tester.tap(find.byTooltip('Listen').first);
    await tester.pumpAndSettle();

    expect(find.textContaining('No hi-IN voice'), findsOneWidget);
  });
}
