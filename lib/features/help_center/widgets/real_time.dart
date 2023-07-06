import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

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
      decoration: BoxDecoration(
        color: kPrimary,
        borderRadius: BorderRadius.circular(kSpacingNano),
      ),
      padding: const EdgeInsets.all(kSpacingNano),
      child: ListTile(
        onTap: onTap,
        title: Text(
          S.current.help_page_buttom_label,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        leading: const DSIcon(
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

class ChatTile extends StatelessWidget {
  const ChatTile({
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
      tileColor: kPrimary,
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
