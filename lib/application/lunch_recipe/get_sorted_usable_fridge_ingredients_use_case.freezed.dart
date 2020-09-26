// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'get_sorted_usable_fridge_ingredients_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$GetSortedUsableFridgeIngredientsParamsTearOff {
  const _$GetSortedUsableFridgeIngredientsParamsTearOff();

// ignore: unused_element
  _GetSortedUsableFridgeIngredientsParams call({DateTime useDate}) {
    return _GetSortedUsableFridgeIngredientsParams(
      useDate: useDate,
    );
  }
}

// ignore: unused_element
const $GetSortedUsableFridgeIngredientsParams =
    _$GetSortedUsableFridgeIngredientsParamsTearOff();

mixin _$GetSortedUsableFridgeIngredientsParams {
  DateTime get useDate;

  $GetSortedUsableFridgeIngredientsParamsCopyWith<
      GetSortedUsableFridgeIngredientsParams> get copyWith;
}

abstract class $GetSortedUsableFridgeIngredientsParamsCopyWith<$Res> {
  factory $GetSortedUsableFridgeIngredientsParamsCopyWith(
          GetSortedUsableFridgeIngredientsParams value,
          $Res Function(GetSortedUsableFridgeIngredientsParams) then) =
      _$GetSortedUsableFridgeIngredientsParamsCopyWithImpl<$Res>;
  $Res call({DateTime useDate});
}

class _$GetSortedUsableFridgeIngredientsParamsCopyWithImpl<$Res>
    implements $GetSortedUsableFridgeIngredientsParamsCopyWith<$Res> {
  _$GetSortedUsableFridgeIngredientsParamsCopyWithImpl(this._value, this._then);

  final GetSortedUsableFridgeIngredientsParams _value;
  // ignore: unused_field
  final $Res Function(GetSortedUsableFridgeIngredientsParams) _then;

  @override
  $Res call({
    Object useDate = freezed,
  }) {
    return _then(_value.copyWith(
      useDate: useDate == freezed ? _value.useDate : useDate as DateTime,
    ));
  }
}

abstract class _$GetSortedUsableFridgeIngredientsParamsCopyWith<$Res>
    implements $GetSortedUsableFridgeIngredientsParamsCopyWith<$Res> {
  factory _$GetSortedUsableFridgeIngredientsParamsCopyWith(
          _GetSortedUsableFridgeIngredientsParams value,
          $Res Function(_GetSortedUsableFridgeIngredientsParams) then) =
      __$GetSortedUsableFridgeIngredientsParamsCopyWithImpl<$Res>;
  @override
  $Res call({DateTime useDate});
}

class __$GetSortedUsableFridgeIngredientsParamsCopyWithImpl<$Res>
    extends _$GetSortedUsableFridgeIngredientsParamsCopyWithImpl<$Res>
    implements _$GetSortedUsableFridgeIngredientsParamsCopyWith<$Res> {
  __$GetSortedUsableFridgeIngredientsParamsCopyWithImpl(
      _GetSortedUsableFridgeIngredientsParams _value,
      $Res Function(_GetSortedUsableFridgeIngredientsParams) _then)
      : super(
            _value, (v) => _then(v as _GetSortedUsableFridgeIngredientsParams));

  @override
  _GetSortedUsableFridgeIngredientsParams get _value =>
      super._value as _GetSortedUsableFridgeIngredientsParams;

  @override
  $Res call({
    Object useDate = freezed,
  }) {
    return _then(_GetSortedUsableFridgeIngredientsParams(
      useDate: useDate == freezed ? _value.useDate : useDate as DateTime,
    ));
  }
}

class _$_GetSortedUsableFridgeIngredientsParams
    implements _GetSortedUsableFridgeIngredientsParams {
  const _$_GetSortedUsableFridgeIngredientsParams({this.useDate});

  @override
  final DateTime useDate;

  @override
  String toString() {
    return 'GetSortedUsableFridgeIngredientsParams(useDate: $useDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetSortedUsableFridgeIngredientsParams &&
            (identical(other.useDate, useDate) ||
                const DeepCollectionEquality().equals(other.useDate, useDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(useDate);

  @override
  _$GetSortedUsableFridgeIngredientsParamsCopyWith<
          _GetSortedUsableFridgeIngredientsParams>
      get copyWith => __$GetSortedUsableFridgeIngredientsParamsCopyWithImpl<
          _GetSortedUsableFridgeIngredientsParams>(this, _$identity);
}

abstract class _GetSortedUsableFridgeIngredientsParams
    implements GetSortedUsableFridgeIngredientsParams {
  const factory _GetSortedUsableFridgeIngredientsParams({DateTime useDate}) =
      _$_GetSortedUsableFridgeIngredientsParams;

  @override
  DateTime get useDate;
  @override
  _$GetSortedUsableFridgeIngredientsParamsCopyWith<
      _GetSortedUsableFridgeIngredientsParams> get copyWith;
}
