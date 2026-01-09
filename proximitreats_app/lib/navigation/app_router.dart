import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';
import 'package:proximitreats/ui/alerts/alerts_page.dart';
import 'package:proximitreats/ui/auth/login_page.dart';
import 'package:proximitreats/ui/discover/discover_page.dart';
import 'package:proximitreats/ui/root/root_shell.dart';
import 'package:proximitreats/ui/shops/my_shops_page.dart';
import 'package:proximitreats/ui/shops/shop_detail_page.dart';
import 'package:proximitreats/ui/today/today_page.dart';
import 'package:proximitreats_client/proximitreats_client.dart';
import 'package:serverpod_auth_idp_flutter/serverpod_auth_idp_flutter.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final _log = Logger('AppRouter');

GoRouter createAppRouter(Client client) {
  final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    refreshListenable: client.auth.authInfoListenable,
    initialLocation: '/',
    redirect: (context, state) {
      final isLoggedIn = client.auth.authInfo != null;
      final isLoggingIn = state.fullPath?.startsWith('/login') ?? false;

      if (!isLoggedIn && !isLoggingIn) {
        return '/login';
      } else if (isLoggedIn && isLoggingIn) {
        return '/';
      }
      return null;
    },
    routes: [
      GoRoute(path: '/login', builder: (context, state) => const LoginPage()),
      StatefulShellRoute.indexedStack(
        notifyRootObserver: true,
        builder: (context, state, navigationShell) =>
            RootShell(child: navigationShell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/',
                builder: (context, state) => const TodayPage(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/search',
                builder: (context, state) => const DiscoverPage(),
                routes: [
                  GoRoute(
                    path: 'shop/:id',
                    builder: (context, state) {
                      final id = state.pathParameters['id']!;
                      return ShopDetailPage(shopId: UuidValue.fromString(id));
                    },
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/alerts',
                builder: (context, state) => const AlertsPage(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/my-shops',
                builder: (context, state) => const MyShopsPage(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
  router.routerDelegate.addListener(() {
    _log.info(
      'Current location: ${router.routerDelegate.currentConfiguration.uri}',
    );
  });
  return router;
}
