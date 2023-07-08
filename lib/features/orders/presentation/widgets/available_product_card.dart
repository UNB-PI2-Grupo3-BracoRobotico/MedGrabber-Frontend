import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:grabber/features/inventory/domain/entities/product.dart';

import 'available_product_card_button.dart';

class AvailableProductCard extends StatelessWidget {
  const AvailableProductCard({
    super.key,
    required this.onAddItemTap,
    required this.onRemoveItemTap,
    required this.product,
    required this.hasProductOnCart,
  });

  final VoidCallback onAddItemTap;
  final VoidCallback onRemoveItemTap;
  final Product product;
  final bool hasProductOnCart;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: kSpacingQuarck,
      ),
      padding: const EdgeInsets.all(kSpacingNano),
      decoration: BoxDecoration(
        color: kWhite,
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
          const HorizontalGap.nano(),
          AvailableProductCardButton(
            onTap: onRemoveItemTap,
            icon: Icons.arrow_downward_rounded,
            isDisabled: hasProductOnCart,
          ),
          const HorizontalGap.nano(),
          AvailableProductCardButton(
            onTap: onAddItemTap,
            icon: Icons.arrow_upward_rounded,
            isDisabled: product.amount < 1,
          ),
        ],
      ),
    );
  }
}
