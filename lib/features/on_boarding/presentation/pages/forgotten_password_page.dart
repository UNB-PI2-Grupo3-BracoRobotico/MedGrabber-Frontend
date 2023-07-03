import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/features/on_boarding/presentation/pages/base_auth/forgotten_password_bloc/forgotten_password_cubit.dart';
import 'package:grabber/features/on_boarding/presentation/pages/widgets/on_boarding_base_page.dart';
import 'package:grabber/generated/l10n.dart';
import 'package:styled_text/styled_text.dart';

import '../../../../config/routes/routes.dart';

class ForgottenPasswordPage extends StatefulWidget {
  const ForgottenPasswordPage({super.key});

  @override
  State<ForgottenPasswordPage> createState() => _ForgottenState();
}

class _ForgottenState extends State<ForgottenPasswordPage> {
  late final TextEditingController _emailController;
  bool showErrorMessage = false;

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
    return BlocConsumer<ForgottenPasswordCubit, ForgottenPasswordState>(
      listener: (context, state) async {
        if (state.isValidEmail) {
          await _showMessage();

          Navigator.of(context).pushReplacementNamed(
            AppRoutes.login,
          );
        }
      },
      builder: (_, state) {
        return BaseOnBoardingPage(
          content: Column(
            children: [
              Text(
                S.current.forgotten_password_title,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              DSTextField(
                controller: _emailController,
                label: S.current.on_boarding_email_page_title,
              ),
              if (showErrorMessage)
                StyledText(
                  text: S.current.forgotten_password_email_not_found,
                  textAlign: TextAlign.justify,
                  style: TextStyle(foreground: Paint()..color = Colors.red),
                ),
            ],
          ),
          buttonLabel: S.current.forgotten_password_button_label,
          onPressed: () async {
            await _passwordReset(
              _emailController.text.trim(),
            );
          },
        );
      },
    );
  }

  Future<void> _showMessage() async{
    await showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(
            kSpacingXXXS,
          ),
        ),
      ),
      builder: (context) {
        return DSBottomSheet(
          title: S.current.forgotten_password_email_sended_title,
          description: S.current.forgotten_password_email_sended_message,
          icon: Icons.info_rounded,
          buttonLabel: S.current.continue_button_label,
          onTap: Navigator.of(context).pop,
        );
      },
    );
  }

  Future<void> _passwordReset(
    String email,
  ) async {
    final forgottenPasswordCubit = context.read<ForgottenPasswordCubit>();
    if (!await forgottenPasswordCubit.resetPassword(email))
      setState(() {
        showErrorMessage = true;
      });
  }
}
