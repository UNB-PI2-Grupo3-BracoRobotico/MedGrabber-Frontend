import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class RealTime extends StatelessWidget {
  const RealTime({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kSpacingXXS),
      decoration: BoxDecoration(
        color: kPrimary,
        borderRadius: BorderRadius.circular(kSpacingNano),
      ),
      padding: const EdgeInsets.all(kSpacingNano),
      child: ListTile(
        onTap: onTap,
        title: Text(
          'Iniciar chat em Tempo Real',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        leading: DSIcon(
          icon: Icons.headphones,
          size: kIconSizeMD,
        ),
        trailing: const DSIcon(
          icon: Icons.chevron_right_rounded,
        ),
      ),
    );
  }
}
