import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:matcher/matcher.dart';
import 'package:mockito/mockito.dart';
import 'package:lunch_recipe/domain/core/exceptions.dart';
import 'package:lunch_recipe/infrastructure/lunch_recipe/data_source/remote/lunch_recipe_remote_data_source.dart';
import 'package:lunch_recipe/infrastructure/lunch_recipe/data_source/remote/lunch_recipe_service.dart';
import 'package:lunch_recipe/infrastructure/lunch_recipe/data_source/remote/model/fridge_ingredient_dto.dart';
import 'package:lunch_recipe/infrastructure/lunch_recipe/data_source/remote/model/recipe_dto.dart';

import '../fixture/fixture_reader.dart';

class MockLunchRecipeService extends Mock implements LunchRecipeService {}

void main() {
  MockLunchRecipeService mockService = MockLunchRecipeService();
  LunchRecipeRemoteDataSourceImpl dataSource;

  setUp(() {
    mockService = MockLunchRecipeService();
    dataSource = LunchRecipeRemoteDataSourceImpl(mockService);
  });

  group('getFridgeIngredients', () {
    final tJsonResponse = fixture('ingredients.json');
    final tFridgeIngredientDtoList = (json.decode(tJsonResponse) as List)
        .map((e) => FridgeIngredientDto.fromJson(e))
        .toList();
    final tFridgeIngredientList =
        tFridgeIngredientDtoList.map((e) => e.toFridgeIngredient()).toList();

    test(
      'should call getFridgeIngredients from the remote service',
      () async {
        final tBaseResponse = http.Response(tJsonResponse, 200);
        final tResponse = Response(tBaseResponse, tFridgeIngredientDtoList);
        when(mockService.getFridgeIngredients())
            .thenAnswer((_) async => tResponse);

        await dataSource.getFridgeIngredients();

        verify(mockService.getFridgeIngredients());
      },
    );

    test(
      'should return FridgeIngredient list when the response is successful',
      () async {
        final tBaseResponse = http.Response(tJsonResponse, 200);
        final tResponse = Response(tBaseResponse, tFridgeIngredientDtoList);
        when(mockService.getFridgeIngredients())
            .thenAnswer((_) async => tResponse);

        final result = await dataSource.getFridgeIngredients();

        expect(result, tFridgeIngredientList);
      },
    );

    test(
      'should throw a ServerException when the response is not successful',
      () async {
        final tBaseResponse = http.Response(tJsonResponse, 404);
        final tResponse = Response(tBaseResponse, null);
        when(mockService.getFridgeIngredients())
            .thenAnswer((_) async => tResponse);

        final call = dataSource.getFridgeIngredients;

        expect(() => call(), throwsA(TypeMatcher<ServerException>()));
      },
    );
  });

  group('getRecipes', () {
    final tJsonResponse = fixture('recipes.json');
    final tRecipeDtoList = (json.decode(tJsonResponse) as List)
        .map((e) => RecipeDto.fromJson(e))
        .toList();
    final tRecipeList = tRecipeDtoList.map((e) => e.toRecipe()).toList();
    final tIngredientList = ['Eggs', 'Butter'];

    test(
      'should call getRecipes from the remote service',
      () async {
        final tBaseResponse = http.Response(tJsonResponse, 200);
        final tResponse = Response(tBaseResponse, tRecipeDtoList);
        when(mockService.getRecipes(tIngredientList))
            .thenAnswer((_) async => tResponse);

        await dataSource.getRecipes(tIngredientList);

        verify(mockService.getRecipes(tIngredientList));
      },
    );

    test(
      'should return Recipe list when the response is successful',
      () async {
        final tBaseResponse = http.Response(tJsonResponse, 200);
        final tResponse = Response(tBaseResponse, tRecipeDtoList);
        when(mockService.getRecipes(tIngredientList))
            .thenAnswer((_) async => tResponse);

        final result = await dataSource.getRecipes(tIngredientList);

        expect(result, tRecipeList);
      },
    );

    test(
      'should throw a ServerException when the response is not successful',
      () async {
        final tBaseResponse = http.Response(tJsonResponse, 404);
        final tResponse = Response(tBaseResponse, null);
        when(mockService.getRecipes(tIngredientList))
            .thenAnswer((_) async => tResponse);

        final call = dataSource.getRecipes;

        expect(() => call(tIngredientList),
            throwsA(TypeMatcher<ServerException>()));
      },
    );
  });
}
