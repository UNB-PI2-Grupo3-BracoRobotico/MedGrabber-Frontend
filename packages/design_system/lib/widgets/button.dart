import 'package:design_system/colors.dart';
import 'package:design_system/spacing.dart';
import 'package:flutter/material.dart';

class DSButton extends StatelessWidget {
  const DSButton({
    super.key,
    required this.onPressed,
    required this.label,
    required this.style,
  });

  final VoidCallback onPressed;
  final String label;
  final ButtonStyle? style;

  factory DSButton.primary({
    required VoidCallback onPressed,
    required String label,
  }) {
    return DSButton(
      onPressed: onPressed,
      label: label,
      style: ElevatedButton.styleFrom(
        backgroundColor: kPrimary,
      ),
    );
  }

  factory DSButton.outlined({
    required VoidCallback onPressed,
    required String label,
  }) {
    return DSButton(
      onPressed: onPressed,
      label: label,
      style: ElevatedButton.styleFrom(
        backgroundColor: kWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            kSpacingXS,
          ),
          side: const BorderSide(
            color: kBlack,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ElevatedButton(
        style: style,
        onPressed: onPressed,
        child: Text(
          label,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
