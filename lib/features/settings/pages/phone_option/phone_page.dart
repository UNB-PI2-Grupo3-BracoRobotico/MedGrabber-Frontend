import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/core/phone_region.dart';
import 'package:grabber/features/settings/pages/phone_option/blocs/update_phone_cubit/update_phone_cubit.dart';
import 'package:grabber/features/settings/pages/phone_option/widgets/phone_number_error_footer.dart';
import 'package:grabber/features/settings/widgets/base_option_page.dart';
import 'package:grabber/features/shared/base_error_page.dart';
import 'package:grabber/features/shared/base_loading_page.dart';
import 'package:grabber/features/shared/base_success_page.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:phone_number/phone_number.dart';
import 'package:styled_text/styled_text.dart';

import '../../../../core/injection.dart';
import '../../../../generated/l10n.dart';
import '../../../on_boarding/presentation/blocs/session_manager/session_manager_cubit.dart';

class PhonePage extends StatefulWidget {
  const PhonePage({
    super.key,
    required this.phoneNumber,
  });
  final String phoneNumber;

  @override
  State<PhonePage> createState() => _PhonePageState();
}

class _PhonePageState extends State<PhonePage> {
  late final TextEditingController _controller;
  final MaskTextInputFormatter maskFormatter = MaskTextInputFormatter(
    mask: '(##) #####-####',
  );
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
    return BlocConsumer<UpdatePhoneCubit, UpdatePhoneState>(
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
            title: S.current.phone_page_loading_title,
          ),
          success: () => BaseSuccessPage(
            title: S.current.phone_page_success_title,
            canPop: false,
          ),
          error: () => BaseErrorPage(
            title: S.current.phone_page_error_page_title,
            description: S.current.phone_page_error_page_description,
            footer: PhoneNumberErrorFooter(
              primaryLabel: S.current.try_again,
              primaryOnTap: _resetUpdateProcess,
            ),
          ),
          initial: () => BaseOptionPage(
            title: S.current.phone_page_title,
            content: Column(
              children: [
                DSTextField(
                  initialValue: widget.phoneNumber,
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
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    maskFormatter,
                  ],
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
            onContinueTap: _updatePhoneNumber,
          ),
        );
      },
    );
  }

  Future<void> _updatePhoneNumber() async {
    final rawPhoneNumber = maskFormatter.getUnmaskedText();
    final updatePhoneCubit = context.read<UpdatePhoneCubit>();
    final phoneIsValid = await _phoneNumberIsValid(rawPhoneNumber);
    if (phoneIsValid) {
      final userId = getIt.get<SessionManagerCubit>().state.maybeWhen(
            orElse: () => '',
            authenticated: (user) => user.id,
          );
      updatePhoneCubit.updatePhoneNumber(rawPhoneNumber, userId);
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
            title: S.current.phone_page_error_bottomsheet_title,
            description: S.current.phone_page_error_bottomsheet_description,
            icon: Icons.error_outline_rounded,
            buttonLabel: S.current.got_it,
            onTap: Navigator.of(context).pop,
          );
        },
      );
    }
  }

  void _resetUpdateProcess() {
    context.read<UpdatePhoneCubit>().reset();
  }

  Future<bool> _phoneNumberIsValid(String phoneNumber) async {
    return await PhoneNumberUtil().validate(
      phoneNumber,
      regionCode: kRegion.code,
    );
  }
}
