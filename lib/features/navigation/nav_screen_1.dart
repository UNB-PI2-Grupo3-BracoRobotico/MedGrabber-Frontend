import 'package:flutter/material.dart';
import 'package:grabber/config/routes.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(AppRoutes.secondPage);
          },
          child: const Text('Launch screen'),
        ),
      ),
    );
  }
}
