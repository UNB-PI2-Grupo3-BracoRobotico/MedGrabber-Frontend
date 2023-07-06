import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:grabber/config/routes/routes.dart';

import '../../../../generated/l10n.dart';
import '../../../inventory/domain/entities/product.dart';

class LowStorageItemsSection extends StatelessWidget {
  const LowStorageItemsSection({
    super.key,
    required this.products,
  });

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return products.isEmpty
        ? const SizedBox.shrink()
        : Animate(
            effects: const [FadeEffect()],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.current.home_low_storage_items_section_title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const VerticalGap.xxs(),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (_, index) => _LowStorageItemCard(
                    product: products.elementAt(
                      index,
                    ),
                  ),
                  separatorBuilder: (_, __) => const VerticalGap.xxs(),
                  itemCount: products.length,
                ),
                const VerticalGap.xl(),
              ],
            ),
          );
  }
}

class _LowStorageItemCard extends StatelessWidget {
  const _LowStorageItemCard({
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: kLightGrey,
      borderRadius: BorderRadius.circular(
        kSpacingNano,
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
              decoration: const BoxDecoration(
                color: kWhite,
                shape: BoxShape.circle,
              ),
              child: const Image(
                image: AssetImage('assets/images/item_box.png'),
                fit: BoxFit.cover,
              ),
            ),
            const HorizontalGap.nano(),
            Expanded(
              child: Text(
                product.name,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
              ),
            ),
            const HorizontalGap.nano(),
            Text(
              product.amount.toString(),
            ),
          ],
        ),
      ),
    );
  }
}
