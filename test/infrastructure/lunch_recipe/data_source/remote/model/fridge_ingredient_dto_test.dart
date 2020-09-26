import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';
import 'package:lunch_recipe/domain/lunch_recipe/model/fridge_ingredient.dart';
import 'package:lunch_recipe/infrastructure/lunch_recipe/data_source/remote/model/fridge_ingredient_dto.dart';

import '../../fixture/fixture_reader.dart';

void main() {
  group('FridgeIngredientDto', () {
    test('should return a valid model from JSON', () {
      final tFridgeIngredientDto = FridgeIngredientDto(
        title: 'Eggs',
        useBy: '2019-11-25',
      );
      final jsonMap = json.decode(fixture('ingredient.json'));

      final result = FridgeIngredientDto.fromJson(jsonMap);

      expect(result, tFridgeIngredientDto);
    });

    test('should be able to be converted to FridgeIngredient domain model', () {
      final tFridgeIngredient = FridgeIngredient(
        title: 'Eggs',
        useBy: DateFormat('yyyy-MM-dd').parse('2019-11-25'),
      );
      final fridgeIngredientDto = FridgeIngredientDto(
        title: 'Eggs',
        useBy: '2019-11-25',
      );

      final result = fridgeIngredientDto.toFridgeIngredient();

      expect(result, tFridgeIngredient);
    });
  });
}
