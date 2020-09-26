// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'get_sorted_recipes_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$GetSortedRecipesParamsTearOff {
  const _$GetSortedRecipesParamsTearOff();

// ignore: unused_element
  _GetSortedRecipesParams call({List<String> ingredients}) {
    return _GetSortedRecipesParams(
      ingredients: ingredients,
    );
  }
}

// ignore: unused_element
const $GetSortedRecipesParams = _$GetSortedRecipesParamsTearOff();

mixin _$GetSortedRecipesParams {
  List<String> get ingredients;

  $GetSortedRecipesParamsCopyWith<GetSortedRecipesParams> get copyWith;
}

abstract class $GetSortedRecipesParamsCopyWith<$Res> {
  factory $GetSortedRecipesParamsCopyWith(GetSortedRecipesParams value,
          $Res Function(GetSortedRecipesParams) then) =
      _$GetSortedRecipesParamsCopyWithImpl<$Res>;
  $Res call({List<String> ingredients});
}

class _$GetSortedRecipesParamsCopyWithImpl<$Res>
    implements $GetSortedRecipesParamsCopyWith<$Res> {
  _$GetSortedRecipesParamsCopyWithImpl(this._value, this._then);

  final GetSortedRecipesParams _value;
  // ignore: unused_field
  final $Res Function(GetSortedRecipesParams) _then;

  @override
  $Res call({
    Object ingredients = freezed,
  }) {
    return _then(_value.copyWith(
      ingredients: ingredients == freezed
          ? _value.ingredients
          : ingredients as List<String>,
    ));
  }
}

abstract class _$GetSortedRecipesParamsCopyWith<$Res>
    implements $GetSortedRecipesParamsCopyWith<$Res> {
  factory _$GetSortedRecipesParamsCopyWith(_GetSortedRecipesParams value,
          $Res Function(_GetSortedRecipesParams) then) =
      __$GetSortedRecipesParamsCopyWithImpl<$Res>;
  @override
  $Res call({List<String> ingredients});
}

class __$GetSortedRecipesParamsCopyWithImpl<$Res>
    extends _$GetSortedRecipesParamsCopyWithImpl<$Res>
    implements _$GetSortedRecipesParamsCopyWith<$Res> {
  __$GetSortedRecipesParamsCopyWithImpl(_GetSortedRecipesParams _value,
      $Res Function(_GetSortedRecipesParams) _then)
      : super(_value, (v) => _then(v as _GetSortedRecipesParams));

  @override
  _GetSortedRecipesParams get _value => super._value as _GetSortedRecipesParams;

  @override
  $Res call({
    Object ingredients = freezed,
  }) {
    return _then(_GetSortedRecipesParams(
      ingredients: ingredients == freezed
          ? _value.ingredients
          : ingredients as List<String>,
    ));
  }
}

class _$_GetSortedRecipesParams implements _GetSortedRecipesParams {
  const _$_GetSortedRecipesParams({this.ingredients});

  @override
  final List<String> ingredients;

  @override
  String toString() {
    return 'GetSortedRecipesParams(ingredients: $ingredients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetSortedRecipesParams &&
            (identical(other.ingredients, ingredients) ||
                const DeepCollectionEquality()
                    .equals(other.ingredients, ingredients)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(ingredients);

  @override
  _$GetSortedRecipesParamsCopyWith<_GetSortedRecipesParams> get copyWith =>
      __$GetSortedRecipesParamsCopyWithImpl<_GetSortedRecipesParams>(
          this, _$identity);
}

abstract class _GetSortedRecipesParams implements GetSortedRecipesParams {
  const factory _GetSortedRecipesParams({List<String> ingredients}) =
      _$_GetSortedRecipesParams;

  @override
  List<String> get ingredients;
  @override
  _$GetSortedRecipesParamsCopyWith<_GetSortedRecipesParams> get copyWith;
}
