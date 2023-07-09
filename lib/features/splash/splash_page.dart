import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/config/routes/routes.dart';
import 'package:grabber/core/injection.dart';

import '../on_boarding/presentation/blocs/session_manager/session_manager_cubit.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _handleNavigation();
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SessionManagerCubit, SessionManagerState>(
      bloc: getIt.get(),
      listener: (context, state) {
        state.whenOrNull(
          authenticated: (user) {
            Navigator.pushReplacementNamed(context, AppRoutes.home);
          },
          unauthenticated: () =>
              Navigator.pushReplacementNamed(context, AppRoutes.onBoarding),
        );
      },
      child: const Scaffold(
        backgroundColor: kBlack,
        body: Center(
          child: DSLoading(
            size: kIconSizeXXXL,
          ),
        ),
      ),
    );
  }

  void _handleNavigation() {
    final SessionManagerCubit sessionManagerCubit = getIt.get();
    final state = sessionManagerCubit.state;
    state.whenOrNull(
      authenticated: (user) {
        Navigator.pushReplacementNamed(context, AppRoutes.home);
      },
      unauthenticated: () =>
          Navigator.pushReplacementNamed(context, AppRoutes.onBoarding),
    );
  }
}
