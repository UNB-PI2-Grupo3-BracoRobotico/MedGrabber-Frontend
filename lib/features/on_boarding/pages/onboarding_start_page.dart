import 'package:flutter/material.dart';
import 'package:grabber/config/routes/routes.dart';
import 'package:grabber/features/on_boarding/pages/widgets/on_boarding_base_page.dart';
import 'package:grabber/generated/l10n.dart';

class OnBoardingStartPage extends StatelessWidget {
  const OnBoardingStartPage({
    Key? key,
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
      ),
      buttonLabel: S.current.start_button_label,
    );
  }
}
