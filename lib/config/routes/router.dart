import 'package:flutter/material.dart';
import 'package:grabber/config/routes/routes.dart';
import 'package:grabber/features/navigation/nav_screen_1.dart';
import 'package:grabber/features/navigation/nav_screen_2.dart';

abstract class AppRouter {
  static Map<String, Widget Function(BuildContext)> mapRoutes() {
    return {
      AppRoutes.initial: (_) => const FirstScreen(),
      AppRoutes.secondPage: (_) => const SecondScreen(),
    };
  }
}
