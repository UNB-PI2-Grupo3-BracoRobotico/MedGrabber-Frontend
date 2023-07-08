import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:grabber/config/routes/routes.dart';
import 'package:grabber/features/shared/base_success_page.dart';
import 'package:grabber/generated/l10n.dart';

class OnboardinSuccessAccountCreationPage extends StatefulWidget {
  const OnboardinSuccessAccountCreationPage({super.key});

  @override
  State<OnboardinSuccessAccountCreationPage> createState() =>
      _OnboardinSuccessAccountCreationPageState();
}

class _OnboardinSuccessAccountCreationPageState
    extends State<OnboardinSuccessAccountCreationPage> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _handleNavigation();
    });
  }

  Future<void> _handleNavigation() async {
    final navigator = Navigator.of(context);
    await Future.delayed(
      const Duration(
        milliseconds: 1500,
      ),
    );
    navigator.pushNamedAndRemoveUntil(
      AppRoutes.home,
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BaseSuccessPage(
      canPop: false,
      title: S.current.on_boarding_success_account_creation_title,
    );
  }
}
