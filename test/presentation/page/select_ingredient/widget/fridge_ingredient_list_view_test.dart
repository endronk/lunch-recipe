import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:lunch_recipe/injection.dart';
import 'package:lunch_recipe/presentation/core/resource.dart';
import 'package:lunch_recipe/presentation/page/select_ingredient/model/fridge_ingredient_ui.dart';
import 'package:lunch_recipe/presentation/page/select_ingredient/widget/fridge_ingredient_list_view.dart';
import 'package:lunch_recipe/presentation/store/lunch_recipe_store.dart';

void main() {
  setUp(() {
    configureInjection();
  });

  group('FridgeIngredientListView', () {
    Future<void> setUpTestApp(
      WidgetTester tester,
      ObservableList<FridgeIngredientUI> usableIngredients,
    ) async {
      final tStore = getIt<LunchRecipeStore>()
        ..usableIngredients = Resource.success(usableIngredients);
      final tApp = Provider<LunchRecipeStore>(
        create: (_) => tStore,
        child: MaterialApp(
          home: Scaffold(
            body: Column(
              children: <Widget>[
                FridgeIngredientListView(usableIngredients),
              ],
            ),
          ),
        ),
      );
      await tester.pumpWidget(tApp);
    }

    testWidgets(
        'should show unchecked list if there is no selected ingredient and then a checked item after an ingredient is selected',
        (WidgetTester tester) async {
      final tUsableIngredients = ObservableList.of([
        FridgeIngredientUI(title: 'Eggs', isSelected: false),
        FridgeIngredientUI(title: 'Butter', isSelected: false),
      ]);
      await setUpTestApp(tester, tUsableIngredients);

      final selectedTileFinder =
          find.byWidgetPredicate((w) => w is CheckboxListTile && w.value);
      expect(selectedTileFinder, findsNothing);

      tUsableIngredients[0].isSelected = true;
      await tester.pumpAndSettle();
      expect(selectedTileFinder, findsOneWidget);
    });
  });
}
