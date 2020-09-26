import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';
import 'package:lunch_recipe/domain/lunch_recipe/model/fridge_ingredient.dart';
import 'package:lunch_recipe/presentation/page/select_ingredient/model/fridge_ingredient_ui.dart';

void main() {
  group('FridgeIngredientUI', () {
    final tFridgeIngredient = FridgeIngredient(
      title: 'Eggs',
      useBy: DateFormat('yyyy-MM-dd').parse('2019-11-25'),
    );
    final tFridgeIngredientUI = FridgeIngredientUI(
      title: 'Eggs',
      isSelected: false,
    );

    test('should return a valid model from FridgeIngredient domain model', () {
      final result = FridgeIngredientUI.fromFridgeIngredient(tFridgeIngredient);

      expect(result.title, tFridgeIngredientUI.title);
      expect(result.isSelected, tFridgeIngredientUI.isSelected);
    });

    test('should have `isSelected` field set to `false` by default', () {
      final result = FridgeIngredientUI.fromFridgeIngredient(tFridgeIngredient);

      expect(result.isSelected, false);
    });
  });
}
