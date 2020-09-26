import 'package:flutter_test/flutter_test.dart';
import 'package:lunch_recipe/injection.dart';
import 'package:lunch_recipe/main.dart';

void main() {
  setUp(() {
    configureInjection();
  });

  group('MyApp', () {
    final tAppTitle = 'Lunch Recipe';
    testWidgets('should have title "$tAppTitle"', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());

      expect(find.text(tAppTitle), findsOneWidget);
    });
  });
}
