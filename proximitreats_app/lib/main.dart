import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:proximitreats/proximitreats_app.dart';
import 'package:proximitreats/service_locator.dart';
import 'package:proximitreats/utils/logging.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setupLogging();

  await setupServiceLocator();

  runApp(ProximitreatsApp(router: sl<GoRouter>()));
}
