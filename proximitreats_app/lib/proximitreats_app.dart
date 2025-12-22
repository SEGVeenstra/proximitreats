import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProximitreatsApp extends StatelessWidget {
  const ProximitreatsApp({super.key, required this.router});

  final GoRouter router;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Proximity Treats',
      theme: ThemeData(primarySwatch: Colors.purple),
      routerConfig: router,
    );
  }
}
