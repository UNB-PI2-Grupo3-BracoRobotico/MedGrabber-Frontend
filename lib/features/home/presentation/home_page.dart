import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/config/routes/routes.dart';
import 'package:grabber/core/injection.dart';
import 'package:grabber/features/home/presentation/widgets/low_storage_items_section.dart';
import 'package:grabber/features/inventory/presentation/blocs/inventory/has_item_cubit.dart';
import 'package:grabber/features/inventory/presentation/blocs/positions_available/positions_available_cubit.dart';
import 'package:grabber/features/on_boarding/presentation/blocs/session_manager/session_manager_cubit.dart';
import 'package:grabber/features/orders/presentation/blocs/get_orders/get_orders_cubit.dart';
import 'package:grabber/features/orders/presentation/order_section.dart';
import 'package:grabber/features/shared/base_loading_page.dart';
import 'package:grabber/features/shared/bottom_navigation_bar.dart';
import 'package:grabber/generated/l10n.dart';

import '../../inventory/domain/entities/product.dart';
import '../../shared/information_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PositionsAvailableCubit _positionsAvailableCubit;
  late HasItemCubit _hasItemCubit;

  @override
  void initState() {
    super.initState();
    _positionsAvailableCubit = PositionsAvailableCubit(
      getAvailablePositions: getIt.get(),
    );
    _hasItemCubit = getIt.get();
    _positionsAvailableCubit.checkAvailablePositions();
    _hasItemCubit.hasItemRegistered();
  }

  @override
  void dispose() {
    _positionsAvailableCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SessionManagerCubit, SessionManagerState>(
      bloc: getIt.get(),
      builder: (context, state) {
        return state.maybeWhen(
          orElse: BaseLoadingPage.new,
          authenticated: (user) => Scaffold(
            bottomNavigationBar: const GrabberBottomNavigationBar(),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kSpacingXS,
                ),
                child: ListView(
                  children: [
                    Text(
                      S.current.home_page_welcome_again_title(user.storeName),
                      style: Theme.of(context).textTheme.headlineLarge,
                      textAlign: TextAlign.left,
                    ),
                    const VerticalGap.xl(),
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
                    const VerticalGap.xxs(),
                    DSButton.primary(
                      onPressed: () => Navigator.of(context).pushNamed(
                        AppRoutes.inventory,
                      ),
                      label: S.current.home_page_manage_inventory_button_label,
                    ),
                    const VerticalGap.xl(),
                    BlocBuilder<HasItemCubit, HasItemState>(
                      bloc: _hasItemCubit,
                      builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () => const SizedBox.shrink(),
                          hasItemRegisters: (products) =>
                              LowStorageItemsSection(
                            products: _getLowAmountItens(products),
                          ),
                        );
                      },
                    ),
                    BlocProvider.value(
                      value: getIt.get<GetOrdersCubit>()..getOrders(),
                      child: const OrderSection(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  List<Product> _getLowAmountItens(List<Product> products) {
    List<Product> productsEnding = [];
    for (final product in products) {
      if (product.amount < 3) {
        productsEnding.add(product);
      }
    }
    return productsEnding;
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child:
                BlocBuilder<PositionsAvailableCubit, PositionsAvailableState>(
              builder: (context, state) {
                return state.maybeWhen(
                  loading: () => const InformationCard(
                    message: '',
                    informationValue: 0,
                    isLoading: true,
                  ),
                  error: () => InformationCard(
                    message: S.current.informational_card_error_message,
                    onTap: () => context
                        .read<PositionsAvailableCubit>()
                        .checkAvailablePositions(),
                  ),
                  orElse: () => InformationCard(
                    message: S.current.home_available_positions_card,
                    informationValue: state.maybeWhen(
                      orElse: () => 0,
                      availablePositions: (positionOptions) =>
                          positionOptions.length,
                    ),
                  ),
                );
              },
            ),
          ),
          const HorizontalGap.xs(),
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
                    onTap: () =>
                        context.read<HasItemCubit>().hasItemRegistered(),
                  ),
                  orElse: () => InformationCard(
                    message: S.current.home_available_itens_card,
                    informationValue: state.maybeWhen(
                      orElse: () => 0,
                      hasItemRegisters: (products) =>
                          _getLowAmountItens(products).length,
                    ),
                  ),
                );
              },
            ),
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
