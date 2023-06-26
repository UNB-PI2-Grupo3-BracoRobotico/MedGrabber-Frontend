
import 'package:design_system/design_system.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grabber/features/help_center/pages/support_page.dart';
import 'package:grabber/features/shared/bottom_navigation_bar.dart';

import '../../../config/routes/routes.dart';
import '../../../generated/l10n.dart';
import '../../help_center/widgets/real_time.dart';

class HelpCenter extends StatelessWidget {
  const HelpCenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const GrabberBottomNavigationBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const VerticalGap.xl(),
          Padding(
            padding: const EdgeInsets.only(left: 28.0),
            child: Text(
              'Central de Ajuda',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          const SizedBox(height: 60),
          Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/headphone.png',
                  width: 64,
                  height: 64,
                ),
                const SizedBox(height: 10),
                Text(
                  'Como podemos ajudar',
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 7),
                RealTime(
                title: S.current.settings_name_option_title,
                icon: Icons.account_circle_outlined,
                onTap: () => Navigator.push(context, CupertinoPageRoute(builder: (context) => const SupportPage()))
              ),
              ],
            ),
          ),
          const Spacer(),
          const VerticalGap.xxxs(),
        ],
      ),
    );
  }
}
