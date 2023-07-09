import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/features/on_boarding/presentation/pages/widgets/on_boarding_base_page.dart';
import 'package:grabber/features/on_boarding/presentation/pages/widgets/page_error.dart';
import 'package:grabber/features/shared/base_error_page.dart';
import 'package:grabber/features/shared/base_loading_page.dart';
import 'package:grabber/features/shared/base_success_page.dart';
import 'package:grabber/generated/l10n.dart';

import '../blocs/forgotten_password_bloc/forgotten_password_cubit.dart';

class ForgottenPasswordPage extends StatefulWidget {
  const ForgottenPasswordPage({super.key});

  @override
  State<ForgottenPasswordPage> createState() => _ForgottenState();
}

class _ForgottenState extends State<ForgottenPasswordPage> {
  late final TextEditingController _emailController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgottenPasswordCubit, ForgottenPasswordState>(
      builder: (_, state) {
        return state.when(
          loading: () => BaseLoadingPage(
            title: S.current.email_page_loading_title,
          ),
          success: () => BaseSuccessPage(
            title: S.current.forgotten_password_email_sended_title,
            description: S.current.forgotten_password_email_sended_description(
              _emailController.text,
            ),
          ),
          error: () => BaseErrorPage(
            title: S.current.forgotten_password_email_not_found,
            description: S.current.forgotten_password_error_page_description,
            footer: ErrorFooter(
              primaryLabel: S.current.try_again,
              primaryOnTap: _resetPage,
            ),
          ),
          initial: () => BaseOnBoardingPage(
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.current.forgotten_password_title,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const VerticalGap.xxxs(),
                DSTextField(
                  controller: _emailController,
                  label: S.current.on_boarding_email_page_title,
                ),
              ],
            ),
            buttonLabel: S.current.forgotten_password_button_label,
            onPressed: () async {
              await _passwordReset(
                _emailController.text.trim(),
              );
            },
          ),
        );
      },
    );
  }

  void _resetPage() {
    context.read<ForgottenPasswordCubit>().reset();
  }

  Future<void> _passwordReset(
    String email,
  ) async {
    final forgottenPasswordCubit = context.read<ForgottenPasswordCubit>();
    await forgottenPasswordCubit.resetPassword(email);
  }
}
