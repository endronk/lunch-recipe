import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';
import 'package:mockito/mockito.dart';
import 'package:lunch_recipe/application/lunch_recipe/get_sorted_usable_fridge_ingredients_use_case.dart';
import 'package:lunch_recipe/domain/core/failure.dart';
import 'package:lunch_recipe/domain/lunch_recipe/model/fridge_ingredient.dart';
import 'package:lunch_recipe/domain/lunch_recipe/repository/lunch_recipe_repository.dart';

class MockLunchRecipeRepository extends Mock implements LunchRecipeRepository {}

void main() {
  MockLunchRecipeRepository mockRepository;
  GetSortedUsableFridgeIngredientsUseCase useCase;

  setUp(() {
    mockRepository = MockLunchRecipeRepository();
    useCase = GetSortedUsableFridgeIngredientsUseCase(mockRepository);
  });

  group('GetSortedUsableFridgeIngredientsUseCase', () {
    final tParams = GetSortedUsableFridgeIngredientsParams(
        useDate: DateFormat('yyyy-MM-dd').parse('2019-11-17'));

    test(
        'should return sorted usable FridgeIngredient list from the repository if the call is successful',
        () async {
      final tFridgeIngredients = [
        FridgeIngredient(
            title: 'Eggs', useBy: DateFormat('yyyy-MM-dd').parse('2019-11-25')),
        FridgeIngredient(
            title: 'Butter',
            useBy: DateFormat('yyyy-MM-dd').parse('2019-11-25')),
        FridgeIngredient(
            title: 'Mushrooms',
            useBy: DateFormat('yyyy-MM-dd').parse('2019-11-11')),
        FridgeIngredient(
            title: 'Cucumber',
            useBy: DateFormat('yyyy-MM-dd').parse('2019-11-05')),
      ];
      final tSortedUsableFridgeIngredients = [
        FridgeIngredient(
            title: 'Butter',
            useBy: DateFormat('yyyy-MM-dd').parse('2019-11-25')),
        FridgeIngredient(
            title: 'Eggs', useBy: DateFormat('yyyy-MM-dd').parse('2019-11-25')),
      ];

      when(mockRepository.getFridgeIngredients())
          .thenAnswer((_) async => Right(tFridgeIngredients));

      final result = await useCase(tParams);
      final content = result.getOrElse(() => null);

      verify(mockRepository.getFridgeIngredients());
      expect(result, isA<Right>());
      expect(content, tSortedUsableFridgeIngredients);
    });

    test('should return failure if the call is unsuccessful', () async {
      final tFailure = NetworkFailure();
      when(mockRepository.getFridgeIngredients())
          .thenAnswer((_) async => Left(tFailure));

      final result = await useCase(tParams);

      verify(mockRepository.getFridgeIngredients());
      expect(result, Left(tFailure));
    });
  });
}
