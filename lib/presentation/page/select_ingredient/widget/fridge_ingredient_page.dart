import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:lunch_recipe/presentation/core/widget/empty_data_widget.dart';
import 'package:lunch_recipe/presentation/page/select_ingredient/model/fridge_ingredient_ui.dart';

import 'fridge_ingredient_list_view.dart';
import 'get_recipes_button.dart';

class FridgeIngredientPage extends StatelessWidget {
  final ObservableList<FridgeIngredientUI> usableIngredients;

  FridgeIngredientPage(this.usableIngredients);

  @override
  Widget build(BuildContext context) {
    if (usableIngredients.length > 0) {
      return Column(
        children: <Widget>[
          FridgeIngredientListView(usableIngredients),
          GetRecipesButton(usableIngredients),
        ],
      );
    } else {
      return EmptyDataWidget("Oops! No ingredient available");
    }
  }
}
