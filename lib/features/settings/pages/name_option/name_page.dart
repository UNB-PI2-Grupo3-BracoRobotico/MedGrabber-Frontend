import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/core/injection.dart';
import 'package:grabber/features/on_boarding/presentation/blocs/session_manager/session_manager_cubit.dart';
import 'package:grabber/features/settings/pages/name_option/widgets/name_error_footer.dart';
import 'package:grabber/features/settings/widgets/base_option_page.dart';
import 'package:grabber/features/shared/base_error_page.dart';
import 'package:grabber/features/shared/base_loading_page.dart';
import 'package:grabber/features/shared/base_success_page.dart';
import 'package:styled_text/styled_text.dart';

import '../../../../generated/l10n.dart';
import 'blocs/name_page/name_page_cubit.dart';

class NamePage extends StatefulWidget {
  const NamePage({
    super.key,
    required this.storeName,
  });
  final String storeName;

  @override
  State<NamePage> createState() => _NamePageState();
}

class _NamePageState extends State<NamePage> {
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
    return BlocConsumer<NamePageCubit, NamePageState>(
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
            title: S.current.name_loading_page_title,
          ),
          success: () => BaseSuccessPage(
            title: S.current.name_success_page_title,
            canPop: false,
          ),
          error: () => BaseErrorPage(
            title: S.current.name_error_page_title,
            description: S.current.name_error_page_description,
            footer: NameErrorFooter(
              primaryLabel: S.current.name_error_page_primary_button_label,
              secondaryLabel: S.current.name_error_page_secondary_button_label,
              primaryOnTap: () => _updateStoreName(_controller.text),
              secondaryOnTap: _resetUpdateProcess,
            ),
          ),
          initial: () => BaseOptionPage(
            title: S.current.name_page_title,
            content: Column(
              children: [
                DSTextField(
                  initialValue: widget.storeName,
                  controller: _controller,
                  errorText: errorText,
                  label: S.current.name_page_title,
                  onChanged: (val) {
                    final result = _storeNameIsValid(val);
                    if (result) {
                      _activateOrDeactivateButton(val);
                    }
                  },
                  maxLength: 25,
                ),
                const VerticalGap.xxxs(),
                StyledText(
                  text: S.current.name_page_description,
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

  void _updateStoreName(String newStoreName) {
    final userId = getIt.get<SessionManagerCubit>().state.maybeWhen(
          orElse: () => '',
          authenticated: (user) => user.id,
        );
    context.read<NamePageCubit>().updateStoreName(
          newStoreName,
          userId,
        );
  }

  void _resetUpdateProcess() {
    context.read<NamePageCubit>().reset();
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

  String _checkFirstCharIsNum(String storeName) {
    if (storeName.isEmpty) return '';

    if (int.tryParse(storeName[0]) != null) {
      return S.current.name_page_field_error_cannot_start_with_number;
    }

    return '';
  }

  bool _storeNameIsValid(String storeName) {
    final error = _checkFirstCharIsNum(storeName);
    setState(() {
      errorText = error;
      canContinue = false;
    });
    if (error.isEmpty) return true;
    return false;
  }
}
