import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lunch_recipe/presentation/core/widget/empty_data_widget.dart';

void main() {
  group('EmptyDataWidget', () {
    testWidgets('should contain message', (WidgetTester tester) async {
      final tMessage = 'No data available';
      final tApp = MaterialApp(
        home: Scaffold(
          body: EmptyDataWidget(tMessage),
        ),
      );

      await tester.pumpWidget(tApp);

      expect(find.text(tMessage), findsOneWidget);
    });
  });
}
