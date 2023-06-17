import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class NameErrorFooter extends StatelessWidget {
  const NameErrorFooter({
    super.key,
    required this.primaryLabel,
    required this.secondaryLabel,
    required this.primaryOnTap,
    required this.secondaryOnTap,
  });

  final String primaryLabel;
  final String secondaryLabel;
  final VoidCallback primaryOnTap;
  final VoidCallback secondaryOnTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DSButton.outlined(
          onPressed: secondaryOnTap,
          label: secondaryLabel,
        ),
        const VerticalGap.nano(),
        DSButton.primary(
          onPressed: primaryOnTap,
          label: primaryLabel,
        ),
      ],
    );
  }
}
