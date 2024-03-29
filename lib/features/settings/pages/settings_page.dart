import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/config/routes/routes.dart';
import 'package:grabber/core/injection.dart';
import 'package:grabber/features/on_boarding/presentation/blocs/session_manager/session_manager_cubit.dart';
import 'package:grabber/features/settings/widgets/option_tile.dart';
import 'package:grabber/features/shared/base_loading_page.dart';
import 'package:grabber/features/shared/bottom_navigation_bar.dart';

import '../../../generated/l10n.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SessionManagerCubit, SessionManagerState>(
      bloc: getIt.get(),
      builder: (context, state) {
        return state.maybeWhen(
          orElse: BaseLoadingPage.new,
          authenticated: (user) => Scaffold(
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
                        arguments: user.storeName,
                      ),
                    ),
                    const VerticalGap.xxs(),
                    OptionTile(
                      title: S.current.settings_phone_option_title,
                      icon: Icons.phone_outlined,
                      onTap: () => Navigator.of(context).pushNamed(
                        AppRoutes.settingsPhone,
                        arguments: user.phoneNumber,
                      ),
                    ),
                    const VerticalGap.xxs(),
                    OptionTile(
                      title: S.current.settings_email_option_title,
                      icon: Icons.email_outlined,
                      onTap: () => Navigator.of(context).pushNamed(
                        AppRoutes.settingsMail,
                        arguments: user.email,
                      ),
                    ),
                    const VerticalGap.xxs(),
                    OptionTile(
                      title: S.current.settings_connection_option_title,
                      icon: Icons.admin_panel_settings_rounded,
                      onTap: () => Navigator.of(context).pushNamed(
                        AppRoutes.editConnection,
                      ),
                    ),
                    const VerticalGap.xxs(),
                    OptionTile(
                      title: S.current.settings_signout_option_title,
                      icon: Icons.logout_rounded,
                      onTap: () =>
                          getIt.get<SessionManagerCubit>().signOutUser(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
