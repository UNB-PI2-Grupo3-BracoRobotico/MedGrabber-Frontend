import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class CardButtonOption extends StatelessWidget {
  const CardButtonOption({
    super.key,
    required this.onTap,
    required this.icon,
  });

  final VoidCallback onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(
        kSpacingGiant,
      ),
      splashColor: kDarkGrey,
      onTap: onTap,
      child: Ink(
        padding: const EdgeInsets.all(
          kSpacingNano,
        ),
        decoration: const BoxDecoration(
          color: kWhite,
          shape: BoxShape.circle,
        ),
        child: DSIcon(
          icon: icon,
        ),
      ),
    );
  }
}
