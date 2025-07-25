import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'themedata.dart';
import '../shared_pref/storageservice.dart';
import '../../imports.dart';

part 'theme.g.dart';

const map = {
  'ThemeMode.system': ThemeMode.system,
  'ThemeMode.light': ThemeMode.light,
  'ThemeMode.dark': ThemeMode.dark,
};

@riverpod
class ThemeNotifier extends _$ThemeNotifier {
  final _lightSystemNavigationBarColor = light.colorScheme.surface;
  final _darkSystemNavigationBarColor = dark.colorScheme.surface;
  @override
  ThemeMode build() {
    final storage = ref.watch(sharedPrefsServiceProvider);
    return getCurrentTheme(storage);
  }

  void toggleTheme(ThemeMode mode) {
    state = mode;
    ref.read(sharedPrefsServiceProvider).set('theme', mode.toString());
    updateSystemUIOverlay(mode);
  }

  ThemeMode getCurrentTheme(StorageService storage) {
    final theme = storage.get('theme') as String?;
    final value = theme != null ? map[theme] : ThemeMode.light;
    if (value == null) {
      updateSystemUIOverlay(ThemeMode.system);
      return ThemeMode.light;
    }
    updateSystemUIOverlay(value);
    return value;
  }

  void updateSystemUIOverlay(ThemeMode mode) {
    bool isDark;
    if (mode == ThemeMode.system) {
      isDark = WidgetsBinding.instance.platformDispatcher.platformBrightness ==
          Brightness.dark;
    } else {
      isDark = mode == ThemeMode.dark;
    }

    SystemChrome.setSystemUIOverlayStyle(
      isDark
          ? SystemUiOverlayStyle.dark.copyWith(
              statusBarColor: Colors.transparent,
              statusBarBrightness: Brightness.dark,
              statusBarIconBrightness: Brightness.light,
              systemNavigationBarColor: _darkSystemNavigationBarColor,
              systemNavigationBarIconBrightness: Brightness.light,
            )
          : SystemUiOverlayStyle.light.copyWith(
              statusBarColor: Colors.transparent,
              statusBarBrightness: Brightness.light,
              statusBarIconBrightness: Brightness.dark,
              systemNavigationBarColor: _lightSystemNavigationBarColor,
              systemNavigationBarIconBrightness: Brightness.dark,
            ),
    );
  }
}
