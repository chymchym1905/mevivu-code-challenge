import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal_thumb.freezed.dart';
part 'meal_thumb.g.dart';

@freezed
abstract class MealThumb with _$MealThumb {
  const factory MealThumb({
    String? strMeal,
    String? strMealThumb,
    String? idMeal,
  }) = _MealThumb;

  factory MealThumb.fromJson(Map<String, Object?> json) =>
      _$MealThumbFromJson(json);
}
