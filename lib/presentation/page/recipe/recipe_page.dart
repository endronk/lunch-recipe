import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:lunch_recipe/presentation/core/resource.dart';
import 'package:lunch_recipe/presentation/core/widget/error_snackbar.dart';
import 'package:lunch_recipe/presentation/core/widget/loading_widget.dart';
import 'package:lunch_recipe/presentation/page/recipe/widget/recipe_list_page.dart';
import 'package:lunch_recipe/presentation/page/select_ingredient/model/fridge_ingredient_ui.dart';
import 'package:lunch_recipe/presentation/store/lunch_recipe_store.dart';

class RecipePage extends StatefulWidget {
  @override
  _RecipePageState createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  LunchRecipeStore store;

  @override
  void initState() {
    super.initState();
    store = Provider.of<LunchRecipeStore>(context, listen: false);
    final ObservableList<FridgeIngredientUI> usableIngredients = (store.usableIngredients as Success).data;
    final selectedIngredients = usableIngredients
        .where((e) => e.isSelected)
        .map((e) => e.title)
        .toList();
    store.getSortedRecipes(selectedIngredients);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Recipes'),
      ),
      body: Observer(
        builder: (_) {
          return store.recipes.when(
            loading: () => LoadingWidget(),
            success: (recipes) => RecipeListPage(recipes),
            error: (failure) => ErrorSnackbar(failure),
          );
        },
      ),
    );
  }
}
