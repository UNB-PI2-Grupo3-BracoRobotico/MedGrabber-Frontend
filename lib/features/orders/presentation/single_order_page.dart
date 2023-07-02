import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:grabber/features/orders/domain/entities/order.dart';

import '../../../generated/l10n.dart';
import '../../inventory/domain/entities/product.dart';

part 'widgets/order_overview_card.dart';
part 'widgets/order_product_card.dart';

class SingleOrderPage extends StatelessWidget {
  const SingleOrderPage({
    super.key,
    required this.order,
  });

  final Order order;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: DSIconButton(
          icon: const DSIcon(
            icon: Icons.chevron_left_rounded,
          ),
          onTap: Navigator.of(context).pop,
        ),
        titleSpacing: 0,
        title: Text(
          S.current.order_page_title(order.id),
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
              const VerticalGap.nano(),
              OrderOverviewCard(
                status: order.status,
                total: order.totalOrderValue,
              ),
              const VerticalGap.xs(),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (_, index) => OrderProductCard(
                    product: order.products.elementAt(index),
                  ),
                  separatorBuilder: (_, __) => const VerticalGap.xs(),
                  itemCount: order.products.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
