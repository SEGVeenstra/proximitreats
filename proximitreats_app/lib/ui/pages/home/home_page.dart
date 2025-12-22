import 'package:flutter/material.dart';
import 'package:proximitreats/service_locator.dart';
import 'package:proximitreats_client/proximitreats_client.dart';
import 'package:serverpod_auth_idp_flutter/serverpod_auth_idp_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Welcome to Proximity Treats!'),
          OutlinedButton(
            onPressed: () {
              sl<Client>().auth.signOutDevice();
            },
            child: const Text('Logout'),
          ),
        ],
      ),
    );
  }
}
