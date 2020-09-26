// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'recipe.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RecipeTearOff {
  const _$RecipeTearOff();

// ignore: unused_element
  _Recipe call({@required String title, @required List<String> ingredients}) {
    return _Recipe(
      title: title,
      ingredients: ingredients,
    );
  }
}

// ignore: unused_element
const $Recipe = _$RecipeTearOff();

mixin _$Recipe {
  String get title;
  List<String> get ingredients;

  $RecipeCopyWith<Recipe> get copyWith;
}

abstract class $RecipeCopyWith<$Res> {
  factory $RecipeCopyWith(Recipe value, $Res Function(Recipe) then) =
      _$RecipeCopyWithImpl<$Res>;
  $Res call({String title, List<String> ingredients});
}

class _$RecipeCopyWithImpl<$Res> implements $RecipeCopyWith<$Res> {
  _$RecipeCopyWithImpl(this._value, this._then);

  final Recipe _value;
  // ignore: unused_field
  final $Res Function(Recipe) _then;

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

abstract class _$RecipeCopyWith<$Res> implements $RecipeCopyWith<$Res> {
  factory _$RecipeCopyWith(_Recipe value, $Res Function(_Recipe) then) =
      __$RecipeCopyWithImpl<$Res>;
  @override
  $Res call({String title, List<String> ingredients});
}

class __$RecipeCopyWithImpl<$Res> extends _$RecipeCopyWithImpl<$Res>
    implements _$RecipeCopyWith<$Res> {
  __$RecipeCopyWithImpl(_Recipe _value, $Res Function(_Recipe) _then)
      : super(_value, (v) => _then(v as _Recipe));

  @override
  _Recipe get _value => super._value as _Recipe;

  @override
  $Res call({
    Object title = freezed,
    Object ingredients = freezed,
  }) {
    return _then(_Recipe(
      title: title == freezed ? _value.title : title as String,
      ingredients: ingredients == freezed
          ? _value.ingredients
          : ingredients as List<String>,
    ));
  }
}

class _$_Recipe with DiagnosticableTreeMixin implements _Recipe {
  const _$_Recipe({@required this.title, @required this.ingredients})
      : assert(title != null),
        assert(ingredients != null);

  @override
  final String title;
  @override
  final List<String> ingredients;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Recipe(title: $title, ingredients: $ingredients)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Recipe'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('ingredients', ingredients));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Recipe &&
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
  _$RecipeCopyWith<_Recipe> get copyWith =>
      __$RecipeCopyWithImpl<_Recipe>(this, _$identity);
}

abstract class _Recipe implements Recipe {
  const factory _Recipe(
      {@required String title, @required List<String> ingredients}) = _$_Recipe;

  @override
  String get title;
  @override
  List<String> get ingredients;
  @override
  _$RecipeCopyWith<_Recipe> get copyWith;
}
