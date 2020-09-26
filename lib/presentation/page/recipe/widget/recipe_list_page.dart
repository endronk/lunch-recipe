import 'package:flutter/material.dart';
import 'package:lunch_recipe/domain/lunch_recipe/model/recipe.dart';
import 'package:lunch_recipe/presentation/core/widget/empty_data_widget.dart';
import 'package:lunch_recipe/presentation/page/recipe/widget/recipe_list_view.dart';

class RecipeListPage extends StatelessWidget {
  final List<Recipe> recipes;

  RecipeListPage(this.recipes);

  @override
  Widget build(BuildContext context) {
    if (recipes.length > 0) {
      return RecipeListView(recipes);
    } else {
      return EmptyDataWidget("Oops! No recipes available");
    }
  }
}
