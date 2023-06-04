import 'package:flutter/material.dart';

class TemplatePage extends StatelessWidget {
  const TemplatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Text(
          "This page will be implemented later on",
        ),
      ),
    );
  }
}
