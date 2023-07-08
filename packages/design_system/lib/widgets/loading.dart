import 'package:design_system/spacing.dart';
import 'package:flutter/material.dart';

import '../sizes.dart';

class DSLoading extends StatelessWidget {
  const DSLoading({
    super.key,
    this.size = kIconSizeDefault,
    this.color,
  });

  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        kSpacingNano,
      ),
      child: SizedBox(
        height: size,
        width: size,
        child: CircularProgressIndicator(
          color: color,
        ),
      ),
    );
  }
}
