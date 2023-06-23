import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/config/routes/routes.dart';
import 'package:grabber/core/injection.dart';
import 'package:grabber/features/on_boarding/pages/base_auth/bloc/signup_cubit.dart';
import 'package:grabber/features/on_boarding/pages/widgets/on_boarding_base_page.dart';
import 'package:grabber/generated/l10n.dart';
import 'package:styled_text/styled_text.dart';

class OnBoardingEmailPage extends StatefulWidget {
  const OnBoardingEmailPage({super.key});

  @override
  State<OnBoardingEmailPage> createState() => _OnBoardingEmailState();
}

class _OnBoardingEmailState extends State<OnBoardingEmailPage> {
  late final TextEditingController _emailController;
  final SignupCubit _signupCubit = getIt.get();
  bool canContinue = false;
  // TODO(Natanael)
  final int max = 32;

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
    return BlocConsumer<SignupCubit, SignupState>(
      bloc: _signupCubit,
      listener: (context, state) {
        if (state.emailIsValid) {
          Navigator.of(context).pushNamed(
            AppRoutes.onBoardingPassword,
          );
        } else if (!state.tokenIsValid && state.tokenFailureText.isNotEmpty) {
          _showEmailError();
        }
      },
      builder: (_, state) {
        return BaseOnBoardingPage(
          content: Column(
            children: [
              DSTextField(
                controller: _emailController,
                label: S.current.on_boarding_email_page_title,
                onChanged: (val) {},
                maxLength: max,
                keyboardType: TextInputType.emailAddress,
              ),
              const VerticalGap.xxxs(),
              StyledText(
                text: S.current.on_boarding_email_page_description,
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
          buttonEnabled: canContinue,
          buttonLabel: S.current.continue_button_label,
          onPressed: () {
            _signupCubit.validateEmail(_emailController.text);
            print(canContinue);
          },
        );
      },
    );
  }

  void _showEmailError() {
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
          title: S.current.on_boarding_email_page_error_bottomsheet_title,
          description:
              S.current.on_boarding_email_page_error_bottomsheet_description,
          icon: Icons.error_outline_rounded,
          buttonLabel: S.current.try_again,
          onTap: () {
            Navigator.of(context).pop();
          },
        );
      },
    );
  }
}
