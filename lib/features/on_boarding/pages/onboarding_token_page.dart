import 'package:flutter/material.dart';
import 'package:grabber/features/on_boarding/pages/widgets/ob_boarding_base_input_page.dart';
import 'package:grabber/generated/l10n.dart';

class OnBoardinTokenPage extends StatelessWidget {
  final TabController tabController;
  const OnBoardinTokenPage({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnBoardingInputBasePage(
      title: "Código da Máquina",
      description: S.current.onboarding_description_tile,
      onPressed: () {
        tabController.animateTo(tabController.index+1);
      },
      buttonLabel: S.current.continue_button_label,
    );
  }
}
