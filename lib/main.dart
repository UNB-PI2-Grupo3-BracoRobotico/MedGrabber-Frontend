import 'package:design_system/design_system.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:grabber/config/routes/router.dart';
import 'package:grabber/core/injection.dart';
import 'package:grabber/features/home/presentation/blocs/navigation_cubit.dart';

import 'core/app_localizations_delegate.dart';
import 'firebase_options.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  configureDependecies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NavigationCubit(),
      child: MaterialApp(
        color: kWhite,
        title: 'grabber',
        theme: CustomTheme.getThemeData(),
        onGenerateRoute: AppRouter.routeFromSettings,
        supportedLocales: localizationsDelegate.supportedLocales,
        localizationsDelegates: const [
          localizationsDelegate,
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          DefaultCupertinoLocalizations.delegate,
        ],
      ),
    );
  }
}
