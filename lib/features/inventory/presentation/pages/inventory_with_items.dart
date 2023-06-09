import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:grabber/config/routes/routes.dart';
import 'package:grabber/core/injection.dart';
import 'package:grabber/features/inventory/domain/entities/product.dart';
import 'package:grabber/features/inventory/domain/usecases/delete_item.dart';
import 'package:grabber/features/inventory/presentation/pages/widgets/item_card.dart';

import '../../../../generated/l10n.dart';

class InventoryWithItems extends StatefulWidget {
  const InventoryWithItems({
    super.key,
    required this.products,
  });

  final List<Product> products;

  @override
  State<InventoryWithItems> createState() => _InventoryWithItemsState();
}

class _InventoryWithItemsState extends State<InventoryWithItems> {
  late List<Product> products;

  @override
  void initState() {
    products = List.from(widget.products);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: DSIconButton(
          icon: const DSIcon(
            icon: Icons.chevron_left_rounded,
          ),
          onTap: Navigator.of(context).pop,
        ),
        titleSpacing: 0,
        title: Text(
          S.current.inventory_page_title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).pushNamed(
          AppRoutes.addItem,
        ),
        child: const DSIcon(
          icon: Icons.add,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kSpacingXS,
          ),
          child: Column(
            children: [
              const VerticalGap.xl(),
              Expanded(
                child: ListView.separated(
                  itemCount: products.length,
                  itemBuilder: (_, index) => ItemCard(
                    product: products.elementAt(index),
                    onDeleteTap: () {
                      _deleteProduct(index);
                    },
                  ),
                  separatorBuilder: (_, __) => const VerticalGap.xxxs(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _deleteProduct(int index) {
    getIt.get<DeleteItem>().call();
    setState(() {
      products.removeAt(index);
    });
  }
}
