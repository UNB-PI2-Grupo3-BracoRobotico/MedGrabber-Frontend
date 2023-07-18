import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/config/routes/routes.dart';

import '../../core/injection.dart';
import '../../generated/l10n.dart';
import '../home/presentation/blocs/navigation_cubit.dart';
import '../on_boarding/presentation/blocs/session_manager/session_manager_cubit.dart';

class GrabberBottomNavigationBar extends StatelessWidget {
  const GrabberBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SessionManagerCubit, SessionManagerState>(
      bloc: getIt.get(),
      listener: (context, state) {
        state.whenOrNull(
          unauthenticated: () => Navigator.of(context).pushNamedAndRemoveUntil(
            AppRoutes.onBoarding,
            (route) => false,
          ),
        );
      },
      child: BlocConsumer<NavigationCubit, NavigationState>(
        listener: (context, state) {
          switch (state.currentIndex) {
            // case 0:
            //   Navigator.of(context).pushReplacementNamed(
            //     AppRoutes.dashboard,
            //   );
            //   break;
            case 0:
              Navigator.of(context).pushReplacementNamed(
                AppRoutes.settings,
              );
              break;
            case 1:
              Navigator.of(context).pushReplacementNamed(
                AppRoutes.home,
              );
              break;
            case 2:
              Navigator.of(context).pushReplacementNamed(
                AppRoutes.help,
                arguments: true,
              );
              break;
            default:
              Navigator.of(context).pushReplacementNamed(
                AppRoutes.home,
                arguments: true,
              );
          }
        },
        builder: (context, state) {
          return Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 14,
                  offset: Offset(0, 8),
                )
              ],
            ),
            child: BottomNavigationBar(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: kPrimary,
              type: BottomNavigationBarType.fixed,
              onTap: (index) {
                context.read<NavigationCubit>().changeIndex(index);
              },
              items: [
                // BottomNavigationBarItem(
                //   icon: DSIcon(
                //     icon: Icons.dashboard_outlined,
                //     color: state.currentIndex == 0 ? kBlack : kDarkGrey,
                //   ),
                //   label: S.current.bottom_navigation_dashboard_option,
                // ),
                BottomNavigationBarItem(
                  icon: DSIcon(
                    icon: Icons.settings_outlined,
                    color: state.currentIndex == 0 ? kBlack : kDarkGrey,
                  ),
                  label: S.current.bottom_navigation_settings_option,
                ),
                BottomNavigationBarItem(
                  icon: DSIcon(
                    icon: Icons.home_outlined,
                    color: state.currentIndex == 1 ? kBlack : kDarkGrey,
                  ),
                  label: S.current.bottom_navigation_home_option,
                ),
                BottomNavigationBarItem(
                  icon: DSIcon(
                    icon: Icons.help_outline_rounded,
                    color: state.currentIndex == 2 ? kBlack : kDarkGrey,
                  ),
                  label: S.current.bottom_navigation_help_option,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
