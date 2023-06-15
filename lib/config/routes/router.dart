import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/config/routes/routes.dart';
import 'package:grabber/features/navigation/example_home_page.dart';
import 'package:grabber/features/navigation/template_page.dart';
import 'package:grabber/features/settings/pages/name_page.dart';
import 'package:grabber/features/settings/pages/settings_page.dart';
import 'package:grabber/features/setup_machine/presentation/blocs/setup_status/setup_status_bloc.dart';
import 'package:grabber/features/setup_machine/presentation/pages/step_final.dart';

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
      //TODO(Mauricio): Change for actual home page later
      AppRoutes.home: (_) => const ExampleHomePage(),
      AppRoutes.settings: (_) => const SettingsPage(),
      AppRoutes.settingsName: (_) => const NamePage(),
    };
  }
}
