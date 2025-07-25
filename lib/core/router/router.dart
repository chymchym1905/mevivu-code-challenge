import '../../imports.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@riverpod
GoRouter router(Ref ref) {
  final router = GoRouter(
      initialLocation: '/landing',
      debugLogDiagnostics: true,
      restorationScopeId: 'router',
      routes: [
        StatefulShellRoute.indexedStack(
            builder: (context, state, navigationShell) {
              return Shell(navigationShell: navigationShell);
            },
            branches: [
              StatefulShellBranch(routes: [
                GoRoute(
                    path: '/home', builder: (context, state) => const Home())
              ]),
              StatefulShellBranch(routes: [
                GoRoute(
                    path: '/search',
                    builder: (context, state) => const Search())
              ]),
              StatefulShellBranch(routes: [
                GoRoute(
                    path: '/recipe',
                    builder: (context, state) => const Recipe())
              ]),
              StatefulShellBranch(routes: [
                GoRoute(
                    path: '/profile',
                    builder: (context, state) => const Profile())
              ])
            ]),
        GoRoute(
            path: '/landing', builder: (context, state) => const LandingPage())
      ]);
  ref.onDispose(router.dispose);
  return router;
}
