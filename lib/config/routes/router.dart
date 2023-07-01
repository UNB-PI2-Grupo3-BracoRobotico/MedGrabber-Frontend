import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/config/routes/routes.dart';
import 'package:grabber/core/injection.dart';
import 'package:grabber/features/on_boarding/presentation/pages/base_auth/login_bloc/login_cubit.dart';
import 'package:grabber/features/on_boarding/presentation/pages/login_page.dart';
import 'package:grabber/features/on_boarding/presentation/pages/onboarding_email_page.dart';
import 'package:grabber/features/on_boarding/presentation/pages/onboarding_password_page.dart';
import 'package:grabber/features/on_boarding/presentation/pages/onboarding_phone_page.dart';
import 'package:grabber/features/on_boarding/presentation/pages/onboarding_start_page.dart';
import 'package:grabber/features/on_boarding/presentation/pages/onboarding_token_page.dart';
import 'package:grabber/features/inventory/presentation/pages/inventory_page.dart';
import 'package:grabber/features/navigation/template_page.dart';
import 'package:grabber/features/settings/pages/name_option/name_page.dart';
import 'package:grabber/features/settings/pages/phone_option/blocs/update_phone_cubit/update_phone_cubit.dart';
import 'package:grabber/features/settings/pages/settings_page.dart';
import 'package:grabber/features/setup_machine/presentation/blocs/setup_status/setup_status_bloc.dart';
import 'package:grabber/features/setup_machine/presentation/pages/step_final.dart';

import '../../features/home/presentation/home_page.dart';
import '../../features/inventory/presentation/blocs/inventory/has_item_cubit.dart';
import '../../features/settings/pages/name_option/blocs/name_page/name_page_cubit.dart';
import '../../features/settings/pages/phone_option/phone_page.dart';
import '../../features/setup_machine/presentation/pages/step_1.dart';
import '../../features/setup_machine/presentation/pages/step_2.dart';
import 'navigator_helper.dart';

abstract class AppRouter {
  static Map<String, Widget Function(BuildContext)> mapRoutes() {
    return {
      AppRoutes.onBoarding: (_) => const OnBoardingStartPage(),
      AppRoutes.login: (_) => BlocProvider(
            create: (_) => LoginCubit(),
            child: const LoginPage(),
          ),
      AppRoutes.onBoardingToken: (_) => const OnBoardingTokenPage(),
      AppRoutes.onBoardingEmail: (_) => const OnBoardingEmailPage(),
      AppRoutes.onBoardingPassword: (_) => const OnBoardingPasswordPage(),
      AppRoutes.onBoardingPhone: (_) => const OnBoardingPhonePage(),
      AppRoutes.setup1: (_) => const Step1(),
      AppRoutes.setup2: (_) => const Step2(),
      AppRoutes.setupFinal: (_) => BlocProvider(
            create: (_) => SetupStatusBloc(),
            child: const StepFinal(),
          ),
      AppRoutes.home: (_) => const HomePage(),
      AppRoutes.settings: (_) => const SettingsPage(),
      AppRoutes.settingsName: (_) => BlocProvider(
            create: (_) => NamePageCubit(
              updateStoreName: getIt.get(),
            ),
            child: const NamePage(),
          ),
      AppRoutes.settingsPhone: (_) => BlocProvider(
            create: (_) => UpdatePhoneCubit(
              updatePhoneNumber: getIt.get(),
            ),
            child: const PhonePage(),
          ),
      AppRoutes.notifications: (_) {
        //TODO(Mauricio): Implement route
        throw UnimplementedError();
      },
      AppRoutes.dashboard: (_) {
        //TODO(Mauricio): Implement route
        throw UnimplementedError();
      },
      AppRoutes.help: (_) {
        //TODO(Mauricio): Implement route
        throw UnimplementedError();
      },
    };
  }

  static Route routeFromSettings(RouteSettings settings) {
    late Widget page;
    AnimationByRoute animation = AnimationByRoute.defaultOption;

    switch (settings.name) {
      case AppRoutes.initial:
        page = const TemplatePage();
        break;
      case AppRoutes.setup1:
        page = const Step1();
        break;
      case AppRoutes.setup2:
        page = const Step2();
        break;
      case AppRoutes.setupFinal:
        page = BlocProvider(
          create: (_) => SetupStatusBloc(),
          child: const StepFinal(),
        );
        break;
      case AppRoutes.home:
        animation = AnimationByRoute.instant;
        page = const HomePage();
        break;
      case AppRoutes.settings:
        animation = AnimationByRoute.instant;
        page = const SettingsPage();
        break;
      case AppRoutes.settingsName:
        page = BlocProvider(
          create: (_) => NamePageCubit(
            updateStoreName: getIt.get(),
          ),
          child: const NamePage(),
        );
        break;
      case AppRoutes.settingsPhone:
        page = BlocProvider(
          create: (_) => UpdatePhoneCubit(
            updatePhoneNumber: getIt.get(),
          ),
          child: const PhonePage(),
        );
        break;
      case AppRoutes.inventory:
        page = BlocProvider(
          create: (_) => HasItemCubit(
            getProductsList: getIt.get(),
          ),
          child: const InventoryPage(),
        );
        break;
      case AppRoutes.notifications:
      case AppRoutes.dashboard:
      case AppRoutes.help:
      default:
        throw UnimplementedError();
    }

    return NavigatorHelper.createRoute(
      page,
      animation: animation,
    );
  }
}
