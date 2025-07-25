import 'package:mevivu/imports.dart';
import 'package:mevivu/shared/api/meal.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'meal.g.dart';

@riverpod
MealApiBase mealApi(Ref ref) {
  final networkService = ref.watch(dioNetworkServiceProvider);
  return MealApi(networkService);
}

@riverpod
Future<List<MealDetail>> fetchMealByFirstLetter(Ref ref, String letter) async {
  final cancelToken = await ref.cancelToken();
  final api = ref.watch(mealApiProvider);
  final result =
      await api.fetchMealByFirstLetter(letter, cancelToken: cancelToken);
  return result.fold((l) => throw l, (r) => r);
}

@riverpod
Future<List<MealThumb>> fetchMealByFilter(
    Ref ref, Map<String, dynamic> filter) async {
  final cancelToken = await ref.cancelToken();
  final api = ref.watch(mealApiProvider);
  final result = await api.fetchMealByFilter(filter, cancelToken: cancelToken);
  return result.fold((l) => throw l, (r) => r);
}

@riverpod
Future<List<MealThumb>> fetchMealByArea(
    Ref ref, Map<String, dynamic> filter) async {
  final cancelToken = await ref.cancelToken();
  final api = ref.watch(mealApiProvider);
  final result = await api.fetchMealByFilter(filter, cancelToken: cancelToken);
  return result.fold((l) => throw l, (r) => r);
}

@riverpod
Future<List<MealThumb>> fetchMealByCategory(
    Ref ref, Map<String, dynamic> filter) async {
  final cancelToken = await ref.cancelToken();
  final api = ref.watch(mealApiProvider);
  final result = await api.fetchMealByFilter(filter, cancelToken: cancelToken);
  return result.fold((l) => throw l, (r) => r);
}

@riverpod
Future<List<String>> fetchCategories(Ref ref) async {
  final cancelToken = await ref.cancelToken();
  final api = ref.watch(mealApiProvider);
  final result = await api.fetchCategories(cancelToken: cancelToken);
  return result.fold((l) => throw l, (r) => r);
}

@riverpod
Future<List<String>> fetchAreas(Ref ref) async {
  final cancelToken = await ref.cancelToken();
  final api = ref.watch(mealApiProvider);
  final result = await api.fetchAreas(cancelToken: cancelToken);
  return result.fold((l) => throw l, (r) => r);
}

@riverpod
Future<List<Ingredients>> fetchIngredients(Ref ref) async {
  final cancelToken = await ref.cancelToken();
  final api = ref.watch(mealApiProvider);
  final result = await api.fetchIngredients(cancelToken: cancelToken);
  return result.fold((l) => throw l, (r) => r);
}
