import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:lunch_recipe/application/lunch_recipe/get_sorted_recipes_use_case.dart';
import 'package:lunch_recipe/domain/core/failure.dart';
import 'package:lunch_recipe/domain/lunch_recipe/model/recipe.dart';
import 'package:lunch_recipe/domain/lunch_recipe/repository/lunch_recipe_repository.dart';

class MockLunchRecipeRepository extends Mock implements LunchRecipeRepository {}

void main() {
  MockLunchRecipeRepository mockRepository;
  GetSortedRecipesUseCase useCase;

  setUp(() {
    mockRepository = MockLunchRecipeRepository();
    useCase = GetSortedRecipesUseCase(mockRepository);
  });

  group('GetSortedRecipesUseCase', () {
    final tIngredients = ['Eggs', 'Butter'];
    final tParams = GetSortedRecipesParams(ingredients: tIngredients);

    test(
        'should return sorted recipe list from the repository if the call is successful',
        () async {
      final tRecipes = [
        Recipe(title: 'Salad', ingredients: ['Lettuce', 'Tomato']),
        Recipe(title: 'Hotdog', ingredients: ['Hotdog Bun', 'Sausage']),
      ];
      final tSortedRecipes = [
        Recipe(title: 'Hotdog', ingredients: ['Hotdog Bun', 'Sausage']),
        Recipe(title: 'Salad', ingredients: ['Lettuce', 'Tomato']),
      ];

      when(mockRepository.getRecipes(any))
          .thenAnswer((_) async => Right(tRecipes));

      final result = await useCase(tParams);
      final content = result.getOrElse(() => null);

      verify(mockRepository.getRecipes(tIngredients));
      expect(result, isA<Right>());
      expect(content, tSortedRecipes);
    });

    test('should return failure if the call is unsuccessful', () async {
      final tFailure = NetworkFailure();
      when(mockRepository.getRecipes(any))
          .thenAnswer((_) async => Left(tFailure));

      final result = await useCase(tParams);

      verify(mockRepository.getRecipes(tIngredients));
      expect(result, Left(tFailure));
    });
  });
}
