import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/config/routes/routes.dart';
import 'package:grabber/core/injection.dart';
import 'package:grabber/features/dashboard/presentation/widgets/history_request_section.dart';
import 'package:grabber/features/home/presentation/widgets/low_storage_items_section.dart';
import 'package:grabber/features/inventory/presentation/blocs/inventory/has_item_cubit.dart';
import 'package:grabber/features/inventory/presentation/blocs/positions_available/positions_available_cubit.dart';
import 'package:grabber/features/orders/domain/entities/order.dart';
import 'package:grabber/features/orders/presentation/blocs/get_orders/get_orders_cubit.dart';
import 'package:grabber/features/orders/presentation/order_section.dart';
import 'package:grabber/features/shared/bottom_navigation_bar.dart';
import 'package:grabber/generated/l10n.dart';

import '../../../inventory/domain/entities/product.dart';
import '../../../shared/information_card.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  late PositionsAvailableCubit _positionsAvailableCubit;
  late HasItemCubit _hasItemCubit;

  @override
  void initState() {
    super.initState();
    _positionsAvailableCubit = PositionsAvailableCubit();
    _hasItemCubit = getIt.get<HasItemCubit>();
    _positionsAvailableCubit.checkAvailablePositions();
    _hasItemCubit.hasItemRegistered();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const GrabberBottomNavigationBar(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 0,
         title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kSpacingXS), // Adjust the value as needed
        child: Text(
          S.current.dashboard_title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      ),
      
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kSpacingXS),
          child: ListView(
            children: [
            Column(
            children: [
              const VerticalGap.sm(),
              //TODO: Add Reports Page and Logic
              DSButton.primary(
                onPressed: () {},
                label: S.current.dashboard_section_reports_button_label,
              ),
              const VerticalGap.sm(),
              MultiBlocProvider(
                providers: [
                  BlocProvider.value(
                    value: _hasItemCubit,
                  ),
                  BlocProvider.value(
                    value: _positionsAvailableCubit,
                  ),
                ],
                child: const _FirstRowInformationCards(),
              ),
              const VerticalGap.sm(),
                BlocProvider(
                create: (context) => GetOrdersCubit()..getOrders(),
                child: const HistorySection(),
              ),
            ],
          ),
            ],
        ),
      ),
      )
    );
  }
}


class _FirstRowInformationCards extends StatefulWidget {
  const _FirstRowInformationCards();

  @override
  State<_FirstRowInformationCards> createState() =>
      _FirstRowInformationCardsState();
}

class _FirstRowInformationCardsState extends State<_FirstRowInformationCards> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kSpacingXS,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: BlocBuilder<HasItemCubit, HasItemState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      loading: () => const InformationCard(
                        message: '',
                        informationValue: 0,
                        isLoading: true,
                      ),
                      error: () => InformationCard(
                        message: S.current.informational_card_error_message,
                        onTap: () => context.read<HasItemCubit>().hasItemRegistered(),
                      ),
                      orElse: () => InformationCard(
                        message: S.current.dashboard_total_price,
                        informationValue: state.maybeWhen(
                          orElse: () => 0,
                          hasItemRegisters: _getTotalPrice
                        ),
                      ),
                    );
                  },
                ),
              ),
              const HorizontalGap.xxxs(),
              Expanded(
                child: BlocBuilder<HasItemCubit, HasItemState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      loading: () => const InformationCard(
                        message: '',
                        informationValue: 0,
                        isLoading: true,
                      ),
                      error: () => InformationCard(
                        message: S.current.informational_card_error_message,
                        onTap: () => context.read<HasItemCubit>().hasItemRegistered(),
                      ),
                      orElse: () => InformationCard(
                        message: S.current.dashboard_total_items,
                        informationValue: state.maybeWhen(
                          orElse: () => 0,
                          hasItemRegisters: (products) => _getLowAmountItens(products).length,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          const VerticalGap.xxxs(),
             Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: BlocBuilder<HasItemCubit, HasItemState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      loading: () => const InformationCard(
                        message: '',
                        informationValue: 0,
                        isLoading: true,
                      ),
                      error: () => InformationCard(
                        message: S.current.informational_card_error_message,
                        onTap: () => context.read<HasItemCubit>().hasItemRegistered(),
                      ),
                      orElse: () => InformationCard(
                        message: S.current.dashboard_cheapest_item,
                        informationValue: state.maybeWhen(
                          orElse: () => 0,
                          hasItemRegisters: _getLowestPrice,
                        ),
                      ),
                    );
                  },
                ),
              ),
              const HorizontalGap.xxxs(),
              Expanded(
                child: BlocBuilder<HasItemCubit, HasItemState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      loading: () => const InformationCard(
                        message: '',
                        informationValue: 0,
                        isLoading: true,
                      ),
                      error: () => InformationCard(
                        message: S.current.informational_card_error_message,
                        onTap: () => context.read<HasItemCubit>().hasItemRegistered(),
                      ),
                      orElse: () => InformationCard(
                        message: S.current.dashboard_highest_item,
                        informationValue: state.maybeWhen(
                          orElse: () => 0,
                          hasItemRegisters: _getHighestPrice,

                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  List<Product> _getLowAmountItens(List<Product> products) {
    List<Product> productsEnding = [];
    for (final product in products) {
  
        productsEnding.add(product);
    
    }
    return productsEnding;
  }

int _getTotalPrice(List<Product> products) {
  double totalPrice = 0;
  for (final product in products) {
    totalPrice += product.price;
  }
  return totalPrice.round(); // Round the total price to the nearest integer
}

  int _getHighestPrice(List<Product> products) {
    double highestPrice = 0;

    for (final product in products) {
      if (product.price > highestPrice) {
        highestPrice = product.price;
      }
    }

    return highestPrice.round();
  }

  int _getLowestPrice(List<Product> products) {
  double lowestPrice = double.infinity;

  for (final product in products) {
    if (product.price < lowestPrice) {
      lowestPrice = product.price;
    }
  }

  return lowestPrice.round();
}
}