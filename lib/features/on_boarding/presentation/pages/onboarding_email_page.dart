import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:grabber/config/routes/routes.dart';
import 'package:grabber/core/injection.dart';
import 'package:grabber/features/on_boarding/presentation/pages/widgets/on_boarding_base_page.dart';
import 'package:grabber/generated/l10n.dart';
import 'package:styled_text/styled_text.dart';

import '../blocs/sign_up_bloc/signup_cubit.dart';

class OnBoardingEmailPage extends StatefulWidget {
  const OnBoardingEmailPage({super.key});

  @override
  State<OnBoardingEmailPage> createState() => _OnBoardingEmailState();
}

class _OnBoardingEmailState extends State<OnBoardingEmailPage> {
  late final TextEditingController _emailController;
  final SignupCubit _signupCubit = getIt.get();
  bool canContinue = false;

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
    return BaseOnBoardingPage(
      content: Column(
        children: [
          DSTextField(
            controller: _emailController,
            label: S.current.on_boarding_email_page_title,
            onChanged: _validateEmailPattern,
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
      onPressed: () async {
        _saveEmail();
      },
    );
  }

  Future<void> _saveEmail() async {
    final navigator = Navigator.of(context);
    final isValid = await _signupCubit.validateEmail(
      _emailController.text.trim(),
    );
    if (isValid) {
      navigator.pushNamed(
        AppRoutes.onBoardingPassword,
      );
    } else {
      _showEmailError();
    }
  }

  Future<void> _validateEmailPattern(String email) async {
    if (RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
        .hasMatch(email)) {
      setState(() {
        canContinue = true;
      });
    } else {
      setState(() {
        canContinue = false;
      });
    }
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
          onTap: Navigator.of(context).pop,
        );
      },
    );
  }
}
