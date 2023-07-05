import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/config/routes/routes.dart';
import 'package:grabber/core/injection.dart';
import 'package:grabber/features/dashboard/presentation/widgets/dashboard_information.dart';
import 'package:grabber/features/home/presentation/widgets/informational_card.dart';
import 'package:grabber/features/home/presentation/widgets/low_storage_items_section.dart';
import 'package:grabber/features/inventory/presentation/blocs/inventory/has_item_cubit.dart';
import 'package:grabber/features/inventory/presentation/blocs/positions_available/positions_available_cubit.dart';
import 'package:grabber/features/orders/presentation/blocs/get_orders/get_orders_cubit.dart';
import 'package:grabber/features/orders/presentation/order_section.dart';
import 'package:grabber/features/shared/bottom_navigation_bar.dart';
import 'package:grabber/generated/l10n.dart';

import '../../../inventory/domain/entities/product.dart';

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
        leading: DSIconButton(
          icon: const DSIcon(
            icon: Icons.chevron_left_rounded,
          ),
          onTap: Navigator.of(context).pop,
        ),
        titleSpacing: 0,
        title: Text(
          S.current.dashboard_title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kSpacingXS),
          child: Column(
            children: [
              const VerticalGap.sm(),
              DSButton.primary(
                onPressed: () {},
                label: S.current.dashboard_section_reports_button_label,
              ),
              const VerticalGap.xxl(),
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
            ],
          ),
        ),
      ),
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
                child: BlocBuilder<PositionsAvailableCubit, PositionsAvailableState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      loading: () => const DashboardCard(
                        message: '',
                        informationValue: 0,
                        isLoading: true,
                      ),
                      error: () => DashboardCard(
                        message: S.current.informational_card_error_message,
                        onTap: () => context.read<PositionsAvailableCubit>().checkAvailablePositions(),
                      ),
                      orElse: () => DashboardCard(
                        message: S.current.home_available_positions_card,
                        informationValue: state.maybeWhen(
                          orElse: () => 0,
                          availablePositions: (positionOptions) => positionOptions.length,
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
                      loading: () => const DashboardCard(
                        message: '',
                        informationValue: 0,
                        isLoading: true,
                      ),
                      error: () => DashboardCard(
                        message: S.current.informational_card_error_message,
                        onTap: () => context.read<HasItemCubit>().hasItemRegistered(),
                      ),
                      orElse: () => DashboardCard(
                        message: S.current.home_available_itens_card,
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
                child: BlocBuilder<PositionsAvailableCubit, PositionsAvailableState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      loading: () => const DashboardCard(
                        message: '',
                        informationValue: 0,
                        isLoading: true,
                      ),
                      error: () => DashboardCard(
                        message: S.current.informational_card_error_message,
                        onTap: () => context.read<PositionsAvailableCubit>().checkAvailablePositions(),
                      ),
                      orElse: () => DashboardCard(
                        message: S.current.home_available_positions_card,
                        informationValue: state.maybeWhen(
                          orElse: () => 0,
                          availablePositions: (positionOptions) => positionOptions.length,
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
                      loading: () => const DashboardCard(
                        message: '',
                        informationValue: 0,
                        isLoading: true,
                      ),
                      error: () => DashboardCard(
                        message: S.current.informational_card_error_message,
                        onTap: () => context.read<HasItemCubit>().hasItemRegistered(),
                      ),
                      orElse: () => DashboardCard(
                        message: S.current.home_available_itens_card,
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
        ],
      ),
    );
  }

  List<Product> _getLowAmountItens(List<Product> products) {
    List<Product> productsEnding = [];
    for (final product in products) {
      if (product.amount < 2) {
        productsEnding.add(product);
      }
    }
    return productsEnding;
  }
}