// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'fridge_ingredient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FridgeIngredientTearOff {
  const _$FridgeIngredientTearOff();

// ignore: unused_element
  _FridgeIngredient call({@required String title, @required DateTime useBy}) {
    return _FridgeIngredient(
      title: title,
      useBy: useBy,
    );
  }
}

// ignore: unused_element
const $FridgeIngredient = _$FridgeIngredientTearOff();

mixin _$FridgeIngredient {
  String get title;
  DateTime get useBy;

  $FridgeIngredientCopyWith<FridgeIngredient> get copyWith;
}

abstract class $FridgeIngredientCopyWith<$Res> {
  factory $FridgeIngredientCopyWith(
          FridgeIngredient value, $Res Function(FridgeIngredient) then) =
      _$FridgeIngredientCopyWithImpl<$Res>;
  $Res call({String title, DateTime useBy});
}

class _$FridgeIngredientCopyWithImpl<$Res>
    implements $FridgeIngredientCopyWith<$Res> {
  _$FridgeIngredientCopyWithImpl(this._value, this._then);

  final FridgeIngredient _value;
  // ignore: unused_field
  final $Res Function(FridgeIngredient) _then;

  @override
  $Res call({
    Object title = freezed,
    Object useBy = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      useBy: useBy == freezed ? _value.useBy : useBy as DateTime,
    ));
  }
}

abstract class _$FridgeIngredientCopyWith<$Res>
    implements $FridgeIngredientCopyWith<$Res> {
  factory _$FridgeIngredientCopyWith(
          _FridgeIngredient value, $Res Function(_FridgeIngredient) then) =
      __$FridgeIngredientCopyWithImpl<$Res>;
  @override
  $Res call({String title, DateTime useBy});
}

class __$FridgeIngredientCopyWithImpl<$Res>
    extends _$FridgeIngredientCopyWithImpl<$Res>
    implements _$FridgeIngredientCopyWith<$Res> {
  __$FridgeIngredientCopyWithImpl(
      _FridgeIngredient _value, $Res Function(_FridgeIngredient) _then)
      : super(_value, (v) => _then(v as _FridgeIngredient));

  @override
  _FridgeIngredient get _value => super._value as _FridgeIngredient;

  @override
  $Res call({
    Object title = freezed,
    Object useBy = freezed,
  }) {
    return _then(_FridgeIngredient(
      title: title == freezed ? _value.title : title as String,
      useBy: useBy == freezed ? _value.useBy : useBy as DateTime,
    ));
  }
}

class _$_FridgeIngredient extends _FridgeIngredient
    with DiagnosticableTreeMixin {
  const _$_FridgeIngredient({@required this.title, @required this.useBy})
      : assert(title != null),
        assert(useBy != null),
        super._();

  @override
  final String title;
  @override
  final DateTime useBy;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FridgeIngredient(title: $title, useBy: $useBy)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FridgeIngredient'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('useBy', useBy));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FridgeIngredient &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.useBy, useBy) ||
                const DeepCollectionEquality().equals(other.useBy, useBy)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(useBy);

  @override
  _$FridgeIngredientCopyWith<_FridgeIngredient> get copyWith =>
      __$FridgeIngredientCopyWithImpl<_FridgeIngredient>(this, _$identity);
}

abstract class _FridgeIngredient extends FridgeIngredient {
  const _FridgeIngredient._() : super._();
  const factory _FridgeIngredient(
      {@required String title, @required DateTime useBy}) = _$_FridgeIngredient;

  @override
  String get title;
  @override
  DateTime get useBy;
  @override
  _$FridgeIngredientCopyWith<_FridgeIngredient> get copyWith;
}
