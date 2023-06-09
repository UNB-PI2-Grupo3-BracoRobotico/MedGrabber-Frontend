import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class BaseOnBoardingPage extends StatelessWidget {
  const BaseOnBoardingPage({
    super.key,
    this.title,
    required this.content,
    required this.onPressed,
    required this.buttonLabel,
    this.buttonEnabled = true,
    this.imageEnabled = true,
  });

  final String? title;
  final Widget content;
  final VoidCallback onPressed;
  final String buttonLabel;
  final bool buttonEnabled;
  final bool imageEnabled;

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
              Expanded(
                  child: ListView(
                children: [
                  if (imageEnabled)
                    const Image(
                      image: AssetImage('assets/images/mechanical-arm.png'),
                      fit: BoxFit.cover,
                    ),
                  const VerticalGap.xl(),
                  if (title != null)
                    Text(
                      title!,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  if (title != null) const VerticalGap.xl(),
                  content,
                ],
              )),
              DSButton.primary(
                onPressed: onPressed,
                enabled: buttonEnabled,
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
