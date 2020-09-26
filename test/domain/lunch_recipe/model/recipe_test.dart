import 'package:flutter_test/flutter_test.dart';
import 'package:lunch_recipe/domain/lunch_recipe/model/recipe.dart';

void main() {
  group('Recipe', () {
    final tRecipe = Recipe(
      title: 'Salad',
      ingredients: [
        'Lettuce',
        'Tomato',
        'Cucumber',
        'Beetroot',
        'Salad Dressing'
      ],
    );

    test('should have a `title` field', () {
      expect(tRecipe,
          isA<Recipe>().having((e) => e.title, 'title', isA<String>()));
    });

    test('should have an `ingredients` field', () {
      expect(
          tRecipe,
          isA<Recipe>().having(
              (e) => e.ingredients, 'ingredients', isA<List<String>>()));
    });
  });
}
