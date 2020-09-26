// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'recipe_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RecipeDto _$RecipeDtoFromJson(Map<String, dynamic> json) {
  return _RecipeDto.fromJson(json);
}

class _$RecipeDtoTearOff {
  const _$RecipeDtoTearOff();

// ignore: unused_element
  _RecipeDto call(
      {@required String title, @required List<String> ingredients}) {
    return _RecipeDto(
      title: title,
      ingredients: ingredients,
    );
  }
}

// ignore: unused_element
const $RecipeDto = _$RecipeDtoTearOff();

mixin _$RecipeDto {
  String get title;
  List<String> get ingredients;

  Map<String, dynamic> toJson();
  $RecipeDtoCopyWith<RecipeDto> get copyWith;
}

abstract class $RecipeDtoCopyWith<$Res> {
  factory $RecipeDtoCopyWith(RecipeDto value, $Res Function(RecipeDto) then) =
      _$RecipeDtoCopyWithImpl<$Res>;
  $Res call({String title, List<String> ingredients});
}

class _$RecipeDtoCopyWithImpl<$Res> implements $RecipeDtoCopyWith<$Res> {
  _$RecipeDtoCopyWithImpl(this._value, this._then);

  final RecipeDto _value;
  // ignore: unused_field
  final $Res Function(RecipeDto) _then;

  @override
  $Res call({
    Object title = freezed,
    Object ingredients = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      ingredients: ingredients == freezed
          ? _value.ingredients
          : ingredients as List<String>,
    ));
  }
}

abstract class _$RecipeDtoCopyWith<$Res> implements $RecipeDtoCopyWith<$Res> {
  factory _$RecipeDtoCopyWith(
          _RecipeDto value, $Res Function(_RecipeDto) then) =
      __$RecipeDtoCopyWithImpl<$Res>;
  @override
  $Res call({String title, List<String> ingredients});
}

class __$RecipeDtoCopyWithImpl<$Res> extends _$RecipeDtoCopyWithImpl<$Res>
    implements _$RecipeDtoCopyWith<$Res> {
  __$RecipeDtoCopyWithImpl(_RecipeDto _value, $Res Function(_RecipeDto) _then)
      : super(_value, (v) => _then(v as _RecipeDto));

  @override
  _RecipeDto get _value => super._value as _RecipeDto;

  @override
  $Res call({
    Object title = freezed,
    Object ingredients = freezed,
  }) {
    return _then(_RecipeDto(
      title: title == freezed ? _value.title : title as String,
      ingredients: ingredients == freezed
          ? _value.ingredients
          : ingredients as List<String>,
    ));
  }
}

@JsonSerializable()
class _$_RecipeDto extends _RecipeDto {
  const _$_RecipeDto({@required this.title, @required this.ingredients})
      : assert(title != null),
        assert(ingredients != null),
        super._();

  factory _$_RecipeDto.fromJson(Map<String, dynamic> json) =>
      _$_$_RecipeDtoFromJson(json);

  @override
  final String title;
  @override
  final List<String> ingredients;

  @override
  String toString() {
    return 'RecipeDto(title: $title, ingredients: $ingredients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RecipeDto &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.ingredients, ingredients) ||
                const DeepCollectionEquality()
                    .equals(other.ingredients, ingredients)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(ingredients);

  @override
  _$RecipeDtoCopyWith<_RecipeDto> get copyWith =>
      __$RecipeDtoCopyWithImpl<_RecipeDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RecipeDtoToJson(this);
  }
}

abstract class _RecipeDto extends RecipeDto {
  const _RecipeDto._() : super._();
  const factory _RecipeDto(
      {@required String title,
      @required List<String> ingredients}) = _$_RecipeDto;

  factory _RecipeDto.fromJson(Map<String, dynamic> json) =
      _$_RecipeDto.fromJson;

  @override
  String get title;
  @override
  List<String> get ingredients;
  @override
  _$RecipeDtoCopyWith<_RecipeDto> get copyWith;
}
