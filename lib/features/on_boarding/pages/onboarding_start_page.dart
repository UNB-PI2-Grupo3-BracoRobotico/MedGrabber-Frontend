import 'package:flutter/material.dart';
import 'package:grabber/config/routes/routes.dart';
import 'package:grabber/features/on_boarding/pages/widgets/on_boarding_base_page.dart';
import 'package:grabber/generated/l10n.dart';

class OnBoardingStartPage extends StatelessWidget {
  // final TabController tabController;
  const OnBoardingStartPage({
    Key? key,
    // required this.tabController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseOnBoardingPage(
      title: S.current.on_boarding_initial_title,
      content: Column(
        children: [
          Text(
            S.current.on_boarding_description_title,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.justify,
          ),
        ],
      ),
      onPressed: () => Navigator.of(context).pushNamed(
        AppRoutes.onBoardingToken,
      ),// tabController.animateTo(tabController.index + 1);
      buttonLabel: S.current.start_button_label,
    );
  }
}
