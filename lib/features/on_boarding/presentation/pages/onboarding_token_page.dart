import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/config/routes/routes.dart';
import 'package:grabber/core/injection.dart';
import 'package:grabber/features/on_boarding/presentation/pages/widgets/on_boarding_base_page.dart';
import 'package:grabber/generated/l10n.dart';
import 'package:styled_text/styled_text.dart';

import '../blocs/sign_up_bloc/signup_cubit.dart';

class OnBoardingTokenPage extends StatefulWidget {
  const OnBoardingTokenPage({super.key});

  @override
  State<OnBoardingTokenPage> createState() => _OnBoardingTokenState();
}

class _OnBoardingTokenState extends State<OnBoardingTokenPage> {
  late final TextEditingController _controller;
  final SignupCubit _signupCubit = getIt.get();
  bool canContinue = false;
  final int max = 64;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      bloc: _signupCubit,
      listener: (context, state) {
        if (state.tokenIsValid) {
          Navigator.of(context).pushNamed(
            AppRoutes.onBoardingEmail,
          );
        } else if (!state.tokenIsValid && state.tokenFailureText.isNotEmpty) {
          _showTokenError();
        }
      },
      builder: (_, state) {
        return BaseOnBoardingPage(
          content: Column(
            children: [
              DSTextField(
                controller: _controller,
                label: S.current.on_boarding_token_page_title,
                onChanged: _verifyTokenPattern,
                maxLength: max,
              ),
              const VerticalGap.xxxs(),
              StyledText(
                text: S.current.on_boarding_token_page_description,
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
          buttonEnabled: canContinue,
          buttonLabel: S.current.continue_button_label,
          onPressed: _validateToken,
        );
      },
    );
  }

  Future<void> _verifyTokenPattern(String token) async {
    if (token.isEmpty || token.length > max) {
      setState(() {
        canContinue = false;
      });
    } else {
      setState(() {
        canContinue = true;
      });
    }
  }

  Future<void> _validateToken() async {
    bool tokenValid = await _signupCubit.validateToken(_controller.text);
    if (!tokenValid) {
      _showTokenError();
    }
  }

  void _showTokenError() {
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
          title: S.current.on_boarding_token_page_error_bottomsheet_title,
          description:
              S.current.on_boarding_token_page_error_bottomsheet_description,
          icon: Icons.error_outline_rounded,
          buttonLabel: S.current.try_again,
          onTap: () {
            _signupCubit.cleanTokenFailure();
            Navigator.of(context).pop();
          },
        );
      },
    );
  }
}
