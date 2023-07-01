import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/config/routes/routes.dart';
import 'package:grabber/features/on_boarding/presentation/pages/base_auth/login_bloc/login_cubit.dart';
import 'package:grabber/features/on_boarding/presentation/pages/widgets/on_boarding_base_page.dart';
import 'package:grabber/generated/l10n.dart';
import 'package:styled_text/styled_text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  bool showErrorMessage = false;

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
      listener: (context, state) {
        if (state.isAuthenticated) {
          Navigator.of(context).pushReplacementNamed(
            AppRoutes.home,
          );
        }
      },
      builder: (_, state) {
        return BaseOnBoardingPage(
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
              const VerticalGap.xxxs(),
              if (showErrorMessage)
                StyledText(
                  text: S.current.login_error_message,
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
            ],
          ),
          buttonLabel: S.current.login_button_label,
          onPressed: () async {
            await _validateLogin(
              _emailController.text.trim(),
              _passwordController.text.trim(),
            );
          },
        );
      },
    );
  }

  Future<void> _validateLogin(String email, String password) async {
    final loginCubit = context.read<LoginCubit>();
    if (await loginCubit.login(email, password)) {
      setState(() {
        showErrorMessage:
        true;
      });
    }
  }
}
