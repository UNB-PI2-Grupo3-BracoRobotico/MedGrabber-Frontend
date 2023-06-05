import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:grabber/config/routes/router.dart';
import 'package:grabber/config/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: kWhite,
      title: 'grabber',
      theme: CustomTheme.getThemeData(),
      initialRoute: AppRoutes.initial,
      routes: AppRouter.mapRoutes(),
    );
  }
}
