import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class BaseSuccessPage extends StatelessWidget {
  const BaseSuccessPage({
    super.key,
    this.canPop = true,
    required this.title,
  });

  final bool canPop;
  final String title;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => canPop,
      child: Scaffold(
        appBar: canPop
            ? AppBar(
                leading: DSIconButton(
                  icon: const DSIcon(
                    icon: Icons.chevron_left_rounded,
                  ),
                  onTap: Navigator.of(context).pop,
                ),
              )
            : null,
        body: SafeArea(
          child: Animate(
            effects: const [FadeEffect()],
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const DSIcon(
                    icon: Icons.check_circle_outline_rounded,
                    size: kIconSizeXXXL,
                  ),
                  const VerticalGap.xxs(),
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
