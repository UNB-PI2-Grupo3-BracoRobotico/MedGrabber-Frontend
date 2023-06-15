import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:grabber/features/settings/widgets/option_tile.dart';

import '../../../generated/l10n.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kSpacingXS,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  S.current.settings_title,
                  style: Theme.of(context).textTheme.headlineLarge,
                  textAlign: TextAlign.start,
                ),
              ),
              const VerticalGap.xl(),
              OptionTile(
                title: S.current.settings_name_option_title,
                icon: Icons.account_circle_outlined,
                //TODO(Mauricio): Implement onTap
                onTap: () {},
              ),
              const VerticalGap.xxs(),
              OptionTile(
                title: S.current.settings_phone_option_title,
                icon: Icons.phone_outlined,
                //TODO(Mauricio): Implement onTap
                onTap: () {},
              ),
              const VerticalGap.xxs(),
              OptionTile(
                title: S.current.settings_address_option_title,
                icon: Icons.location_on_outlined,
                //TODO(Mauricio): Implement onTap
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
