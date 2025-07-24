import 'package:freezed_annotation/freezed_annotation.dart';
part 'ingredients.freezed.dart';
part 'ingredients.g.dart';

@freezed
abstract class Ingredients with _$Ingredients {
  const factory Ingredients({
    String? idIngredient,
    String? strIngredient,
    String? strDescription,
    String? strType,
  }) = _Ingredients;

  factory Ingredients.fromJson(Map<String, Object?> json) =>
      _$IngredientsFromJson(json);
}
