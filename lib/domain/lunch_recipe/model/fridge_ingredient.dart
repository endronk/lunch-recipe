import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fridge_ingredient.freezed.dart';

@freezed
abstract class FridgeIngredient implements _$FridgeIngredient {
  const FridgeIngredient._();

  const factory FridgeIngredient({
    @required String title,
    @required DateTime useBy,
  }) = _FridgeIngredient;

  bool isUsableOnDate(DateTime date) {
    return !date.isAfter(useBy);
  }
}
