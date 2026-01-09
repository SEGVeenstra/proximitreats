import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:proximitreats/i18n/strings.g.dart';
import 'package:proximitreats/proximitreats_app.dart';
import 'package:proximitreats/service_locator.dart';
import 'package:proximitreats/utils/logging.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await LocaleSettings.useDeviceLocale();

  setupLogging();

  await setupServiceLocator();

  runApp(TranslationProvider(child: ProximitreatsApp(router: sl<GoRouter>())));
}
