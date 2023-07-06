part of '../single_order_page.dart';

class OrderOverviewCard extends StatelessWidget {
  const OrderOverviewCard({
    super.key,
    required this.status,
    required this.total,
  });
  final OrderStatus status;
  final double total;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.all(
        kSpacingXXXS,
      ),
      decoration: BoxDecoration(
        color: kLightGrey,
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
        children: [
          Text(
            S.current.order_value(total.toString()),
          ),
          const VerticalGap.nano(),
          Text(
            S.current.order_status(
              _statusMappedToUI(
                status,
              ),
            ),
          ),
          const VerticalGap.nano(),
          // ListView(
          //   children: [],
          // ),
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
