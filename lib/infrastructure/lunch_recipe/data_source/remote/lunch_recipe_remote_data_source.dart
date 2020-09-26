import 'package:injectable/injectable.dart';
import 'package:lunch_recipe/domain/core/exceptions.dart';
import 'package:lunch_recipe/domain/lunch_recipe/model/fridge_ingredient.dart';
import 'package:lunch_recipe/domain/lunch_recipe/model/recipe.dart';

import 'lunch_recipe_service.dart';

abstract class LunchRecipeRemoteDataSource {
  /// Calls the {{url}}/ingredients endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<List<FridgeIngredient>> getFridgeIngredients();

  /// Calls the {{url}}/recipes?ingredients={{ingredient-1}},{{ingredient-n}} endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<List<Recipe>> getRecipes(List<String> ingredients);
}

@Injectable(as: LunchRecipeRemoteDataSource)
class LunchRecipeRemoteDataSourceImpl implements LunchRecipeRemoteDataSource {
  final LunchRecipeService service;

  LunchRecipeRemoteDataSourceImpl(this.service);

  @override
  Future<List<FridgeIngredient>> getFridgeIngredients() async {
    final response = await service.getFridgeIngredients();
    if (response.isSuccessful) {
      return response.body.map((e) => e.toFridgeIngredient()).toList();
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<Recipe>> getRecipes(List<String> ingredients) async {
    final response = await service.getRecipes(ingredients);
    if (response.isSuccessful) {
      return response.body.map((e) => e.toRecipe()).toList();
    } else {
      throw ServerException();
    }
  }
}
