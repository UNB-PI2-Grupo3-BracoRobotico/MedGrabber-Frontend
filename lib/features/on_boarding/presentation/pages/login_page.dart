import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/config/routes/routes.dart';
import 'package:grabber/features/on_boarding/presentation/pages/base_auth/login_bloc/login_cubit.dart';
import 'package:grabber/features/on_boarding/presentation/pages/widgets/on_boarding_base_page.dart';
import 'package:grabber/features/on_boarding/presentation/pages/widgets/page_error.dart';
import 'package:grabber/features/shared/base_error_page.dart';
import 'package:grabber/features/shared/base_loading_page.dart';
import 'package:grabber/features/shared/base_success_page.dart';
import 'package:grabber/generated/l10n.dart';
import 'package:grabber/utils/email_utils.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) => state.whenOrNull(
        success: () async {
          final navigator = Navigator.of(context);
          await Future.delayed(
            const Duration(milliseconds: 1500),
          );
          navigator.popAndPushNamed(
            AppRoutes.home,
          );
        },
      ),
      builder: (_, state) {
        return state.when(
          loading: () => BaseLoadingPage(
            title: S.current.email_page_loading_title,
          ),
          success: () => BaseSuccessPage(
            title: S.current.login_success_message,
            canPop: false,
          ),
          error: () => BaseErrorPage(
            title: S.current.login_error_title,
            description: S.current.login_error_description,
            footer: ErrorFooter(
              primaryLabel: S.current.try_again,
              primaryOnTap: _resetPage,
            ),
          ),
          initial: () => BaseOnBoardingPage(
            content: Column(
              children: [
                Text(
                  S.current.login_button_label,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                DSTextField(
                  controller: _emailController,
                  label: S.current.on_boarding_email_page_title,
                ),
                const VerticalGap.xxxs(),
                DSTextField(
                  controller: _passwordController,
                  obscureText: true,
                  label: S.current.on_boarding_password_page_title,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kIconSizeXS),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).popAndPushNamed(
                            AppRoutes.forgottenPassword,
                          );
                        },
                        child: Text(
                          S.current.forgotten_password_message,
                          style: TextStyle(
                              foreground: Paint()..color = Colors.blue),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            buttonLabel: S.current.login_button_label,
            imageEnabled: false,
            onPressed: () async {
              await _validateLogin(
                _emailController.text.trim(),
                _passwordController.text,
              );
            },
          ),
        );
      },
    );
  }

  Future<void> _validateLogin(String email, String password) async {
    final loginCubit = context.read<LoginCubit>();
    final isValidEmail = EmailValidator.isValidEmail(email);
    if (isValidEmail) {
      await loginCubit.login(email, password);
    } else {
      showModalBottomSheet(
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
            title: S.current.login_error_title,
            description: S.current.login_email_pattern_error_description,
            icon: Icons.error_outline_rounded,
            buttonLabel: S.current.try_again,
            onTap: Navigator.of(context).pop,
          );
        },
      );
    }
  }

  void _resetPage() {
    context.read<LoginCubit>().reset();
  }
}
