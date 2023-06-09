import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class BaseErrorPage extends StatelessWidget {
  const BaseErrorPage({
    super.key,
    this.canPop = true,
    required this.title,
    required this.description,
    this.footer,
  });

  final bool canPop;
  final String title;
  final String description;
  final Widget? footer;

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
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kSpacingXS,
              ),
              child: Center(
                child: Column(
                  children: [
                    const Spacer(),
                    const DSIcon(
                      icon: Icons.error_outline_rounded,
                      size: kIconSizeXXXL,
                    ),
                    const VerticalGap.xxs(),
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleLarge,
                      textAlign: TextAlign.center,
                    ),
                    const VerticalGap.nano(),
                    Text(
                      description,
                      style: Theme.of(context).textTheme.bodyMedium,
                      textAlign: TextAlign.center,
                    ),
                    const Spacer(),
                    if (footer != null) ...[
                      footer!,
                      const VerticalGap.xxs(),
                    ]
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
