import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:lunch_recipe/application/lunch_recipe/get_sorted_recipes_use_case.dart';
import 'package:lunch_recipe/application/lunch_recipe/get_sorted_usable_fridge_ingredients_use_case.dart';
import 'package:lunch_recipe/domain/lunch_recipe/model/recipe.dart';
import 'package:lunch_recipe/presentation/core/resource.dart';
import 'package:lunch_recipe/presentation/page/select_ingredient/model/fridge_ingredient_ui.dart';

part 'lunch_recipe_store.g.dart';

@injectable
class LunchRecipeStore extends _LunchRecipeStore with _$LunchRecipeStore {
  LunchRecipeStore({
    GetSortedUsableFridgeIngredientsUseCase getSortedUsableFridgeIngredientsUseCase,
    GetSortedRecipesUseCase getSortedRecipesUseCase,
  }) : super(getSortedUsableFridgeIngredientsUseCase, getSortedRecipesUseCase);
}

abstract class _LunchRecipeStore with Store {
  final GetSortedUsableFridgeIngredientsUseCase getSortedUsableFridgeIngredientsUseCase;
  final GetSortedRecipesUseCase getSortedRecipesUseCase;

  _LunchRecipeStore(this.getSortedUsableFridgeIngredientsUseCase, this.getSortedRecipesUseCase);

  DateTime selectedDate = DateTime.now();

  @observable
  Resource<ObservableList<FridgeIngredientUI>> usableIngredients;

  @observable
  Resource<List<Recipe>> recipes;

  @action
  Future<void> getSortedUsableFridgeIngredients(DateTime useDate) async {
    usableIngredients = Resource.loading();
    final params = GetSortedUsableFridgeIngredientsParams(useDate: useDate);
    final result = await getSortedUsableFridgeIngredientsUseCase(params);
    result.fold(
      (failure) => usableIngredients = Resource.error(failure),
      (ingredients) {
        final ingredientsUI = ingredients.map((e) => FridgeIngredientUI.fromFridgeIngredient(e));
        final observableIngredientsUI = ObservableList<FridgeIngredientUI>.of(ingredientsUI);
        usableIngredients = Resource.success(observableIngredientsUI);
      },
    );
  }

  @action
  Future<void> getSortedRecipes(List<String> ingredients) async {
    recipes = Resource.loading();
    final params = GetSortedRecipesParams(ingredients: ingredients);
    final result = await getSortedRecipesUseCase(params);
    result.fold(
      (failure) => recipes = Resource.error(failure),
      (recipeList) => recipes = Resource.success(recipeList),
    );
  }
}
