// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecipeDto _$_$_RecipeDtoFromJson(Map<String, dynamic> json) {
  return _$_RecipeDto(
    title: json['title'] as String,
    ingredients:
        (json['ingredients'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_RecipeDtoToJson(_$_RecipeDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'ingredients': instance.ingredients,
    };
