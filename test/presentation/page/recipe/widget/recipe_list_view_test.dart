import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:lunch_recipe/domain/lunch_recipe/model/recipe.dart';
import 'package:lunch_recipe/injection.dart';
import 'package:lunch_recipe/presentation/core/resource.dart';
import 'package:lunch_recipe/presentation/page/recipe/widget/recipe_list_view.dart';
import 'package:lunch_recipe/presentation/page/select_ingredient/model/fridge_ingredient_ui.dart';
import 'package:lunch_recipe/presentation/page/select_ingredient/widget/fridge_ingredient_list_view.dart';
import 'package:lunch_recipe/presentation/store/lunch_recipe_store.dart';

void main() {
  setUp(() {
    configureInjection();
  });

  group('RecipeListView', () {
    Future<void> setUpTestApp(WidgetTester tester, List<Recipe> recipes) async {
      final tApp = MaterialApp(
        home: Scaffold(
          body: RecipeListView(recipes),
        ),
      );
      await tester.pumpWidget(tApp);
    }

    testWidgets('should show recipe image, title, and ingredient text',
        (WidgetTester tester) async {
      final tRecipes = [
        Recipe(title: 'Salad', ingredients: ['Lettuce', 'Tomato']),
        Recipe(title: 'Hotdog', ingredients: ['Hotdog Bun', 'Sausage']),
      ];
      await setUpTestApp(tester, tRecipes);

      expect(find.byType(Image), findsWidgets);
      expect(find.byKey(Key('recipe title')), findsWidgets);
      expect(find.byKey(Key('ingredients')), findsWidgets);
    });
  });
}
