import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:grabber/features/orders/domain/entities/dummy_product.dart';

class SelectedProductCard extends StatelessWidget {
  const SelectedProductCard({
    super.key,
    required this.product,
  });

  final DummyProduct product;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: kSpacingQuarck,
      ),
      padding: const EdgeInsets.all(kSpacingNano),
      decoration: BoxDecoration(
        color: kPrimary,
        borderRadius: BorderRadius.circular(
          kSpacingNano,
        ),
        boxShadow: [
          BoxShadow(
            color: kBlack.withOpacity(0.25),
            blurRadius: 4,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: kSpacingXS,
            width: kSpacingXS,
            padding: const EdgeInsets.all(
              kSpacingNano,
            ),
            decoration: BoxDecoration(
              color: kWhite,
              border: Border.all(
                color: kDarkGrey,
              ),
              shape: BoxShape.circle,
            ),
            child: const Image(
              image: AssetImage('assets/images/item_box.png'),
              fit: BoxFit.cover,
            ),
          ),
          const HorizontalGap.nano(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const VerticalGap.quarck(),
                Text(
                  product.amount.toString(),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
