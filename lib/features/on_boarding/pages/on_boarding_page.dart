import 'package:flutter/material.dart';
import 'package:design_system/design_system.dart';
import 'package:grabber/features/on_boarding/pages/onboarding_start_page.dart';
import 'package:grabber/features/on_boarding/pages/onboarding_token_page.dart';
import 'package:grabber/features/on_boarding/pages/widgets/on_boarding_base_page.dart';

import '../../../../generated/l10n.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  static const List<Tab> tabs = <Tab>[
    Tab(text: 'OnBoardinStartPage'),
    Tab(text: 'OnBoardinTokenPage'),
    Tab(text: 'OnBoardinStoreNamePage'),
    Tab(text: 'OnBoardinPhonePage'),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabs.length,
        child: Builder(builder: (BuildContext context) {
          final TabController tabController = DefaultTabController.of(context)!;
          tabController.addListener(() {
            if (!tabController.indexIsChanging) {}
          });
          return Scaffold(
            body: TabBarView(children: [
              OnBoardinStartPage(tabController: tabController),
              OnBoardinTokenPage(tabController: tabController),
            ]),
          );
        }));
  }
}
