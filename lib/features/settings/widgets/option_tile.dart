import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class OptionTile extends StatelessWidget {
  const OptionTile({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  final String title;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: const EdgeInsets.all(8),
      dense: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      leading: DSIcon(
        icon: icon,
        size: kIconSizeSM,
      ),
      trailing: const DSIcon(
        icon: Icons.chevron_right_rounded,
      ),
    );
  }
}
