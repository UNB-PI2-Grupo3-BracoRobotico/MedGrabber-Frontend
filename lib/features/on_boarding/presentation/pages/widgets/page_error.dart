import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ErrorFooter extends StatelessWidget {
  const ErrorFooter({
    super.key,
    required this.primaryLabel,
    required this.primaryOnTap,
  });

  final String primaryLabel;
  final VoidCallback primaryOnTap;

  @override
  Widget build(BuildContext context) {
    return DSButton.primary(
      onPressed: primaryOnTap,
      label: primaryLabel,
    );
  }
}
