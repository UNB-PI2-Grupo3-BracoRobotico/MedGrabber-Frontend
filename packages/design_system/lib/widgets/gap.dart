import 'package:flutter/material.dart';

import '../spacing.dart';

class VerticalGap extends StatelessWidget {
  const VerticalGap({
    super.key,
    required this.size,
  });

  final double size;

  const VerticalGap.quarck({super.key}) : size = kSpacingQuarck;

  const VerticalGap.nano({super.key}) : size = kSpacingNano;

  const VerticalGap.xxxs({super.key}) : size = kSpacingXXXS;

  const VerticalGap.xxs({super.key}) : size = kSpacingXXS;

  const VerticalGap.xs({super.key}) : size = kSpacingXS;

  const VerticalGap.sm({super.key}) : size = kSpacingSM;

  const VerticalGap.md({super.key}) : size = kSpacingMD;

  const VerticalGap.lg({super.key}) : size = kSpacingLG;

  const VerticalGap.xl({super.key}) : size = kSpacingXL;

  const VerticalGap.xxl({super.key}) : size = kSpacingXXL;

  const VerticalGap.xxxl({super.key}) : size = kSpacingXXXL;

  const VerticalGap.huge({super.key}) : size = kSpacingHuge;

  const VerticalGap.giant({super.key}) : size = kSpacingGiant;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: size);
  }
}

class HorizontalGap extends StatelessWidget {
  const HorizontalGap({
    super.key,
    required this.size,
  });

  final double size;

  const HorizontalGap.quarck({super.key}) : size = kSpacingQuarck;

  const HorizontalGap.nano({super.key}) : size = kSpacingNano;

  const HorizontalGap.xxxs({super.key}) : size = kSpacingXXXS;

  const HorizontalGap.xxs({super.key}) : size = kSpacingXXS;

  const HorizontalGap.xs({super.key}) : size = kSpacingXS;

  const HorizontalGap.sm({super.key}) : size = kSpacingSM;

  const HorizontalGap.md({super.key}) : size = kSpacingMD;

  const HorizontalGap.lg({super.key}) : size = kSpacingLG;

  const HorizontalGap.xl({super.key}) : size = kSpacingXL;

  const HorizontalGap.xxl({super.key}) : size = kSpacingXXL;

  const HorizontalGap.xxxl({super.key}) : size = kSpacingXXXL;

  const HorizontalGap.huge({super.key}) : size = kSpacingHuge;

  const HorizontalGap.giant({super.key}) : size = kSpacingGiant;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: size);
  }
}
