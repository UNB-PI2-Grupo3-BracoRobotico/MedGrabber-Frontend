import 'package:flutter/material.dart';
import 'package:grabber/config/routes/routes.dart';
import 'package:grabber/features/navigation/nav_screen_1.dart';
import 'package:grabber/features/navigation/nav_screen_2.dart';
import 'package:grabber/features/setup_machine/presentation/step_1.dart';

import '../../features/setup_machine/presentation/step_2.dart';

abstract class AppRouter {
  static Map<String, Widget Function(BuildContext)> mapRoutes() {
    return {
      AppRoutes.initial: (_) => const FirstScreen(),
      AppRoutes.secondPage: (_) => const SecondScreen(),
      AppRoutes.setup1: (_) => const Step1(),
      AppRoutes.setup2: (_) => const Step2(),
    };
  }
}
