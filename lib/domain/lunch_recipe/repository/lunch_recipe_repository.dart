import 'package:dartz/dartz.dart';
import 'package:lunch_recipe/domain/core/failure.dart';
import 'package:lunch_recipe/domain/lunch_recipe/model/fridge_ingredient.dart';
import 'package:lunch_recipe/domain/lunch_recipe/model/recipe.dart';

abstract class LunchRecipeRepository {
  Future<Either<Failure, List<FridgeIngredient>>> getFridgeIngredients();

  Future<Either<Failure, List<Recipe>>> getRecipes(List<String> ingredients);
}
