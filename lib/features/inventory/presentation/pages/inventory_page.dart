import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/core/injection.dart';
import 'package:grabber/features/inventory/presentation/pages/empty_inventory.dart';
import 'package:grabber/features/inventory/presentation/pages/inventory_with_items.dart';
import 'package:grabber/features/shared/base_error_page.dart';
import 'package:grabber/features/shared/base_loading_page.dart';

import '../../../../generated/l10n.dart';
import '../blocs/inventory/has_item_cubit.dart';

class InventoryPage extends StatefulWidget {
  const InventoryPage({super.key});

  @override
  State<InventoryPage> createState() => _InventoryPageState();
}

class _InventoryPageState extends State<InventoryPage> {
  final HasItemCubit _hasItemCubit = getIt.get();

  @override
  void initState() {
    super.initState();
    _hasItemCubit.hasItemRegistered();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HasItemCubit, HasItemState>(
      bloc: _hasItemCubit,
      builder: (_, state) => state.when(
        loading: () => BaseLoadingPage(
          title: S.current.inventory_page_loading,
        ),
        noItemRegistred: () => const EmptyInventory(),
        hasItemRegisters: (products) => InventoryWithItems(
          products: products,
        ),
        error: () => BaseErrorPage(
          title: S.current.inventory_error_page_title,
          description: S.current.inventory_error_page_description,
          footer: DSButton.primary(
            onPressed: _loadInventory,
            label: S.current.got_it,
          ),
        ),
      ),
    );
  }

  void _loadInventory() {
    context.read<HasItemCubit>().hasItemRegistered();
  }
}
