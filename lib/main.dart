import 'package:flutter/foundation.dart';
import 'package:mevivu/core/router/router.dart';
import 'package:mevivu/core/theme/themedata.dart';
import 'imports.dart';

void main() async {
      // debugRepaintRainbowEnabled = true;
  WidgetsFlutterBinding.ensureInitialized();
  debugPrint(defaultTargetPlatform.toString());
  final prefs = await SharedPreferences.getInstance();
  runApp(ProviderScope(
      overrides: [sharedPrefInstanceProvider.overrideWithValue(prefs)], observers: [Observers()], child: const Root()));
}

class Root extends ConsumerWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeNotifierProvider);
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
        themeMode: theme,
        title: 'Food App',
        theme: light,
        darkTheme: dark,
        debugShowCheckedModeBanner: false,
        routerConfig: router,
    );
  }
}