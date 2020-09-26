import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:lunch_recipe/domain/lunch_recipe/model/recipe.dart';

part 'recipe_dto.freezed.dart';
part 'recipe_dto.g.dart';

@freezed
abstract class RecipeDto implements _$RecipeDto {
  const RecipeDto._();

  const factory RecipeDto({
    @required String title,
    @required List<String> ingredients,
  }) = _RecipeDto;

  factory RecipeDto.fromJson(Map<String, dynamic> json) => _$RecipeDtoFromJson(json);

  Recipe toRecipe() {
    return Recipe(
      title: title,
      ingredients: ingredients,
    );
  }
}
