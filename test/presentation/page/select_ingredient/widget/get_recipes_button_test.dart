import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobx/mobx.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';
import 'package:lunch_recipe/injection.dart';
import 'package:lunch_recipe/presentation/core/resource.dart';
import 'package:lunch_recipe/presentation/page/select_ingredient/model/fridge_ingredient_ui.dart';
import 'package:lunch_recipe/presentation/page/select_ingredient/widget/get_recipes_button.dart';
import 'package:lunch_recipe/presentation/store/lunch_recipe_store.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

void main() {
  setUp(() {
    configureInjection();
  });

  group('GetRecipesButton', () {
    Future<void> setUpTestApp(WidgetTester tester, bool hasSelectedIngredient,
        {NavigatorObserver navigatorObserver}) async {
      final tUsableIngredients = ObservableList.of([
        FridgeIngredientUI(title: 'Eggs', isSelected: hasSelectedIngredient),
        FridgeIngredientUI(title: 'Butter', isSelected: false),
      ]);
      final tStore = getIt<LunchRecipeStore>()
        ..usableIngredients = Resource.success(tUsableIngredients);
      final tApp = Provider<LunchRecipeStore>(
        create: (_) => tStore,
        child: MaterialApp(
          home: Scaffold(
            body: GetRecipesButton(tUsableIngredients),
          ),
          navigatorObservers:
              navigatorObserver != null ? [navigatorObserver] : [],
        ),
      );
      await tester.pumpWidget(tApp);
    }

    final tButtonText = 'Get recipes';
    testWidgets('should have title "$tButtonText"',
        (WidgetTester tester) async {
      await setUpTestApp(tester, false);

      expect(find.text(tButtonText), findsOneWidget);
      getIt.reset();
    });

    testWidgets('should navigate if tapped and has any ingredient selected',
        (WidgetTester tester) async {
      final mockObserver = MockNavigatorObserver();
      await setUpTestApp(tester, true, navigatorObserver: mockObserver);
      verify(mockObserver.didPush(any, any));

      expect(find.byType(MaterialButton), findsOneWidget);
      await tester.tap(find.byType(MaterialButton));
      await tester.pumpAndSettle();

      verify(mockObserver.didPush(any, any));
      getIt.reset();
    });

    testWidgets(
        'should not navigate if tapped and doesn\'t have any ingredient selected',
        (WidgetTester tester) async {
      final mockObserver = MockNavigatorObserver();
      await setUpTestApp(tester, false, navigatorObserver: mockObserver);
      verify(mockObserver.didPush(any, any));

      expect(find.byType(MaterialButton), findsOneWidget);
      await tester.tap(find.byType(MaterialButton));
      await tester.pumpAndSettle();

      verifyNever(mockObserver.didPush(any, any));
      getIt.reset();
    });
  });
}
