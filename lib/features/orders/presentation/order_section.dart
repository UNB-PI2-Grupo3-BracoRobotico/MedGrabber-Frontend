import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/features/home/presentation/widgets/informational_card.dart';
import 'package:grabber/features/orders/presentation/blocs/get_orders/get_orders_cubit.dart';
import 'package:grabber/features/orders/presentation/widgets/order_card.dart';
import 'package:grabber/generated/l10n.dart';

class OrderSection extends StatelessWidget {
  const OrderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetOrdersCubit, GetOrdersState>(
      builder: (context, state) {
        return state.when(
          loading: SizedBox.shrink,
          error: () => Column(
            children: [
              Text(
                S.current.home_order_section_title,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const VerticalGap.nano(),
              Text(
                S.current.home_order_section_error_description,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const VerticalGap.nano(),
              DSButton.primary(
                onPressed: () => context.read<GetOrdersCubit>().getOrders(),
                label: S.current.home_order_section_error_button_label,
              ),
            ],
          ),
          loaded: (ordersInProgress, orders) => Animate(
            effects: const [FadeEffect()],
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    S.current.home_order_section_title,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                const VerticalGap.xxs(),
                Row(
                  children: [
                    Expanded(
                      child: InformationCard(
                        message: S.current
                            .home_order_section_loaded_orders_in_progress_title,
                        informationValue: ordersInProgress.length,
                      ),
                    ),
                    const HorizontalGap.xxs(),
                    Expanded(
                      child: InformationCard(
                        message: S.current
                            .home_order_section_loaded_orders_finished_title,
                        informationValue:
                            orders.length - ordersInProgress.length,
                      ),
                    ),
                  ],
                ),
                const VerticalGap.xxs(),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (_, index) => OrderCard(
                    order: ordersInProgress.elementAt(index),
                  ),
                  separatorBuilder: (_, __) => const VerticalGap.xxxs(),
                  itemCount: ordersInProgress.length,
                ),
                const VerticalGap.nano(),
                DSButton.outlined(
                  //TODO(Mauricio): Implement method
                  onPressed: () {},
                  label: S.current.home_order_simulate_order_button_label,
                ),
                const VerticalGap.quarck(),
                DSButton.primary(
                  //TODO(Mauricio): Implement method
                  onPressed: () {},
                  label: S.current.home_order_section_loaded_button_label,
                ),
                const VerticalGap.xxxs(),
              ],
            ),
          ),
        );
      },
    );
  }
}
