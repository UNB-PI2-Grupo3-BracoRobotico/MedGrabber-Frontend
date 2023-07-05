import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:grabber/config/routes/routes.dart';
import 'package:grabber/features/orders/domain/entities/order.dart';
import 'package:grabber/generated/l10n.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({
    super.key,
    required this.order,
  });
  final Order order;

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.current.order_id(order.id),
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const VerticalGap.nano(),
          Text(
            S.current.order_status(
              _statusMappedToUI(
                order.status,
              ),
            ),
          ),
          const VerticalGap.nano(),
          Text(
            S.current.order_value(order.totalOrderValue.toString()),
          ),
          const VerticalGap.nano(),
          const Divider(thickness: 1, color: kDarkPrimary),
          Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: () => Navigator.of(context).pushNamed(
                AppRoutes.orderReview,
                arguments: order,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: kSpacingXL,
                  right: kSpacingXL,
                  top: kSpacingNano,
                ),
                child: Text(
                  S.current.order_check_itens_button_label,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: kWhite,
                      ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  String _statusMappedToUI(OrderStatus status) {
    switch (status) {
      case OrderStatus.awaitingPayment:
        return S.current.order_status_awaiting_payment;
      case OrderStatus.finished:
        return S.current.order_status_finished;
      case OrderStatus.processing:
        return S.current.order_status_processing;
      case OrderStatus.readyToGet:
        return S.current.order_status_ready_to_get;
    }
  }
}
