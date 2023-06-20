import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class OnBoardingInputBasePage extends StatelessWidget {
  const OnBoardingInputBasePage({
    super.key,
    required this.title,
    required this.description,
    required this.onPressed,
    required this.buttonLabel,
  });

  final String title;
  final String description;
  final VoidCallback onPressed;
  final String buttonLabel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kSpacingXS,
          ),
          child: Column(
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const VerticalGap.xl(),
              DSTextField(
                label: "Nome da loja",
                onChanged: (val) {},
                maxLength: 25,
              ),
              Text(
                description,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.justify,
              ),
              const Spacer(),
              DSButton.primary(
                onPressed: onPressed,
                label: buttonLabel,
              ),
              const VerticalGap.xxxs(),
            ],
          ),
        ),
      ),
    );
  }
}
