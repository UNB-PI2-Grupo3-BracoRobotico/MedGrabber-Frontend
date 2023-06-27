
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
        AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: kSpacingXXS),
            child: Text(
              S.current.help_title,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
        ),
          const VerticalGap.sm(),
          Center( 
            child: Column(
              children: [
                Image.asset(
                  'assets/images/headphone.png',
                  width: kSpacingXL,
                  height: kSpacingXL,
                ),
                const VerticalGap.nano(),
                Text(
                  S.current.help_page_help_message, 
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.justify,
                ),
                const VerticalGap.nano(),
                RealTime(
                title:  S.current.help_page_buttom_label,
                icon: Icons.account_circle_outlined,
                onTap: () => Navigator.of(context).pushNamed(
                  AppRoutes.support)
                ),
                const VerticalGap.xxxl(),
                Container(
                width: kSpacingXL,
                height: kSpacingXL,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimary, 
                ),
                child: ClipOval(
                  child: DSIcon(
                    icon: Icons.email,
                    size: kIconSizeSM,
                  ),
                ),
              ),
                const VerticalGap.nano(),
                Text(
                  S.current.help_page_send_email,
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.justify,
                ),
                const VerticalGap.nano(),
                Text(
                  S.current.help__email_contact,
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
