import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:lunch_recipe/domain/core/exceptions.dart';
import 'package:lunch_recipe/domain/core/failure.dart';
import 'package:lunch_recipe/domain/lunch_recipe/model/fridge_ingredient.dart';
import 'package:lunch_recipe/domain/lunch_recipe/model/recipe.dart';
import 'package:lunch_recipe/domain/lunch_recipe/repository/lunch_recipe_repository.dart';
import 'package:lunch_recipe/infrastructure/core/network_info.dart';
import 'package:lunch_recipe/infrastructure/lunch_recipe/data_source/remote/lunch_recipe_remote_data_source.dart';

@Injectable(as: LunchRecipeRepository)
class LunchRecipeRepositoryImpl implements LunchRecipeRepository {
  final LunchRecipeRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  LunchRecipeRepositoryImpl({
    @required this.remoteDataSource,
    @required this.networkInfo,
  });

  /// Get fridge ingredients from data source.
  ///
  /// This function only gets data from remote data source and doesn't do
  /// cache storing/retrieval from local data source.
  @override
  Future<Either<Failure, List<FridgeIngredient>>> getFridgeIngredients() async {
    if (await networkInfo.isConnected) {
      try {
        final fridgeIngredients = await remoteDataSource.getFridgeIngredients();
        return Right(fridgeIngredients);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  /// Get recipes from data source.
  ///
  /// This function only gets data from remote data source and doesn't do
  /// cache storing/retrieval from local data source.
  Future<Either<Failure, List<Recipe>>> getRecipes(List<String> ingredients) async {
    if (await networkInfo.isConnected) {
      try {
        final recipes = await remoteDataSource.getRecipes(ingredients);
        return Right(recipes);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(NetworkFailure());
    }
  }
}
