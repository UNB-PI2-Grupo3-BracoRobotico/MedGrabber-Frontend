import 'package:design_system/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:grabber/config/routes/routes.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: Padding(
          //TODO(Mauricio): Use spacing tokens from DS package
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: DSButton(
              onPressed: () =>
                  Navigator.of(context).pushNamed(AppRoutes.secondPage),
              label: "Ir para a segunda página",
            ),
          ),
        ),
      ),
    );
  }
}
