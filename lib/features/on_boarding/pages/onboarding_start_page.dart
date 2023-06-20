import 'package:flutter/material.dart';
import 'package:grabber/config/routes/routes.dart';
import 'package:grabber/features/on_boarding/pages/widgets/on_boarding_base_page.dart';
import 'package:grabber/generated/l10n.dart';

class OnBoardinStartPage extends StatelessWidget {
  final TabController tabController;
  const OnBoardinStartPage({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnBoardingBasePage(
      title: S.current.onboarding_initial_tile,
      description: S.current.onboarding_description_tile,
      onPressed: () {
        tabController.animateTo(tabController.index+1);
      },
      buttonLabel: S.current.continue_button_label,
    );
  }
}
