import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/features/settings/pages/mail_option/blocs/mail_page/mail_page_cubit.dart';
import 'package:grabber/features/settings/pages/name_option/widgets/name_error_footer.dart';
import 'package:grabber/features/settings/widgets/base_option_page.dart';
import 'package:grabber/features/shared/base_error_page.dart';
import 'package:grabber/features/shared/base_loading_page.dart';
import 'package:grabber/features/shared/base_success_page.dart';
import 'package:grabber/utils/email_utils.dart';
import 'package:styled_text/styled_text.dart';

import '../../../../generated/l10n.dart';

class MailPage extends StatefulWidget {
  const MailPage({super.key});

  @override
  State<MailPage> createState() => _MailPageState();
}

class _MailPageState extends State<MailPage> {
  late final TextEditingController _controller;
  bool canContinue = false;
  String errorText = '';

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
    return BlocConsumer<MailPageCubit, MailPageState>(
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
            title: S.current.mail_loading_page_title,
          ),
          success: () => BaseSuccessPage(
            title: S.current.mail_success_page_title,
            canPop: false,
          ),
          error: () => BaseErrorPage(
            title: S.current.mail_error_page_title,
            description: S.current.mail_error_page_description,
            footer: NameErrorFooter(
              primaryLabel: S.current.mail_error_page_primary_button_label,
              secondaryLabel: S.current.mail_error_page_secondary_button_label,
              primaryOnTap: () => _updateStoreName(_controller.text),
              secondaryOnTap: _resetUpdateProcess,
            ),
          ),
          initial: () => BaseOptionPage(
            title: S.current.mail_page_title,
            content: Column(
              children: [
                DSTextField(
                  controller: _controller,
                  errorText: errorText,
                  label: S.current.mail_page_title,
                  onChanged: (val) {
                    final result = _isValidEmail(val);
                    if (result) {
                      _activateOrDeactivateButton(val);
                    }
                  },
                ),
                const VerticalGap.xxxs(),
                StyledText(
                  text: S.current.mail_page_description,
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
            onContinueTap: () => _updateStoreName(_controller.text),
          ),
        );
      },
    );
  }

  void _updateStoreName(String newEmail) {
    context.read<MailPageCubit>().updateUserMail(newEmail);
  }

  void _resetUpdateProcess() {
    context.read<MailPageCubit>().reset();
  }

  void _activateOrDeactivateButton(String storeName) {
    if (storeName.isNotEmpty && !canContinue) {
      setState(() {
        canContinue = true;
      });
    } else if (storeName.isEmpty && canContinue) {
      setState(() {
        canContinue = false;
      });
    }
  }

  bool _isValidEmail(String email) {
    bool isValid = EmailValidator.isValidEmail(email);
    setState(() {
      errorText = isValid ? '' : S.current.mail_page_field_error;
      canContinue = false;
    });

    return isValid;
  }
}
