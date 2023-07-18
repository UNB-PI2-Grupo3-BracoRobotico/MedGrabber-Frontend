part of '../single_order_page.dart';

class OrderProductCard extends StatelessWidget {
  const OrderProductCard({
    super.key,
    required this.product,
  });
  final DummyProduct product;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.all(kSpacingNano),
      decoration: BoxDecoration(
        color: kPrimary,
        borderRadius: BorderRadius.circular(
          kSpacingXXXS,
        ),
        boxShadow: [
          BoxShadow(
            color: kBlack.withOpacity(0.25),
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.name,
            style: Theme.of(context).textTheme.bodyLarge,
            overflow: TextOverflow.ellipsis,
          ),
          const VerticalGap.nano(),
          Text(
            S.current.order_product_card_single_product_value(
              product.price.toString(),
            ),
          ),
          const VerticalGap.nano(),
          Text(
            S.current.order_product_amount_bought(
              product.amount.toString(),
            ),
          ),
          const VerticalGap.nano(),
          Text(
            S.current.order_product_card_total_value(
              (product.price * product.amount).toString(),
            ),
          )
        ],
      ),
    );
  }
}
