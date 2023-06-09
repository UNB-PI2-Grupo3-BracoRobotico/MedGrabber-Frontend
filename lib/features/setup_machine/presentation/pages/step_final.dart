import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/features/setup_machine/presentation/blocs/setup_status/setup_status_bloc.dart';
import 'package:grabber/features/setup_machine/presentation/pages/setup_error_page.dart';
import 'package:grabber/features/setup_machine/presentation/pages/setup_success_page.dart';
import 'package:grabber/features/setup_machine/presentation/pages/widgets/base_step_page.dart';
import 'package:grabber/features/shared/base_loading_page.dart';

import '../../../../config/routes/routes.dart';
import '../../../../generated/l10n.dart';

class StepFinal extends StatelessWidget {
  const StepFinal({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SetupStatusBloc, SetupStatusState>(
      listener: (context, state) {
        state.whenOrNull(
          paired: () async {
            final navigator = Navigator.of(context);
            await Future.delayed(
              const Duration(
                milliseconds: 1500,
              ),
            );
            navigator.pushNamedAndRemoveUntil(
              AppRoutes.home,
              (route) => false,
            );
          },
        );
      },
      builder: (context, state) {
        return state.when(
          initial: () => StepBasePage(
            title: "Última página do fluxo de configuração",
            description: "Qualquer texto aqui.",
            onPressed: () => context.read<SetupStatusBloc>().add(
                  const SetupStatusEvent.pairMachine(),
                ),
            buttonLabel: S.current.continue_button_label,
          ),
          loading: () => BaseLoadingPage(
            title: S.current.setup_machine_loading_title,
          ),
          paired: () => const SetupSuccessPage(),
          error: () => const SetupErrorPage(),
        );
      },
    );
  }
}
