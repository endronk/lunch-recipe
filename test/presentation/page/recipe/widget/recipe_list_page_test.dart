import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lunch_recipe/domain/lunch_recipe/model/recipe.dart';
import 'package:lunch_recipe/presentation/core/widget/empty_data_widget.dart';
import 'package:lunch_recipe/presentation/page/recipe/widget/recipe_list_page.dart';
import 'package:lunch_recipe/presentation/page/recipe/widget/recipe_list_view.dart';

void main() {
  group('RecipeListPage', () {
    Future<void> setUpTestApp(WidgetTester tester, List<Recipe> recipes) async {
      final tApp = MaterialApp(
        home: Scaffold(
          body: RecipeListPage(recipes),
        ),
      );
      await tester.pumpWidget(tApp);
    }

    testWidgets('should show a list view if there is recipe',
        (WidgetTester tester) async {
      final tRecipes = [
        Recipe(title: 'Salad', ingredients: ['Lettuce', 'Tomato']),
        Recipe(title: 'Hotdog', ingredients: ['Hotdog Bun', 'Sausage']),
      ];
      await setUpTestApp(tester, tRecipes);

      expect(find.byType(RecipeListView), findsOneWidget);
    });

    testWidgets('should show an empty page if there is no recipe',
        (WidgetTester tester) async {
      final tRecipes = <Recipe>[];
      await setUpTestApp(tester, tRecipes);

      expect(find.byType(EmptyDataWidget), findsOneWidget);
    });
  });
}
