import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/config/routes/routes.dart';
import 'package:grabber/core/injection.dart';
import 'package:grabber/features/on_boarding/pages/base_auth/bloc/signup_cubit.dart';
import 'package:grabber/features/on_boarding/pages/widgets/on_boarding_base_page.dart';
import 'package:grabber/generated/l10n.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:styled_text/styled_text.dart';

class OnBoardingPhonePage extends StatefulWidget {
  const OnBoardingPhonePage({super.key});

  @override
  State<OnBoardingPhonePage> createState() => _OnBoardingPhoneState();
}

class _OnBoardingPhoneState extends State<OnBoardingPhonePage> {
  late final TextEditingController _controller;
  final MaskTextInputFormatter maskFormatter = MaskTextInputFormatter(
    mask: '(##) #####-####',
  );
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
        if (state.phoneIsValid) {
          print(state.toString());
          _signupCubit.createUser();
          Navigator.pushReplacementNamed(context, AppRoutes.home);
        } else {
          _showPhoneError();
        }
      },
      builder: (_, state) {
        return BaseOnBoardingPage(
          content: Column(
            children: [
              DSTextField(
                controller: _controller,
                label: S.current.on_boarding_phone_page_title,
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
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  maskFormatter,
                ],
              ),
              const VerticalGap.xxxs(),
              StyledText(
                text: S.current.on_boarding_phone_page_description,
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
          buttonEnabled: canContinue,
          buttonLabel: S.current.continue_button_label,
          onPressed: () {
            _signupCubit.validatePhone(_controller.text);

            // Navigator.of(context).pushNamed(
            //   AppRoutes.signup,
            // );
          },
        );
      },
    );
  }

  void _showPhoneError() {
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
          title: S.current.phone_page_error_bottomsheet_title,
          description: S.current.phone_page_error_bottomsheet_description,
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
