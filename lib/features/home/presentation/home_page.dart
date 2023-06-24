import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:grabber/config/routes/routes.dart';
import 'package:grabber/features/shared/bottom_navigation_bar.dart';
import 'package:grabber/generated/l10n.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            children: [
              Text(
                //TODO(Mauricio): remove mock message
                S.current.home_page_welcome_again_title('example name'),
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const VerticalGap.xxs(),
              DSButton.primary(
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.inventory,
                ),
                label: S.current.home_page_manage_inventory_button_label,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
