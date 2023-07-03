import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:grabber/features/shared/bottom_navigation_bar.dart';
import '../../../config/routes/routes.dart';
import '../../../generated/l10n.dart';
import '../../help_center/widgets/real_time.dart';

class HelpCenter extends StatelessWidget {
  const HelpCenter({
    super.key,
    required this.navigatedViaNavbar,
  });
  final bool navigatedViaNavbar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          navigatedViaNavbar ? const GrabberBottomNavigationBar() : null,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: navigatedViaNavbar
            ? const SizedBox.shrink()
            : DSIconButton(
                icon: const DSIcon(
                  icon: Icons.chevron_left_rounded,
                ),
                onTap: Navigator.of(context).pop,
              ),
        titleSpacing: 0,
        title: Text(
          S.current.help_title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const VerticalGap.xl(),
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
                  title: S.current.help_page_buttom_label,
                  icon: Icons.account_circle_outlined,
                  onTap: () => Navigator.of(context).pushNamed(
                    AppRoutes.support,
                  ),
                ),
                const VerticalGap.xxxl(),
                Container(
                  width: kSpacingXL,
                  height: kSpacingXL,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: kPrimary,
                  ),
                  child: const ClipOval(
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
                  S.current.help_email_contact,
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
