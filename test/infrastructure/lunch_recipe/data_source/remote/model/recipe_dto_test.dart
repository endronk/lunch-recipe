import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:lunch_recipe/domain/lunch_recipe/model/recipe.dart';
import 'package:lunch_recipe/infrastructure/lunch_recipe/data_source/remote/model/recipe_dto.dart';

import '../../fixture/fixture_reader.dart';

void main() {
  group('RecipeDto', () {
    test('should return a valid model from JSON', () {
      final tRecipeDto = RecipeDto(
        title: 'Salad',
        ingredients: [
          'Lettuce',
          'Tomato',
          'Cucumber',
          'Beetroot',
          'Salad Dressing'
        ],
      );
      final jsonMap = json.decode(fixture('recipe.json'));

      final result = RecipeDto.fromJson(jsonMap);

      expect(result, tRecipeDto);
    });

    test('should be able to be converted to Recipe domain model', () {
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
      final recipeDto = RecipeDto(
        title: 'Salad',
        ingredients: [
          'Lettuce',
          'Tomato',
          'Cucumber',
          'Beetroot',
          'Salad Dressing'
        ],
      );

      final result = recipeDto.toRecipe();

      expect(result, tRecipe);
    });
  });
}
