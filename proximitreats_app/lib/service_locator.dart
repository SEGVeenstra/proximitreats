import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:proximitreats_client/proximitreats_client.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

import 'service_locator.config.dart';

final sl = GetIt.instance;

@InjectableInit()
void setupServiceLocator() => sl.init();

@module
abstract class RegisterModule {
  Future<Client> get client async {
    const serverUrl = 'http://localhost:8080/';
    final client = Client(serverUrl)
      ..connectivityMonitor = FlutterConnectivityMonitor();
    return client;
  }
}
