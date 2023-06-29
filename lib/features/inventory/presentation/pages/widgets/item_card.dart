import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:grabber/config/routes/routes.dart';
import 'package:grabber/features/inventory/domain/entities/product.dart';
import 'package:grabber/features/inventory/presentation/pages/widgets/card_button_options.dart';
import 'package:grabber/generated/l10n.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.product,
    required this.onDeleteTap,
  });

  final Product product;
  final VoidCallback onDeleteTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: kLightGrey,
      borderRadius: BorderRadius.circular(
        kSpacingXXXS,
      ),
      onTap: () => Navigator.of(context).pushNamed(
        AppRoutes.editItem,
        arguments: product,
      ),
      child: Ink(
        padding: const EdgeInsets.all(
          kSpacingXXXS,
        ),
        decoration: BoxDecoration(
          color: kPrimary,
          borderRadius: BorderRadius.circular(
            kSpacingXXXS,
          ),
          boxShadow: [
            BoxShadow(
              color: kBlack.withOpacity(0.2),
              blurRadius: 4,
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(
                kSpacingNano,
              ),
              decoration: BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.circular(
                  kSpacingGiant,
                ),
              ),
              child: const SizedBox(
                width: kSpacingXXS,
                height: kSpacingXXS,
                child: Image(
                  image: AssetImage('assets/images/item_box.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const HorizontalGap.nano(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    product.name,
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const VerticalGap.nano(),
                  Text(
                    S.current.inventory_amount_card_information(
                      product.amount,
                    ),
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
            ),
            const HorizontalGap.nano(),
            CardButtonOption(
              onTap: () => Navigator.of(context).pushNamed(
                AppRoutes.editItem,
                arguments: product,
              ),
              icon: Icons.edit_outlined,
            ),
            const HorizontalGap.nano(),
            CardButtonOption(
              onTap: onDeleteTap,
              icon: Icons.delete_outline_rounded,
            ),
          ],
        ),
      ),
    );
  }
}
