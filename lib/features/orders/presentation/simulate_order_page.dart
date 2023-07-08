import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/core/injection.dart';
import 'package:grabber/features/inventory/presentation/blocs/inventory/has_item_cubit.dart';
import 'package:grabber/features/orders/presentation/simulate_orders_with_products.dart';
import 'package:grabber/features/shared/base_loading_page.dart';
import 'package:grabber/generated/l10n.dart';

import '../../../config/routes/routes.dart';

class SimulateOrderPage extends StatefulWidget {
  const SimulateOrderPage({super.key});

  @override
  State<SimulateOrderPage> createState() => _SimulateOrderPageState();
}

class _SimulateOrderPageState extends State<SimulateOrderPage> {
  late HasItemCubit _hasItemCubit;

  @override
  void initState() {
    _hasItemCubit = getIt.get();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HasItemCubit, HasItemState>(
      bloc: _hasItemCubit,
      builder: (context, state) {
        return state.when(
          loading: () => const BaseLoadingPage(),
          noItemRegistred: () => Scaffold(
            appBar: AppBar(
              leading: DSIconButton(
                icon: const DSIcon(
                  icon: Icons.chevron_left_rounded,
                ),
                onTap: Navigator.of(context).pop,
              ),
              titleSpacing: 0,
              title: Text(
                S.current.simulate_order_page_title,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            body: SafeArea(
              child: Animate(
                effects: const [FadeEffect()],
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kSpacingXS,
                  ),
                  child: Column(
                    children: [
                      const VerticalGap.xl(),
                      const SizedBox(
                        width: kIconSizeGiant,
                        height: kIconSizeGiant,
                        child: Image(
                          image: AssetImage('assets/images/item_box.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      const VerticalGap.nano(),
                      Text(
                        S.current.inventory_page_no_item_registered_description,
                        textAlign: TextAlign.center,
                      ),
                      const VerticalGap.nano(),
                      DSButton.primary(
                        onPressed: () => Navigator.of(context).pushNamed(
                          AppRoutes.addItem,
                        ),
                        label: S.current
                            .inventory_page_no_item_registered_button_labek,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          hasItemRegisters: (products) => SimulateOrderWithProducts(
            productsAvailable: products,
          ),
          error: () => Scaffold(
            appBar: AppBar(
              leading: DSIconButton(
                icon: const DSIcon(
                  icon: Icons.chevron_left_rounded,
                ),
                onTap: Navigator.of(context).pop,
              ),
              titleSpacing: 0,
              title: Text(
                S.current.simulate_order_page_title,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            body: SafeArea(
              child: Animate(
                effects: const [FadeEffect()],
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kSpacingXS,
                  ),
                  child: Column(
                    children: [
                      const Spacer(),
                      const DSIcon(
                        icon: Icons.error_outline_rounded,
                        size: kIconSizeXL,
                      ),
                      const VerticalGap.xxxs(),
                      Text(
                        S.current.something_went_wrong,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const VerticalGap.nano(),
                      Text(
                        S.current.simulate_order_page_error_description,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const Spacer(),
                      DSButton.primary(
                        onPressed: () {},
                        label: S.current.try_again,
                      ),
                      const VerticalGap.xxxs(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
