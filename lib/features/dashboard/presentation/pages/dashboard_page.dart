import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/config/routes/routes.dart';
import 'package:grabber/core/injection.dart';
import 'package:grabber/features/home/presentation/widgets/informational_card.dart';
import 'package:grabber/features/home/presentation/widgets/low_storage_items_section.dart';
import 'package:grabber/features/inventory/presentation/blocs/inventory/has_item_cubit.dart';
import 'package:grabber/features/inventory/presentation/blocs/positions_available/positions_available_cubit.dart';
import 'package:grabber/features/orders/presentation/blocs/get_orders/get_orders_cubit.dart';
import 'package:grabber/features/orders/presentation/order_section.dart';
import 'package:grabber/features/shared/bottom_navigation_bar.dart';
import 'package:grabber/generated/l10n.dart';

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
              const VerticalGap.xl(),
              DSButton.primary(
                onPressed: () {},
                label: S.current.dashboard_section_reports_button_label,
              ),
              const VerticalGap.xxxs(),
            ],
          ),
        ),
      ),
    );
  }
}
