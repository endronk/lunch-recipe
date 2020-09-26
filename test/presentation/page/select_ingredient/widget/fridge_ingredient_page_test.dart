import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobx/mobx.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';
import 'package:lunch_recipe/injection.dart';
import 'package:lunch_recipe/presentation/core/resource.dart';
import 'package:lunch_recipe/presentation/core/widget/empty_data_widget.dart';
import 'package:lunch_recipe/presentation/page/select_ingredient/model/fridge_ingredient_ui.dart';
import 'package:lunch_recipe/presentation/page/select_ingredient/widget/fridge_ingredient_list_view.dart';
import 'package:lunch_recipe/presentation/page/select_ingredient/widget/fridge_ingredient_page.dart';
import 'package:lunch_recipe/presentation/page/select_ingredient/widget/get_recipes_button.dart';
import 'package:lunch_recipe/presentation/store/lunch_recipe_store.dart';

void main() {
  setUp(() {
    configureInjection();
  });

  group('FridgeIngredientPage', () {
    Future<void> setUpTestApp(
      WidgetTester tester,
      ObservableList<FridgeIngredientUI> usableIngredients,
      LunchRecipeStore store,
    ) async {
      final tApp = Provider<LunchRecipeStore>(
        create: (_) => store,
        child: MaterialApp(
          home: Scaffold(
            body: FridgeIngredientPage(usableIngredients),
          ),
        ),
      );
      await tester.pumpWidget(tApp);
    }

    testWidgets(
        'should show a list view and a button if there is usable ingredient',
        (WidgetTester tester) async {
      final tUsableIngredients = ObservableList.of([
        FridgeIngredientUI(title: 'Eggs', isSelected: false),
        FridgeIngredientUI(title: 'Butter', isSelected: false),
      ]);
      final tStore = getIt<LunchRecipeStore>()
        ..usableIngredients = Resource.success(tUsableIngredients);
      await setUpTestApp(tester, tUsableIngredients, tStore);

      expect(find.byType(FridgeIngredientListView), findsOneWidget);
      expect(find.byType(GetRecipesButton), findsOneWidget);
      getIt.reset();
    });

    testWidgets(
        'should show an empty page if there is no usable ingredient',
        (WidgetTester tester) async {
      final tUsableIngredients = ObservableList.of(<FridgeIngredientUI>[]);
      final tStore = getIt<LunchRecipeStore>()
        ..usableIngredients = Resource.success(tUsableIngredients);
      await setUpTestApp(tester, tUsableIngredients, tStore);

      expect(find.byType(EmptyDataWidget), findsOneWidget);
      getIt.reset();
    });
  });
}
