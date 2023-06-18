import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

class BaseOptionPage extends StatelessWidget {
  const BaseOptionPage({
    super.key,
    required this.title,
    required this.content,
    required this.onContinueTap,
    this.buttonEnabled = true,
  });

  final String title;
  final Widget content;
  final VoidCallback onContinueTap;
  final bool buttonEnabled;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: DSIconButton(
          icon: const DSIcon(
            icon: Icons.chevron_left_rounded,
          ),
          onTap: Navigator.of(context).pop,
        ),
        titleSpacing: 0,
        title: Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kSpacingXS,
          ),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [content],
                ),
              ),
              DSButton.primary(
                onPressed: onContinueTap,
                label: S.current.save,
                enabled: buttonEnabled,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
