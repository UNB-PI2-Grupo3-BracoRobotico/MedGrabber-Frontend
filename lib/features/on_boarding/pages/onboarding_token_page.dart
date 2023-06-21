import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/features/on_boarding/pages/token/bloc/on_boarding_token_cubit.dart';
import 'package:grabber/features/on_boarding/pages/widgets/on_boarding_base_page.dart';
import 'package:grabber/features/shared/base_error_page.dart';
import 'package:grabber/features/shared/base_loading_page.dart';
import 'package:grabber/features/shared/base_success_page.dart';
import 'package:grabber/generated/l10n.dart';
import 'package:styled_text/styled_text.dart';

class OnBoardingTokenPage extends StatefulWidget {
  const OnBoardingTokenPage({super.key});

  @override
  State<OnBoardingTokenPage> createState() => _OnBoardingTokenState();
}

class _OnBoardingTokenState extends State<OnBoardingTokenPage> {
  late final TextEditingController _controller;
  bool canContinue = false;

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
    return BlocConsumer<OnBoardingTokenCubit, OnBoardingTokenState>(
      listener: (_, state) => state.whenOrNull(
        success: () async {
          final navigator = Navigator.of(context);
          await Future.delayed(
            const Duration(milliseconds: 1500),
          );
          navigator.pop();
          return null;
        },
      ),
      builder: (_, state) {
        return state.when(
          loading: () => BaseLoadingPage(
            title: S.current.token_page_loading_title,
          ),
          success: () => BaseSuccessPage(
            title: S.current.token_page_success_title,
            canPop: false,
          ),
          error: () => BaseErrorPage(
            title: S.current.phone_page_error_page_title,
            description: S.current.phone_page_error_page_description,
            // footer: PhoneNumberErrorFooter(
            //   primaryLabel: S.current.try_again,
            //   primaryOnTap: _resetRegisterProcess,
            // ),
          ),
          initial: () => BaseOnBoardingPage(
            title: S.current.token_page_title,
            content: Column(
              children: [
                DSTextField(
                  controller: _controller,
                  label: S.current.phone_page_title,
                  onChanged: (val) {
                    if (val.length < 15 && canContinue == true) {
                      setState(() {
                        canContinue = false;
                      });
                    }
                    if (val.length == 15) {
                      setState(() {
                        canContinue = true;
                      });
                    }
                  },
                  maxLength: 15,
                  keyboardType: TextInputType.number,
                ),
                const VerticalGap.xxxs(),
                StyledText(
                  text: S.current.phone_page_description,
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
            onPressed: () => _registerToken(_controller.text),
          ),
        );
      },
    );
  }

  Future<void> _registerToken(String token) async {
    
  }

  void _resetRegisterProcess() {
    context.read<OnBoardingTokenCubit>().reset();
  }

  
}
