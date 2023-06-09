import 'package:design_system/colors.dart';
import 'package:design_system/sizes.dart';
import 'package:flutter/material.dart';

class DSIcon extends StatelessWidget {
  const DSIcon({
    super.key,
    required this.icon,
    this.size = kIconSizeDefault,
    this.color = kBlack,
  });

  final IconData icon;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size,
      color: color,
    );
  }
}
