import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:grabber/config/routes/routes.dart';
import 'package:grabber/generated/l10n.dart';

class OnBoardingStartPage extends StatelessWidget {
  const OnBoardingStartPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).pushNamed(
          AppRoutes.editConnection,
        ),
        child: const DSIcon(
          icon: Icons.admin_panel_settings_rounded,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kSpacingXS,
          ),
          child: Column(
            children: [
              Expanded(
                  child: ListView(
                children: [
                  const Image(
                    image: AssetImage('assets/images/mechanical-arm.png'),
                    fit: BoxFit.cover,
                  ),
                  const VerticalGap.xl(),
                  Text(
                    S.current.on_boarding_initial_title,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  Text(
                    S.current.on_boarding_description_title,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.justify,
                  ),
                ],
              )),
              DSButton.primary(
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.onBoardingToken,
                ),
                label: S.current.start_button_label,
              ),
              const VerticalGap.xxxs(),
              DSButton.outlined(
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.login,
                ),
                label: S.current.go_to_login_page_button_label,
              ),
              const VerticalGap.xxxs(),
            ],
          ),
        ),
      ),
    );
  }
}
