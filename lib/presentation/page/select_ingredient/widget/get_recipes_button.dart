import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:lunch_recipe/presentation/page/recipe/recipe_page.dart';
import 'package:lunch_recipe/presentation/page/select_ingredient/model/fridge_ingredient_ui.dart';

class GetRecipesButton extends StatelessWidget {
  final ObservableList<FridgeIngredientUI> usableIngredients;

  GetRecipesButton(this.usableIngredients);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        height: 45,
        child: Text('Get recipes'),
        textColor: Colors.white,
        color: Colors.deepOrange,
        onPressed: () => onGetRecipesButtonPressed(context),
      ),
    );
  }

  void onGetRecipesButtonPressed(BuildContext context) {
    final anyIngredientSelected = usableIngredients.any((e) => e.isSelected);
    if (anyIngredientSelected) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => RecipePage(),
        ),
      );
    }
  }
}
