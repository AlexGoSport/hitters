import 'package:flutter_test/flutter_test.dart';
import 'package:hitters/main.dart' as app;

void main() {
  testWidgets('main builds MyApp and increments counter', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const app.MyApp());

    // Verify the title and initial counter
    expect(find.text('Flutter Demo Home Page'), findsOneWidget);
    expect(find.text('0'), findsOneWidget);

    // Tap the FAB and verify the counter increments
    final fab = find.byTooltip('Increment');
    await tester.tap(fab);
    await tester.pump();
    expect(find.text('1'), findsOneWidget);
  });

  testWidgets('top-level main() executes and mounts the app', (
    WidgetTester tester,
  ) async {
    // Call the app's top-level main to exercise runApp path
    app.main();
    await tester.pump();

    // Verify the app is mounted and shows the initial counter
    expect(find.byType(app.MyApp), findsOneWidget);
    expect(find.text('0'), findsOneWidget);
  });
}
