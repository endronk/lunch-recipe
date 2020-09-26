import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:lunch_recipe/injection.dart';
import 'package:lunch_recipe/presentation/page/lunch_date/lunch_date_page.dart';
import 'package:lunch_recipe/presentation/page/lunch_date/widget/set_lunch_date_button.dart';
import 'package:lunch_recipe/presentation/store/lunch_recipe_store.dart';

void main() {
  setUp(() {
    configureInjection();
  });

  group('LunchDatePage', () {
    Future<void> setUpTestApp(WidgetTester tester) async {
      final tStore = getIt<LunchRecipeStore>();
      final tApp = Provider<LunchRecipeStore>(
        create: (_) => tStore,
        child: MaterialApp(
          home: Scaffold(
            body: LunchDatePage(),
          ),
        ),
      );
      await tester.pumpWidget(tApp);
    }

    final tAppTitle = 'Get your lunch recipes suggestion';
    testWidgets('should have text "$tAppTitle"', (WidgetTester tester) async {
      await setUpTestApp(tester);

      expect(find.text(tAppTitle), findsOneWidget);
      getIt.reset();
    });

    testWidgets('should have SetLunchDateButton', (WidgetTester tester) async {
      await setUpTestApp(tester);

      expect(find.byType(SetLunchDateButton), findsOneWidget);
      getIt.reset();
    });
  });
}
