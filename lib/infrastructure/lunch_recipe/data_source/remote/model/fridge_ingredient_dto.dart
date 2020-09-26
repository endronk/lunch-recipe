import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';
import 'package:lunch_recipe/domain/lunch_recipe/model/fridge_ingredient.dart';

part 'fridge_ingredient_dto.freezed.dart';
part 'fridge_ingredient_dto.g.dart';

@freezed
abstract class FridgeIngredientDto implements _$FridgeIngredientDto {
  const FridgeIngredientDto._();

  const factory FridgeIngredientDto({
    @required String title,
    @required @JsonKey(name: 'use-by') String useBy,
  }) = _FridgeIngredientDto;

  factory FridgeIngredientDto.fromJson(Map<String, dynamic> json) => _$FridgeIngredientDtoFromJson(json);

  FridgeIngredient toFridgeIngredient() {
    return FridgeIngredient(
      title: title,
      useBy: DateFormat("yyyy-MM-dd").parse(useBy),
    );
  }
}
