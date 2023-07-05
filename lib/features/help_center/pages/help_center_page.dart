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
      appBar: navigatedViaNavbar
          ? null
          : AppBar(
              automaticallyImplyLeading: false,
              leading: DSIconButton(
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kSpacingXS,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  S.current.help_title,
                  style: Theme.of(context).textTheme.headlineLarge,
                  textAlign: TextAlign.start,
                ),
              ),
              const VerticalGap.xl(),
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
              ChatTile(
                title: S.current.help_page_buttom_label,
                icon: Icons.headphones,
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
                child: const DSIcon(
                  icon: Icons.email,
                  size: kIconSizeSM,
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
      ),
    );
  }
}
