import 'package:flutter/material.dart';
import 'package:grabber/config/routes/routes.dart';
import 'package:grabber/features/setup_machine/presentation/pages/widgets/base_step_page.dart';

import '../../../../generated/l10n.dart';

class Step2 extends StatelessWidget {
  const Step2({super.key});

  @override
  Widget build(BuildContext context) {
    return StepBasePage(
      title: "Segunda página do fluxo de configuração",
      description: "Segunda descrição de configuração.",
      onPressed: () => Navigator.of(context).pushNamed(
        AppRoutes.setupFinal,
      ),
      buttonLabel: S.current.continue_button_label,
    );
  }
}
