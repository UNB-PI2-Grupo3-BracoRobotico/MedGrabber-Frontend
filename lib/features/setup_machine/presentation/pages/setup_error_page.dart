import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:grabber/config/routes/routes.dart';
import 'package:grabber/features/shared/base_error_page.dart';
import 'package:grabber/generated/l10n.dart';

class SetupErrorPage extends StatelessWidget {
  const SetupErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseErrorPage(
      canPop: false,
      title: S.current.setup_machine_error_title,
      description: S.current.setup_machine_error_description,
      footer: SetupErrorFooter(
        tryAgainTap: () => Navigator.of(context).pushNamedAndRemoveUntil(
          AppRoutes.setup1,
          (route) => false,
        ),
        helpTap: _onHelpTap,
      ),
    );
  }

  void _onHelpTap() {
    //TODO(Mauricio): Implement onHelpTapMethod
  }
}

class SetupErrorFooter extends StatelessWidget {
  const SetupErrorFooter({
    super.key,
    required this.tryAgainTap,
    required this.helpTap,
  });

  final VoidCallback tryAgainTap;
  final VoidCallback helpTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DSButton.outlined(
          onPressed: () {},
          label: S.current.help,
        ),
        const VerticalGap.nano(),
        DSButton.primary(
          onPressed: tryAgainTap,
          label: S.current.try_again,
        ),
      ],
    );
  }
}
