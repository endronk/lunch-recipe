// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:lunch_recipe/infrastructure/lunch_recipe/data_source/remote/lunch_recipe_service.dart';
import 'package:lunch_recipe/infrastructure/core/network_info.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:lunch_recipe/infrastructure/lunch_recipe/data_source/remote/lunch_recipe_remote_data_source.dart';
import 'package:lunch_recipe/infrastructure/lunch_recipe/repository/lunch_recipe_repository_impl.dart';
import 'package:lunch_recipe/domain/lunch_recipe/repository/lunch_recipe_repository.dart';
import 'package:lunch_recipe/application/lunch_recipe/get_sorted_recipes_use_case.dart';
import 'package:lunch_recipe/application/lunch_recipe/get_sorted_usable_fridge_ingredients_use_case.dart';
import 'package:lunch_recipe/presentation/store/lunch_recipe_store.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerFactory<LunchRecipeService>(() => LunchRecipeService.create());
  g.registerFactory<NetworkInfo>(
      () => NetworkInfoImpl(g<DataConnectionChecker>()));
  g.registerFactory<LunchRecipeRemoteDataSource>(
      () => LunchRecipeRemoteDataSourceImpl(g<LunchRecipeService>()));
  g.registerFactory<LunchRecipeRepository>(() => LunchRecipeRepositoryImpl(
      remoteDataSource: g<LunchRecipeRemoteDataSource>(),
      networkInfo: g<NetworkInfo>()));
  g.registerFactory<GetSortedRecipesUseCase>(
      () => GetSortedRecipesUseCase(g<LunchRecipeRepository>()));
  g.registerFactory<GetSortedUsableFridgeIngredientsUseCase>(() =>
      GetSortedUsableFridgeIngredientsUseCase(g<LunchRecipeRepository>()));
  g.registerFactory<LunchRecipeStore>(() => LunchRecipeStore(
      getSortedUsableFridgeIngredientsUseCase:
          g<GetSortedUsableFridgeIngredientsUseCase>(),
      getSortedRecipesUseCase: g<GetSortedRecipesUseCase>()));
}
