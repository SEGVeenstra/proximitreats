import 'package:flutter/material.dart';
import 'package:proximitreats/repositories/hello_world_repository.dart';
import 'package:proximitreats/service_locator.dart';
import 'package:proximitreats_client/proximitreats_client.dart';
import 'package:serverpod_auth_idp_flutter/serverpod_auth_idp_flutter.dart';

class TodayPage extends StatelessWidget {
  const TodayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Welcome to Proximity Treats!'),
        FutureBuilder(
          future: sl<HelloWorldRepository>().fetchHelloWorld(
            sl<Client>().auth.authInfo?.authUserId.toString() ?? 'unknown',
          ),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (snapshot.hasData) {
              return Text('Message from server: ${snapshot.data}');
            } else {
              return const Text('No data received from server.');
            }
          },
        ),
        OutlinedButton(
          onPressed: () {
            sl<Client>().auth.signOutDevice();
          },
          child: const Text('Logout'),
        ),
      ],
    );
  }
}
