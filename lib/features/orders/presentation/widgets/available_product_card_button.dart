import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class AvailableProductCardButton extends StatelessWidget {
  const AvailableProductCardButton({
    super.key,
    required this.onTap,
    required this.icon,
    required this.isDisabled,
  });

  final bool isDisabled;
  final VoidCallback onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isDisabled ? () {} : onTap,
      child: Container(
        padding: const EdgeInsets.all(
          kSpacingNano,
        ),
        decoration: BoxDecoration(
          color: isDisabled ? kLightGrey : kWhite,
          border: Border.all(
            color: isDisabled ? kDarkGrey : kBlack,
          ),
          shape: BoxShape.circle,
        ),
        child: DSIcon(
          icon: icon,
          size: kIconSizeXS,
          color: isDisabled ? kDarkGrey : kBlack,
        ),
      ),
    );
  }
}
