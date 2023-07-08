import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/config/routes/routes.dart';
import 'package:grabber/core/injection.dart';
import 'package:grabber/core/phone_region.dart';
import 'package:grabber/features/on_boarding/presentation/pages/widgets/on_boarding_base_page.dart';
import 'package:grabber/generated/l10n.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:phone_number/phone_number.dart';
import 'package:styled_text/styled_text.dart';

import '../blocs/sign_up_bloc/signup_cubit.dart';

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
  final int max = 15;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      bloc: _signupCubit,
      listener: (context, state) async {
        if (state.phoneIsValid) {
          Navigator.of(context).pushNamedAndRemoveUntil(
            AppRoutes.login,
            (route) => route.settings.name == AppRoutes.onBoardingToken,
          );
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
          onPressed: () async {
            await _savePhoneNumber();
          },
        );
      },
    );
  }

  Future<bool> _phoneNumberIsValid(String phoneNumber) async {
    return await PhoneNumberUtil().validate(
      phoneNumber,
      regionCode: kRegion.code,
    );
  }

  Future<void> _savePhoneNumber() async {
    final rawPhoneNumber = maskFormatter.getUnmaskedText();
    final phoneIsValid = await _phoneNumberIsValid(rawPhoneNumber);
    if (phoneIsValid) {
      await _signupCubit.savePhone(rawPhoneNumber);
      if (!await _signupCubit.createUser()) {
        _showError(
          S.current.default_invalid_signup_title,
          S.current.default_invalid_signup_description,
        );
      }
    } else {
      _showError(
        S.current.phone_page_error_bottomsheet_title,
        S.current.phone_page_error_bottomsheet_description,
      );
    }
  }

  void _showError(String title, String description) {
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
          title: title,
          description: description,
          icon: Icons.error_outline_rounded,
          buttonLabel: S.current.try_again,
          onTap: Navigator.of(context).pop,
        );
      },
    );
  }
}
