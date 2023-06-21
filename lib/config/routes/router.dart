import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/config/routes/routes.dart';
import 'package:grabber/core/injection.dart';
import 'package:grabber/features/home/presentation/home_page.dart';
import 'package:grabber/features/navigation/template_page.dart';
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
      AppRoutes.initial: (_) => const TemplatePage(),
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
}
