import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/config/routes/routes.dart';
import 'package:grabber/core/injection.dart';
import 'package:grabber/features/navigation/example_home_page.dart';
import 'package:grabber/features/on_boarding/pages/onboarding_email_page.dart';
import 'package:grabber/features/on_boarding/pages/onboarding_password_page.dart';
import 'package:grabber/features/on_boarding/pages/onboarding_phone_page.dart';
import 'package:grabber/features/on_boarding/pages/onboarding_start_page.dart';
import 'package:grabber/features/on_boarding/pages/onboarding_token_page.dart';
import 'package:grabber/features/settings/pages/name_option/name_page.dart';
import 'package:grabber/features/settings/pages/phone_option/blocs/update_phone_cubit/update_phone_cubit.dart';
import 'package:grabber/features/settings/pages/settings_page.dart';
import 'package:grabber/features/setup_machine/presentation/blocs/setup_status/setup_status_bloc.dart';
import 'package:grabber/features/setup_machine/presentation/pages/step_final.dart';

import '../../features/settings/pages/name_option/blocs/name_page/name_page_cubit.dart';
import '../../features/settings/pages/phone_option/phone_page.dart';
import '../../features/setup_machine/presentation/pages/step_1.dart';
import '../../features/setup_machine/presentation/pages/step_2.dart';

abstract class AppRouter {
  static Map<String, Widget Function(BuildContext)> mapRoutes() {
    return {
      AppRoutes.onBoarding: (_) => const OnBoardingStartPage(),
      AppRoutes.onBoardingToken: (_) => const OnBoardingTokenPage(),
      AppRoutes.onBoardingEmail: (_) => const OnBoardingEmailPage(),
      AppRoutes.onBoardingPassword: (_) => const OnBoardingPasswordPage(),
      AppRoutes.onBoardingPhone: (_) => const OnBoardingPhonePage(),

      // AppRoutes.onBoardingCompanyInfo: (_) => const OnBoardingTokenPage(),
      AppRoutes.setup1: (_) => const Step1(),
      AppRoutes.setup2: (_) => const Step2(),
      AppRoutes.setupFinal: (_) => BlocProvider(
            create: (_) => SetupStatusBloc(),
            child: const StepFinal(),
          ),
      //TODO(Mauricio): Change for actual home page later
      AppRoutes.home: (_) => const ExampleHomePage(),
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
    };
  }
}
