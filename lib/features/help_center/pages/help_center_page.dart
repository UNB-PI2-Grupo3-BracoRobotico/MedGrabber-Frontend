import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:grabber/features/shared/bottom_navigation_bar.dart';
class HelpCenter extends StatelessWidget {
  const HelpCenter({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  return Scaffold(
    bottomNavigationBar: const GrabberBottomNavigationBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kSpacingXS,
          ),
          child: Column(
            children: [
              const VerticalGap.xl(),
              Text(
                'Central de Ajuda',
                style: Theme.of(context).textTheme.titleLarge,
              ),
                const Image(
                image: AssetImage('assets/images/headphone.png'),
                width: 100,
                height: 100,
              ),
              const VerticalGap.xl(),
              Text(
                'description',
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.justify,
              ),
              const Spacer(),
              const VerticalGap.xxxs(),
            ],
          ),
        ),
      ),
    );
  }
}