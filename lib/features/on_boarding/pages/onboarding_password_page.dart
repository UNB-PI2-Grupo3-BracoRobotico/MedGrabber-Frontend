import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/config/routes/routes.dart';
import 'package:grabber/core/injection.dart';
import 'package:grabber/features/on_boarding/pages/base_auth/bloc/signup_cubit.dart';
import 'package:grabber/features/on_boarding/pages/widgets/on_boarding_base_page.dart';
import 'package:grabber/generated/l10n.dart';
import 'package:styled_text/styled_text.dart';

class OnBoardingPasswordPage extends StatefulWidget {
  const OnBoardingPasswordPage({super.key});

  @override
  State<OnBoardingPasswordPage> createState() => _OnBoardingPasswordState();
}

class _OnBoardingPasswordState extends State<OnBoardingPasswordPage> {
  late final TextEditingController _passwordController;
  late final TextEditingController _passwordConfirmController;

  final SignupCubit _signupCubit = getIt.get();
  bool canContinuePassword = false;
  bool canContinueConfirmPassword = false;
  final int max = 15;

  @override
  void initState() {
    super.initState();
    _passwordController = TextEditingController();
    _passwordConfirmController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _passwordController.dispose();
    _passwordConfirmController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      bloc: _signupCubit,
      listener: (context, state) {
        if (state.passwordIsValid)  {
          Navigator.of(context).pushReplacementNamed(
            AppRoutes.onBoardingPhone,
          );
        } else if (!state.passwordIsValid && state.password.isEmpty) {
          _showPasswordError();
        }
      },
      builder: (_, state) {
        return BaseOnBoardingPage(
          content: Column(
            children: [
              DSTextField(
                controller: _passwordController,
                label: S.current.on_boarding_password_page_title,
                obscureText: true,
                onChanged: (val) {
                  setState(() {
                    canContinuePassword = _passwordIsEmpty(val);
                  });
                },
                maxLength: max,
              ),
              const VerticalGap.xxxs(),
              DSTextField(
                controller: _passwordConfirmController,
                obscureText: true,
                label: S.current.on_boarding_password_confirm_page_title,
                onChanged: (val) {
                  setState(() {
                    canContinueConfirmPassword = _passwordIsEmpty(val);
                  });
                },
                maxLength: max,
              ),
              const VerticalGap.xxxs(),
              StyledText(
                text: S.current.on_boarding_password_page_description,
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
          buttonEnabled: canContinuePassword && canContinueConfirmPassword,
          buttonLabel: S.current.continue_button_label,
          onPressed: () {
            _validatePassword(
              _passwordController.text,
              _passwordConfirmController.text,
            );
          },
        );
      },
    );
  }

  bool _passwordIsEmpty(String password) {
    return password.isNotEmpty;
  }

  Future<void> _validatePassword(
      String password, String confirmPassword) async {
    if (password == confirmPassword &&
        password.isNotEmpty &&
        password.length > 8) {
      _signupCubit.savePassword(
        _passwordController.text,
      );
    } else {
      _showPasswordError();
    }
  }

  void _showPasswordError() {
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
          title: S.current.on_boarding_password_page_error_bottomsheet_title,
          description:
              S.current.on_boarding_password_page_error_bottomsheet_description,
          icon: Icons.error_outline_rounded,
          buttonLabel: S.current.try_again,
          onTap: () {
            _passwordConfirmController.clear();
            _passwordController.clear();
            Navigator.of(context).pop();
          },
        );
      },
    );
  }
}
