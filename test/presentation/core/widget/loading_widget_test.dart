import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lunch_recipe/domain/core/failure.dart';
import 'package:lunch_recipe/presentation/core/widget/error_snackbar.dart';
import 'package:lunch_recipe/presentation/core/widget/loading_widget.dart';

void main() {
  group('LoadingWidget', () {
    testWidgets('should have a CircularProgressIndicator',
        (WidgetTester tester) async {
      final tApp = MaterialApp(
        home: Scaffold(
          body: LoadingWidget(),
        ),
      );

      await tester.pumpWidget(tApp);

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });
  });
}
