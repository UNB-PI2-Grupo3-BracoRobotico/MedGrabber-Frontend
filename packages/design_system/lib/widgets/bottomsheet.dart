import 'package:flutter/material.dart';

import '../icons/ds_icons.dart';
import '../sizes.dart';
import '../spacing.dart';
import 'widgets.dart';

class DSBottomSheet extends StatelessWidget {
  const DSBottomSheet({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    required this.buttonLabel,
    required this.onTap,
  });

  final String title;
  final String description;
  final IconData icon;
  final String buttonLabel;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(
          kSpacingXXXS,
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: DSIconButton(
                icon: const DSIcon(
                  icon: Icons.close_rounded,
                  size: kIconSizeMD,
                ),
                onTap: Navigator.of(context).pop,
              ),
            ),
            const Spacer(),
            DSIcon(
              icon: icon,
              size: kIconSizeXXL,
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
            DSButton.outlined(
              onPressed: onTap,
              label: buttonLabel,
            ),
          ],
        ),
      ),
    );
  }
}
