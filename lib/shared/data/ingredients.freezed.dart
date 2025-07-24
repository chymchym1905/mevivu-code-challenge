// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredients.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Ingredients _$IngredientsFromJson(Map<String, dynamic> json) {
  return _Ingredients.fromJson(json);
}

/// @nodoc
mixin _$Ingredients {
  String? get idIngredient => throw _privateConstructorUsedError;
  String? get strIngredient => throw _privateConstructorUsedError;
  String? get strDescription => throw _privateConstructorUsedError;
  String? get strType => throw _privateConstructorUsedError;

  /// Serializes this Ingredients to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Ingredients
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IngredientsCopyWith<Ingredients> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientsCopyWith<$Res> {
  factory $IngredientsCopyWith(
          Ingredients value, $Res Function(Ingredients) then) =
      _$IngredientsCopyWithImpl<$Res, Ingredients>;
  @useResult
  $Res call(
      {String? idIngredient,
      String? strIngredient,
      String? strDescription,
      String? strType});
}

/// @nodoc
class _$IngredientsCopyWithImpl<$Res, $Val extends Ingredients>
    implements $IngredientsCopyWith<$Res> {
  _$IngredientsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Ingredients
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idIngredient = freezed,
    Object? strIngredient = freezed,
    Object? strDescription = freezed,
    Object? strType = freezed,
  }) {
    return _then(_value.copyWith(
      idIngredient: freezed == idIngredient
          ? _value.idIngredient
          : idIngredient // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient: freezed == strIngredient
          ? _value.strIngredient
          : strIngredient // ignore: cast_nullable_to_non_nullable
              as String?,
      strDescription: freezed == strDescription
          ? _value.strDescription
          : strDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      strType: freezed == strType
          ? _value.strType
          : strType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IngredientsImplCopyWith<$Res>
    implements $IngredientsCopyWith<$Res> {
  factory _$$IngredientsImplCopyWith(
          _$IngredientsImpl value, $Res Function(_$IngredientsImpl) then) =
      __$$IngredientsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? idIngredient,
      String? strIngredient,
      String? strDescription,
      String? strType});
}

/// @nodoc
class __$$IngredientsImplCopyWithImpl<$Res>
    extends _$IngredientsCopyWithImpl<$Res, _$IngredientsImpl>
    implements _$$IngredientsImplCopyWith<$Res> {
  __$$IngredientsImplCopyWithImpl(
      _$IngredientsImpl _value, $Res Function(_$IngredientsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Ingredients
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idIngredient = freezed,
    Object? strIngredient = freezed,
    Object? strDescription = freezed,
    Object? strType = freezed,
  }) {
    return _then(_$IngredientsImpl(
      idIngredient: freezed == idIngredient
          ? _value.idIngredient
          : idIngredient // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient: freezed == strIngredient
          ? _value.strIngredient
          : strIngredient // ignore: cast_nullable_to_non_nullable
              as String?,
      strDescription: freezed == strDescription
          ? _value.strDescription
          : strDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      strType: freezed == strType
          ? _value.strType
          : strType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IngredientsImpl implements _Ingredients {
  const _$IngredientsImpl(
      {this.idIngredient,
      this.strIngredient,
      this.strDescription,
      this.strType});

  factory _$IngredientsImpl.fromJson(Map<String, dynamic> json) =>
      _$$IngredientsImplFromJson(json);

  @override
  final String? idIngredient;
  @override
  final String? strIngredient;
  @override
  final String? strDescription;
  @override
  final String? strType;

  @override
  String toString() {
    return 'Ingredients(idIngredient: $idIngredient, strIngredient: $strIngredient, strDescription: $strDescription, strType: $strType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientsImpl &&
            (identical(other.idIngredient, idIngredient) ||
                other.idIngredient == idIngredient) &&
            (identical(other.strIngredient, strIngredient) ||
                other.strIngredient == strIngredient) &&
            (identical(other.strDescription, strDescription) ||
                other.strDescription == strDescription) &&
            (identical(other.strType, strType) || other.strType == strType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, idIngredient, strIngredient, strDescription, strType);

  /// Create a copy of Ingredients
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IngredientsImplCopyWith<_$IngredientsImpl> get copyWith =>
      __$$IngredientsImplCopyWithImpl<_$IngredientsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IngredientsImplToJson(
      this,
    );
  }
}

abstract class _Ingredients implements Ingredients {
  const factory _Ingredients(
      {final String? idIngredient,
      final String? strIngredient,
      final String? strDescription,
      final String? strType}) = _$IngredientsImpl;

  factory _Ingredients.fromJson(Map<String, dynamic> json) =
      _$IngredientsImpl.fromJson;

  @override
  String? get idIngredient;
  @override
  String? get strIngredient;
  @override
  String? get strDescription;
  @override
  String? get strType;

  /// Create a copy of Ingredients
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IngredientsImplCopyWith<_$IngredientsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
