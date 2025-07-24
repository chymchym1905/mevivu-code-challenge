// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal_thumb.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MealThumb _$MealThumbFromJson(Map<String, dynamic> json) {
  return _MealThumb.fromJson(json);
}

/// @nodoc
mixin _$MealThumb {
  String? get strMeal => throw _privateConstructorUsedError;
  String? get strMealThumb => throw _privateConstructorUsedError;
  String? get idMeal => throw _privateConstructorUsedError;

  /// Serializes this MealThumb to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MealThumb
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MealThumbCopyWith<MealThumb> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealThumbCopyWith<$Res> {
  factory $MealThumbCopyWith(MealThumb value, $Res Function(MealThumb) then) =
      _$MealThumbCopyWithImpl<$Res, MealThumb>;
  @useResult
  $Res call({String? strMeal, String? strMealThumb, String? idMeal});
}

/// @nodoc
class _$MealThumbCopyWithImpl<$Res, $Val extends MealThumb>
    implements $MealThumbCopyWith<$Res> {
  _$MealThumbCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MealThumb
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? strMeal = freezed,
    Object? strMealThumb = freezed,
    Object? idMeal = freezed,
  }) {
    return _then(_value.copyWith(
      strMeal: freezed == strMeal
          ? _value.strMeal
          : strMeal // ignore: cast_nullable_to_non_nullable
              as String?,
      strMealThumb: freezed == strMealThumb
          ? _value.strMealThumb
          : strMealThumb // ignore: cast_nullable_to_non_nullable
              as String?,
      idMeal: freezed == idMeal
          ? _value.idMeal
          : idMeal // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MealThumbImplCopyWith<$Res>
    implements $MealThumbCopyWith<$Res> {
  factory _$$MealThumbImplCopyWith(
          _$MealThumbImpl value, $Res Function(_$MealThumbImpl) then) =
      __$$MealThumbImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? strMeal, String? strMealThumb, String? idMeal});
}

/// @nodoc
class __$$MealThumbImplCopyWithImpl<$Res>
    extends _$MealThumbCopyWithImpl<$Res, _$MealThumbImpl>
    implements _$$MealThumbImplCopyWith<$Res> {
  __$$MealThumbImplCopyWithImpl(
      _$MealThumbImpl _value, $Res Function(_$MealThumbImpl) _then)
      : super(_value, _then);

  /// Create a copy of MealThumb
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? strMeal = freezed,
    Object? strMealThumb = freezed,
    Object? idMeal = freezed,
  }) {
    return _then(_$MealThumbImpl(
      strMeal: freezed == strMeal
          ? _value.strMeal
          : strMeal // ignore: cast_nullable_to_non_nullable
              as String?,
      strMealThumb: freezed == strMealThumb
          ? _value.strMealThumb
          : strMealThumb // ignore: cast_nullable_to_non_nullable
              as String?,
      idMeal: freezed == idMeal
          ? _value.idMeal
          : idMeal // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MealThumbImpl implements _MealThumb {
  const _$MealThumbImpl({this.strMeal, this.strMealThumb, this.idMeal});

  factory _$MealThumbImpl.fromJson(Map<String, dynamic> json) =>
      _$$MealThumbImplFromJson(json);

  @override
  final String? strMeal;
  @override
  final String? strMealThumb;
  @override
  final String? idMeal;

  @override
  String toString() {
    return 'MealThumb(strMeal: $strMeal, strMealThumb: $strMealThumb, idMeal: $idMeal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealThumbImpl &&
            (identical(other.strMeal, strMeal) || other.strMeal == strMeal) &&
            (identical(other.strMealThumb, strMealThumb) ||
                other.strMealThumb == strMealThumb) &&
            (identical(other.idMeal, idMeal) || other.idMeal == idMeal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, strMeal, strMealThumb, idMeal);

  /// Create a copy of MealThumb
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MealThumbImplCopyWith<_$MealThumbImpl> get copyWith =>
      __$$MealThumbImplCopyWithImpl<_$MealThumbImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MealThumbImplToJson(
      this,
    );
  }
}

abstract class _MealThumb implements MealThumb {
  const factory _MealThumb(
      {final String? strMeal,
      final String? strMealThumb,
      final String? idMeal}) = _$MealThumbImpl;

  factory _MealThumb.fromJson(Map<String, dynamic> json) =
      _$MealThumbImpl.fromJson;

  @override
  String? get strMeal;
  @override
  String? get strMealThumb;
  @override
  String? get idMeal;

  /// Create a copy of MealThumb
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MealThumbImplCopyWith<_$MealThumbImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
