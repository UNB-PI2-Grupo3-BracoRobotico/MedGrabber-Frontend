import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:grabber/config/routes/routes.dart';
import 'package:grabber/features/settings/widgets/option_tile.dart';
import 'package:grabber/features/shared/bottom_navigation_bar.dart';

import '../../../generated/l10n.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const GrabberBottomNavigationBar(),
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
                onTap: () => Navigator.of(context).pushNamed(
                  AppRoutes.settingsName,
                ),
              ),
              const VerticalGap.xxs(),
              OptionTile(
                title: S.current.settings_phone_option_title,
                icon: Icons.phone_outlined,
                onTap: () => Navigator.of(context).pushNamed(
                  AppRoutes.settingsPhone,
                ),
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
