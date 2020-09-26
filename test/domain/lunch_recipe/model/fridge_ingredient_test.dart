import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';
import 'package:lunch_recipe/domain/lunch_recipe/model/fridge_ingredient.dart';

void main() {
  group('FridgeIngredient', () {
    final tFridgeIngredient = FridgeIngredient(
      title: 'Eggs',
      useBy: DateFormat('yyyy-MM-dd').parse('2019-11-25'),
    );

    test('should have a `title` field', () {
      expect(
          tFridgeIngredient,
          isA<FridgeIngredient>()
              .having((e) => e.title, 'title', isA<String>()));
    });

    test('should have a `useBy` field', () {
      expect(
          tFridgeIngredient,
          isA<FridgeIngredient>()
              .having((e) => e.useBy, 'useBy', isA<DateTime>()));
    });

    test('should return true if it is usable before expiry date', () {
      final tUseDate = DateFormat('yyyy-MM-dd').parse('2019-11-24');

      final result = tFridgeIngredient.isUsableOnDate(tUseDate);

      expect(result, true);
    });

    test('should return true if it is usable on expiry date', () {
      final tUseDate = DateFormat('yyyy-MM-dd').parse('2019-11-25');

      final result = tFridgeIngredient.isUsableOnDate(tUseDate);

      expect(result, true);
    });

    test('should return false if it is usable after expiry date', () {
      final tUseDate = DateFormat('yyyy-MM-dd').parse('2019-11-26');

      final result = tFridgeIngredient.isUsableOnDate(tUseDate);

      expect(result, false);
    });
  });
}
