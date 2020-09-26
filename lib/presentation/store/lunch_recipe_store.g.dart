// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lunch_recipe_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LunchRecipeStore on _LunchRecipeStore, Store {
  final _$usableIngredientsAtom =
      Atom(name: '_LunchRecipeStore.usableIngredients');

  @override
  Resource<ObservableList<FridgeIngredientUI>> get usableIngredients {
    _$usableIngredientsAtom.reportRead();
    return super.usableIngredients;
  }

  @override
  set usableIngredients(Resource<ObservableList<FridgeIngredientUI>> value) {
    _$usableIngredientsAtom.reportWrite(value, super.usableIngredients, () {
      super.usableIngredients = value;
    });
  }

  final _$recipesAtom = Atom(name: '_LunchRecipeStore.recipes');

  @override
  Resource<List<Recipe>> get recipes {
    _$recipesAtom.reportRead();
    return super.recipes;
  }

  @override
  set recipes(Resource<List<Recipe>> value) {
    _$recipesAtom.reportWrite(value, super.recipes, () {
      super.recipes = value;
    });
  }

  final _$getSortedUsableFridgeIngredientsAsyncAction =
      AsyncAction('_LunchRecipeStore.getSortedUsableFridgeIngredients');

  @override
  Future<void> getSortedUsableFridgeIngredients(DateTime useDate) {
    return _$getSortedUsableFridgeIngredientsAsyncAction
        .run(() => super.getSortedUsableFridgeIngredients(useDate));
  }

  final _$getSortedRecipesAsyncAction =
      AsyncAction('_LunchRecipeStore.getSortedRecipes');

  @override
  Future<void> getSortedRecipes(List<String> ingredients) {
    return _$getSortedRecipesAsyncAction
        .run(() => super.getSortedRecipes(ingredients));
  }

  @override
  String toString() {
    return '''
usableIngredients: ${usableIngredients},
recipes: ${recipes}
    ''';
  }
}
