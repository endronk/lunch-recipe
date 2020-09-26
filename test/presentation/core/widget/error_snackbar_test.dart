import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lunch_recipe/domain/core/failure.dart';
import 'package:lunch_recipe/presentation/core/widget/error_snackbar.dart';

void main() {
  Future<void> setUpTestApp(WidgetTester tester, Failure failure) async {
    final tApp = MaterialApp(
      home: Scaffold(
        body: ErrorSnackbar(failure),
      ),
    );

    await tester.pumpWidget(tApp);
    await tester.pumpAndSettle();
  }

  group('ErrorSnackbar', () {
    final tNetworkFailureMessage = 'Couldn\'t connect to internet';
    final tServerFailureMessage = 'Oops! Something went wrong';

    testWidgets(
        'should show "$tNetworkFailureMessage" error message when there is network failure',
        (WidgetTester tester) async {
      await setUpTestApp(tester, NetworkFailure());

      expect(find.text(tNetworkFailureMessage), findsOneWidget);
    });

    testWidgets(
        'should show "$tServerFailureMessage" error message when there is server failure',
        (WidgetTester tester) async {
      await setUpTestApp(tester, ServerFailure());

      expect(find.text(tServerFailureMessage), findsOneWidget);
    });

    testWidgets('should have red background color',
        (WidgetTester tester) async {
      await setUpTestApp(tester, ServerFailure());

      expect(
        (tester.firstWidget(find.byType(SnackBar)) as SnackBar).backgroundColor,
        Colors.red,
      );
    });
  });
}
