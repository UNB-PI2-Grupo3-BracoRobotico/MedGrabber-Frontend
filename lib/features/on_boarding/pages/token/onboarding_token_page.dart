import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/config/routes/routes.dart';
import 'package:grabber/core/injection.dart';
import 'package:grabber/features/on_boarding/pages/base_auth/bloc/signup_cubit.dart';
import 'package:grabber/features/on_boarding/pages/widgets/on_boarding_base_page.dart';
import 'package:grabber/generated/l10n.dart';
import 'package:styled_text/styled_text.dart';

class OnBoardingTokenPage extends StatefulWidget {
  const OnBoardingTokenPage({super.key});

  @override
  State<OnBoardingTokenPage> createState() => _OnBoardingTokenState();
}

class _OnBoardingTokenState extends State<OnBoardingTokenPage> {
  late final TextEditingController _controller;
  final SignupCubit _signupCubit = getIt.get();
  bool canContinue = false;
  // TODO(Natanael)
  final int max = 15;

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
            AppRoutes.signup,
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
                label: S.current.token_page_title,
                onChanged: (val) {
                  if (val.length < max && canContinue == true) {
                    setState(() {
                      canContinue = false;
                    });
                  }
                  if (val.length == max) {
                    setState(() {
                      canContinue = true;
                    });
                  }
                },
                maxLength: max,
              ),
              const VerticalGap.xxxs(),
              StyledText(
                text: S.current.token_page_description,
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.bodyMedium,
                tags: {
                  "bold": StyledTextTag(
                    style: Theme.of(context).textTheme.bodyLarge,
                  )
                },
              ),
            ],
          ),
          buttonEnabled: canContinue,
          buttonLabel: S.current.continue_button_label,
          onPressed: () {
            _signupCubit.validateToken(_controller.text);

            // Navigator.of(context).pushNamed(
            //   AppRoutes.signup,
            // );
          },
        );
      },
    );
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
          title: 'erro',
          description: 'erro',
          icon: Icons.error_outline_rounded,
          buttonLabel: 'erro',
          onTap: () {
            _signupCubit.cleanTokenFailure();
            Navigator.of(context).pop();
          },
        );
      },
    );
  }
}
