import 'package:flutter/material.dart';

import '../icons/ds_icons.dart';

class DSIconButton extends StatelessWidget {
  const DSIconButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.splashColor = Colors.transparent,
  });

  final DSIcon icon;
  final VoidCallback onTap;
  final Color splashColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: splashColor,
      highlightColor: splashColor,
      customBorder: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      onTap: onTap,
      child: icon,
    );
  }
}
