import 'package:fpdart/fpdart.dart';
import 'package:mevivu/core/dio/network.dart';
import '../../imports.dart';

abstract class MealApiBase {
  Future<Either<AppException, List<MealDetail>>> fetchMealByFirstLetter(
      String letter,
      {CancelToken? cancelToken});
  Future<Either<AppException, MealDetail>> fetchMealById(
      String id,
      {CancelToken? cancelToken});
  Future<Either<AppException, List<MealThumb>>> fetchMealByFilter(
      Map<String, dynamic> filter,
      {CancelToken? cancelToken});
  Future<Either<AppException, List<String>>> fetchCategories(
      {CancelToken? cancelToken});
  Future<Either<AppException, List<String>>> fetchAreas(
      {CancelToken? cancelToken});
  Future<Either<AppException, List<Ingredients>>> fetchIngredients(
      {CancelToken? cancelToken});
}

class MealApi implements MealApiBase {
  final NetworkService _networkService;

  MealApi(this._networkService);

  @override
  Future<Either<AppException, List<MealDetail>>> fetchMealByFirstLetter(
      String letter,
      {CancelToken? cancelToken}) async {
    const url = '/search.php';
    final response = await _networkService.get(url,
        queryParameters: {'f': letter}, cancelToken: cancelToken);
    return response.fold((l) => left(l), (r) {
      if (r.statusCode == 200) {
        final entries = (r.data['meals'] as List)
            .map((e) => e as Map<String, dynamic>)
            .toList();
        return right(entries.map((e) => MealDetail.fromJson(e)).toList());
      } else {
        return left(AppException(
            message: r.data.toString(), code: r.statusCode.toString()));
      }
    });
  }

  @override
  Future<Either<AppException, MealDetail>> fetchMealById(String id, {CancelToken? cancelToken}) async {
    const url = '/lookup.php';
    final response = await _networkService.get(url, queryParameters: {'i': id}, cancelToken: cancelToken);
    return response.fold((l) => left(l), (r) {
      if (r.statusCode == 200){
        final entry = (r.data['meals'] as List).map((e)=> e as Map<String, dynamic>).toList().first;
        return right(MealDetail.fromJson(entry));
      } else {
        return left(AppException(message: r.data.toString(), code: r.statusCode.toString()));
      }
    });
  }

  @override
  Future<Either<AppException, List<MealThumb>>> fetchMealByFilter(
      Map<String, dynamic> filter,
      {CancelToken? cancelToken}) async {
    const url = '/filter.php';
    final response = await _networkService.get(url,
        queryParameters: filter, cancelToken: cancelToken);
    return response.fold((l) => left(l), (r) {
      if (r.statusCode == 200) {
        final entries = (r.data['meals'] as List)
            .map((e) => e as Map<String, dynamic>)
            .toList();
        return right(entries.map((e) => MealThumb.fromJson(e)).toList());
      } else {
        return left(AppException(
            message: r.data.toString(), code: r.statusCode.toString()));
      }
    });
  }

  @override
  Future<Either<AppException, List<String>>> fetchCategories(
      {CancelToken? cancelToken}) async {
    const url = '/list.php';
    final response = await _networkService.get(url,
        queryParameters: {'c': 'list'}, cancelToken: cancelToken);
    return response.fold((l) => left(l), (r) {
      if (r.statusCode == 200) {
        final entries = (r.data['meals'] as List)
            .map((e) => e as Map<String, dynamic>)
            .toList();
        return right(entries.map((e) => e['strCategory'].toString()).toList());
      } else {
        return left(AppException(
            message: r.data.toString(), code: r.statusCode.toString()));
      }
    });
  }

  @override
  Future<Either<AppException, List<String>>> fetchAreas(
      {CancelToken? cancelToken}) async {
    const url = '/list.php';
    final response = await _networkService.get(url,
        queryParameters: {'a': 'list'}, cancelToken: cancelToken);
    return response.fold((l) => left(l), (r) {
      if (r.statusCode == 200) {
        final entries = (r.data['meals'] as List)
            .map((e) => e as Map<String, dynamic>)
            .toList();
        return right(entries.map((e) => e['strArea'].toString()).toList());
      } else {
        return left(AppException(
            message: r.data.toString(), code: r.statusCode.toString()));
      }
    });
  }

  @override
  Future<Either<AppException, List<Ingredients>>> fetchIngredients(
      {CancelToken? cancelToken}) async {
    const url = '/list.php';
    final response = await _networkService.get(url,
        queryParameters: {'i': 'list'}, cancelToken: cancelToken);
    return response.fold((l) => left(l), (r) {
      if (r.statusCode == 200) {
        final entries = (r.data['meals'] as List)
            .map((e) => e as Map<String, dynamic>)
            .toList();
        return right(entries.map((e) => Ingredients.fromJson(e)).toList());
      } else {
        return left(AppException(
            message: r.data.toString(), code: r.statusCode.toString()));
      }
    });
  }
}
