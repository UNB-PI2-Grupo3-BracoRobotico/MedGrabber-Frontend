import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/config/routes/routes.dart';
import 'package:grabber/core/injection.dart';
import 'package:grabber/features/home/presentation/widgets/informational_card.dart';
import 'package:grabber/features/inventory/presentation/blocs/inventory/has_item_cubit.dart';
import 'package:grabber/features/inventory/presentation/blocs/positions_available/positions_available_cubit.dart';
import 'package:grabber/features/shared/bottom_navigation_bar.dart';
import 'package:grabber/generated/l10n.dart';

import '../../inventory/domain/entities/product.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const GrabberBottomNavigationBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kSpacingXS,
          ),
          child: ListView(
            children: [
              Text(
                //TODO(Mauricio): remove mock message
                S.current.home_page_welcome_again_title('example name'),
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.left,
              ),
              const VerticalGap.xl(),
              const _FirstRowInformationCards(),
              const VerticalGap.xxs(),
              DSButton.primary(
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.inventory,
                ),
                label: S.current.home_page_manage_inventory_button_label,
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
  late PositionsAvailableCubit _positionsAvailableCubit;
  late HasItemCubit _hasItemCubit;

  @override
  void initState() {
    super.initState();
    _positionsAvailableCubit = PositionsAvailableCubit();
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
              bloc: _positionsAvailableCubit,
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
                        _positionsAvailableCubit.checkAvailablePositions(),
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
              bloc: _hasItemCubit,
              builder: (context, state) {
                return state.maybeWhen(
                  loading: () => const InformationCard(
                    message: '',
                    informationValue: 0,
                    isLoading: true,
                  ),
                  error: () => InformationCard(
                    message: S.current.informational_card_error_message,
                    onTap: () => _hasItemCubit.hasItemRegistered(),
                  ),
                  orElse: () => InformationCard(
                    message: S.current.home_available_itens_card,
                    informationValue: state.maybeWhen(
                      orElse: () => 0,
                      hasItemRegisters: _getLowAmountItens,
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

  int _getLowAmountItens(List<Product> products) {
    int productsEnding = 0;
    for (final product in products) {
      if (product.amount < 2) {
        productsEnding++;
      }
    }
    return productsEnding;
  }
}
