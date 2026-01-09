import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:proximitreats/i18n/strings.g.dart';
import 'package:proximitreats/theme/pt_theme_light.dart';

class ProximitreatsApp extends StatelessWidget {
  const ProximitreatsApp({super.key, required this.router});

  final GoRouter router;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'ProximiTreats',
      theme: ptThemeLight,
      routerConfig: router,

      // Localization configuration
      supportedLocales: AppLocaleUtils.supportedLocales,
      locale: TranslationProvider.of(context).flutterLocale,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
    );
  }
}
