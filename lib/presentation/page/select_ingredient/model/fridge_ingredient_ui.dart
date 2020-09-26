import 'package:mobx/mobx.dart';
import 'package:lunch_recipe/domain/lunch_recipe/model/fridge_ingredient.dart';

part 'fridge_ingredient_ui.g.dart';

class FridgeIngredientUI extends _FridgeIngredientUI with _$FridgeIngredientUI {
  FridgeIngredientUI({String title, bool isSelected}) : super(title, isSelected);

  factory FridgeIngredientUI.fromFridgeIngredient(FridgeIngredient fridgeIngredient) {
    return FridgeIngredientUI(title: fridgeIngredient.title, isSelected: false);
  }
}

abstract class _FridgeIngredientUI with Store {
  _FridgeIngredientUI(this.title, this.isSelected);

  String title = '';

  @observable
  bool isSelected = false;
}
