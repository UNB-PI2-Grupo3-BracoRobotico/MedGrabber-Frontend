import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class BaseSuccessPage extends StatelessWidget {
  const BaseSuccessPage({
    super.key,
    this.canPop = true,
    required this.title,
  });

  final bool canPop;
  final String title;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => canPop,
      child: Scaffold(
        appBar: canPop ? AppBar() : null,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const DSIcon(
                  icon: Icons.check_circle_outline_rounded,
                  size: kIconSizeXXXL,
                ),
                const VerticalGap.xxs(),
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
