import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lunch_recipe/application/core/use_case.dart';
import 'package:lunch_recipe/domain/core/failure.dart';
import 'package:lunch_recipe/domain/lunch_recipe/model/recipe.dart';
import 'package:lunch_recipe/domain/lunch_recipe/repository/lunch_recipe_repository.dart';

part 'get_sorted_recipes_use_case.freezed.dart';

@injectable
class GetSortedRecipesUseCase implements UseCase<List<Recipe>, GetSortedRecipesParams> {
  final LunchRecipeRepository repository;

  GetSortedRecipesUseCase(this.repository);

  @override
  Future<Either<Failure, List<Recipe>>> call(GetSortedRecipesParams params) async {
    final result = await repository.getRecipes(params.ingredients);
    if (result.isLeft()) {
      return result; // return failure
    }

    final emptyList = <Recipe>[];
    final recipes = result.getOrElse(() => emptyList);
    recipes.sort((a, b) => a.title.compareTo(b.title));
    return Right(recipes);
  }
}

@freezed
abstract class GetSortedRecipesParams with _$GetSortedRecipesParams {
  const factory GetSortedRecipesParams({List<String> ingredients}) = _GetSortedRecipesParams;
}
