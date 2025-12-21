import 'package:Proximitreats/repositories/hello_world_repository.dart';
import 'package:Proximitreats/service_locator.dart';
import 'package:flutter/material.dart';

void main() {
  setupServiceLocator();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: FutureBuilder(
            future: sl<HelloWorldRepository>().fetchHelloWorld('Stephan'),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                return Text(snapshot.data ?? 'No data');
              }
            },
          ),
        ),
      ),
    );
  }
}
