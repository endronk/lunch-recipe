import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:lunch_recipe/presentation/page/select_ingredient/model/fridge_ingredient_ui.dart';

class FridgeIngredientListView extends StatelessWidget {
  final ObservableList<FridgeIngredientUI> usableIngredients;

  FridgeIngredientListView(this.usableIngredients);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: usableIngredients.length,
        itemBuilder: (_, index) {
          final ingredient = usableIngredients[index];
          return Observer(
            builder: (_) => CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              value: ingredient.isSelected,
              onChanged: (flag) {
                ingredient.isSelected = flag;
              },
              title: Text(
                ingredient.title,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          );
        },
      ),
    );
  }
}
