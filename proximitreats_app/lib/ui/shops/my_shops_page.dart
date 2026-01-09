import 'package:flutter/material.dart';

class MyShopsPage extends StatelessWidget {
  const MyShopsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('My Shops Page')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
