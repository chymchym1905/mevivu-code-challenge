import '../../imports.dart';

extension CancelTokenExtension on Ref {
  Future<CancelToken> cancelToken({Duration? duration}) async {
    var didDispose = false;
    onDispose(() => didDispose = true);
    await Future<void>.delayed(duration ?? const Duration(milliseconds: 500));
    if (didDispose) {
      throw AppException(message: 'Request debounced by user', code: '499');
    }
    final cancelToken = CancelToken();
    onDispose(cancelToken.cancel);
    return cancelToken;
  }
}

extension AsyncValueToString<T> on AsyncValue<T> {
  String toShortString() {
    return when(
      data: (data) => data.toString(),
      error: (err, stack) => 'Error: $err',
      loading: () => 'Loading',
    );
  }
}

extension StringExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
}
