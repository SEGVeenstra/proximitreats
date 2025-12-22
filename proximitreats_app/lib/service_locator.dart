import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:proximitreats/navigation/app_router.dart';
import 'package:proximitreats_client/proximitreats_client.dart';
import 'package:serverpod_auth_idp_flutter/serverpod_auth_idp_flutter.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

import 'service_locator.config.dart';

final sl = GetIt.instance;

@InjectableInit()
Future<void> setupServiceLocator() => sl.init();

@module
abstract class RegisterModule {
  @singleton
  @preResolve
  Future<Client> get client async {
    const serverUrl = 'http://localhost:8080/';
    final client = Client(serverUrl)
      ..connectivityMonitor = FlutterConnectivityMonitor()
      ..authSessionManager = FlutterAuthSessionManager();
    await client.auth.initialize();
    return client;
  }

  @singleton
  @preResolve
  Future<GoRouter> appRouter(Client client) async => createAppRouter(client);
}
