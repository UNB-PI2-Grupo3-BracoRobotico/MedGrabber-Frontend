import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class BaseLoadingPage extends StatelessWidget {
  const BaseLoadingPage({
    super.key,
    this.title = '',
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kSpacingXS,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const DSLoading(
                  size: kIconSizeXXXL,
                ),
                const VerticalGap.nano(),
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
