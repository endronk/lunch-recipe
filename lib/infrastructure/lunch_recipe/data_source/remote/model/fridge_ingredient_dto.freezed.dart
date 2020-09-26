// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'fridge_ingredient_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FridgeIngredientDto _$FridgeIngredientDtoFromJson(Map<String, dynamic> json) {
  return _FridgeIngredientDto.fromJson(json);
}

class _$FridgeIngredientDtoTearOff {
  const _$FridgeIngredientDtoTearOff();

// ignore: unused_element
  _FridgeIngredientDto call(
      {@required String title,
      @required @JsonKey(name: 'use-by') String useBy}) {
    return _FridgeIngredientDto(
      title: title,
      useBy: useBy,
    );
  }
}

// ignore: unused_element
const $FridgeIngredientDto = _$FridgeIngredientDtoTearOff();

mixin _$FridgeIngredientDto {
  String get title;
  @JsonKey(name: 'use-by')
  String get useBy;

  Map<String, dynamic> toJson();
  $FridgeIngredientDtoCopyWith<FridgeIngredientDto> get copyWith;
}

abstract class $FridgeIngredientDtoCopyWith<$Res> {
  factory $FridgeIngredientDtoCopyWith(
          FridgeIngredientDto value, $Res Function(FridgeIngredientDto) then) =
      _$FridgeIngredientDtoCopyWithImpl<$Res>;
  $Res call({String title, @JsonKey(name: 'use-by') String useBy});
}

class _$FridgeIngredientDtoCopyWithImpl<$Res>
    implements $FridgeIngredientDtoCopyWith<$Res> {
  _$FridgeIngredientDtoCopyWithImpl(this._value, this._then);

  final FridgeIngredientDto _value;
  // ignore: unused_field
  final $Res Function(FridgeIngredientDto) _then;

  @override
  $Res call({
    Object title = freezed,
    Object useBy = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      useBy: useBy == freezed ? _value.useBy : useBy as String,
    ));
  }
}

abstract class _$FridgeIngredientDtoCopyWith<$Res>
    implements $FridgeIngredientDtoCopyWith<$Res> {
  factory _$FridgeIngredientDtoCopyWith(_FridgeIngredientDto value,
          $Res Function(_FridgeIngredientDto) then) =
      __$FridgeIngredientDtoCopyWithImpl<$Res>;
  @override
  $Res call({String title, @JsonKey(name: 'use-by') String useBy});
}

class __$FridgeIngredientDtoCopyWithImpl<$Res>
    extends _$FridgeIngredientDtoCopyWithImpl<$Res>
    implements _$FridgeIngredientDtoCopyWith<$Res> {
  __$FridgeIngredientDtoCopyWithImpl(
      _FridgeIngredientDto _value, $Res Function(_FridgeIngredientDto) _then)
      : super(_value, (v) => _then(v as _FridgeIngredientDto));

  @override
  _FridgeIngredientDto get _value => super._value as _FridgeIngredientDto;

  @override
  $Res call({
    Object title = freezed,
    Object useBy = freezed,
  }) {
    return _then(_FridgeIngredientDto(
      title: title == freezed ? _value.title : title as String,
      useBy: useBy == freezed ? _value.useBy : useBy as String,
    ));
  }
}

@JsonSerializable()
class _$_FridgeIngredientDto extends _FridgeIngredientDto {
  const _$_FridgeIngredientDto(
      {@required this.title, @required @JsonKey(name: 'use-by') this.useBy})
      : assert(title != null),
        assert(useBy != null),
        super._();

  factory _$_FridgeIngredientDto.fromJson(Map<String, dynamic> json) =>
      _$_$_FridgeIngredientDtoFromJson(json);

  @override
  final String title;
  @override
  @JsonKey(name: 'use-by')
  final String useBy;

  @override
  String toString() {
    return 'FridgeIngredientDto(title: $title, useBy: $useBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FridgeIngredientDto &&
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
  _$FridgeIngredientDtoCopyWith<_FridgeIngredientDto> get copyWith =>
      __$FridgeIngredientDtoCopyWithImpl<_FridgeIngredientDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FridgeIngredientDtoToJson(this);
  }
}

abstract class _FridgeIngredientDto extends FridgeIngredientDto {
  const _FridgeIngredientDto._() : super._();
  const factory _FridgeIngredientDto(
          {@required String title,
          @required @JsonKey(name: 'use-by') String useBy}) =
      _$_FridgeIngredientDto;

  factory _FridgeIngredientDto.fromJson(Map<String, dynamic> json) =
      _$_FridgeIngredientDto.fromJson;

  @override
  String get title;
  @override
  @JsonKey(name: 'use-by')
  String get useBy;
  @override
  _$FridgeIngredientDtoCopyWith<_FridgeIngredientDto> get copyWith;
}
