import 'package:flutter/material.dart';

class ExampleHomePage extends StatelessWidget {
  const ExampleHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            "Você está na homepage do aplicativo",
          ),
        ),
      ),
    );
  }
}
