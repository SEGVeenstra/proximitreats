import 'package:go_router/go_router.dart';
import 'package:proximitreats/ui/pages/auth/login_page.dart';
import 'package:proximitreats/ui/pages/home/home_page.dart';
import 'package:proximitreats_client/proximitreats_client.dart';
import 'package:serverpod_auth_idp_flutter/serverpod_auth_idp_flutter.dart';

GoRouter createAppRouter(Client client) {
  return GoRouter(
    refreshListenable: client.auth.authInfoListenable,
    initialLocation: '/home',
    redirect: (context, state) {
      final isLoggedIn = client.auth.authInfo != null;

      if (!isLoggedIn) {
        return '/login';
      } else if (isLoggedIn) {
        return '/home';
      }
      return null;
    },
    routes: [
      GoRoute(path: '/login', builder: (context, state) => const LoginPage()),
      GoRoute(path: '/home', builder: (context, state) => const HomePage()),
    ],
  );
}
