import 'package:flutter/material.dart';
import 'package:grabber/features/shared/base_success_page.dart';

import '../../../../generated/l10n.dart';

class SetupSuccessPage extends StatelessWidget {
  const SetupSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseSuccessPage(
      title: S.current.setup_machine_success_title,
      canPop: false,
    );
  }
}
