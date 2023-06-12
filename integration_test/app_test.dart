import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_example/view_page.dart';
import 'package:integration_test/integration_test.dart';
import 'package:form_example/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('Form Submission Test', () {
    testWidgets('Verify Form Submission and Navigation to ViewPage',
        (WidgetTester tester) async {
      app.main();

      await tester.pumpAndSettle();

      // Fill in the form with random data
      await tester.enterText(find.byType(TextField).at(0), 'ASRUL');
      await tester.enterText(find.byType(TextField).at(1), '20210140122');
      await tester.enterText(find.byType(TextField).at(2), '2001-15-15');
      await tester.enterText(find.byType(TextField).at(3), 'Male');
      await tester.enterText(find.byType(TextField).at(4), '20210140123');
      await tester.enterText(find.byType(TextField).at(5), 'Bachelor Degree');
      await tester.enterText(find.byType(TextField).at(6), 'Christian');
      await tester.enterText(find.byType(TextField).at(7), 'Engineer');
      await tester.enterText(find.byType(TextField).at(8), '123 Main St');
      await tester.enterText(find.byType(TextField).at(9), 'Savings Account');

      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();

      // Verify that the ViewPage is displayed
      expect(find.byType(ViewPage), findsOneWidget);

      // Delay for a few seconds to observe the result
      await Future.delayed(const Duration(seconds: 3));

      // Print "Test finished" to indicate that the test has completed successfully
      print('Test finished');

      // Mark the test as successful
      expect(true, true);
    });
  });
}
