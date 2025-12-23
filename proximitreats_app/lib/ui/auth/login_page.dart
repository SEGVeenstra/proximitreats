import 'package:flutter/material.dart';
import 'package:proximitreats/service_locator.dart';
import 'package:proximitreats_client/proximitreats_client.dart';
import 'package:serverpod_auth_idp_flutter/serverpod_auth_idp_flutter.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Page')),
      body: SignInWidget(
        client: sl<Client>(),
        onAuthenticated: () {
          // Handle post-authentication actions here.
          debugPrint('User authenticated successfully');
        },
        onError: (error) {
          // Handle authentication errors here.
          debugPrint('Authentication error: $error');
        },
      ),
    );
  }
}
