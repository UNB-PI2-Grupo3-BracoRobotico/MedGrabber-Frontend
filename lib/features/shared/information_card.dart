
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';


class InformationCard extends StatelessWidget {
  const InformationCard({
    super.key,
    required this.message,
    this.isLoading = false,
    this.informationValue = -1,
    this.onTap,
  });

  final String message;
  final bool isLoading;
  final int informationValue;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () {},
      splashColor: kDarkGrey,
      borderRadius: BorderRadius.circular(
        kSpacingNano,
      ),
      child: Ink(
        padding: const EdgeInsets.all(
          kSpacingXXXS,
        ),
        height: 112,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            kSpacingNano,
          ),
          color: kLightGrey,
          boxShadow: [
            BoxShadow(
              color: kBlack.withOpacity(0.25),
              blurRadius: 4,
            ),
          ],
        ),
        child: isLoading
            ? const DSLoading()
            : Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    message,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                  const VerticalGap.nano(),
                  if (informationValue != -1)
                    Text(
                      informationValue.toString(),
                      style: Theme.of(context).textTheme.titleLarge,
                      textAlign: TextAlign.center,
                    ),
                ],
              ),
      ),
    );
  }
}


