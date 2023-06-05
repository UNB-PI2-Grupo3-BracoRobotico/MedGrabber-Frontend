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

  const HorizontalGap.kSpacingQuarck({super.key}) : size = kSpacingQuarck;

  const HorizontalGap.kSpacingNano({super.key}) : size = kSpacingNano;

  const HorizontalGap.kSpacingXXXS({super.key}) : size = kSpacingXXXS;

  const HorizontalGap.kSpacingXXS({super.key}) : size = kSpacingXXS;

  const HorizontalGap.kSpacingXS({super.key}) : size = kSpacingXS;

  const HorizontalGap.kSpacingSM({super.key}) : size = kSpacingSM;

  const HorizontalGap.kSpacingMD({super.key}) : size = kSpacingMD;

  const HorizontalGap.kSpacingLG({super.key}) : size = kSpacingLG;

  const HorizontalGap.kSpacingXL({super.key}) : size = kSpacingXL;

  const HorizontalGap.kSpacingXXL({super.key}) : size = kSpacingXXL;

  const HorizontalGap.kSpacingXXXL({super.key}) : size = kSpacingXXXL;

  const HorizontalGap.kSpacingHuge({super.key}) : size = kSpacingHuge;

  const HorizontalGap.kSpacingGiant({super.key}) : size = kSpacingGiant;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: size);
  }
}
