import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/features/dashboard/presentation/widgets/order_history_cards.dart';
import 'package:grabber/features/orders/presentation/blocs/get_orders/get_orders_cubit.dart';
import 'package:grabber/features/orders/presentation/widgets/order_card.dart';
import 'package:grabber/generated/l10n.dart';

class HistorySection extends StatefulWidget {
  const HistorySection({Key? key});

  @override
  _HistorySectionState createState() => _HistorySectionState();
}

class _HistorySectionState extends State<HistorySection> {
  bool showAllItems = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetOrdersCubit, GetOrdersState>(
      builder: (context, state) {
        return state.when(
          loading: SizedBox.shrink,
          error: () => Animate(
            effects: const [FadeEffect()],
            child: Column(
              children: [
                Text(
                  S.current.history_title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const VerticalGap.nano(),
                Text(
                  S.current.home_order_section_error_description,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const VerticalGap.nano(),
              ],
            ),
          ),
          loaded: (ordersInProgress, orders) {
            final displayedOrders = showAllItems ? orders : orders.take(2).toList();

            return Animate(
              effects: const [FadeEffect()],
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      S.current.history_title,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  const VerticalGap.xxs(),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (_, index) => HistoryCard(
                      order: displayedOrders.elementAt(index),
                    ),
                    separatorBuilder: (_, __) => const VerticalGap.xxxs(),
                    itemCount: displayedOrders.length,
                  ),
                  const VerticalGap.nano(),
                  if (!showAllItems)
                    DSButton.outlined(
                      onPressed: () {
                        setState(() {
                          showAllItems = true;
                        });
                      },
                      label: S.current.history_loud_orders,
                    ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}