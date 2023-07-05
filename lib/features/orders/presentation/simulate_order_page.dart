import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/core/injection.dart';
import 'package:grabber/features/inventory/domain/entities/product.dart';
import 'package:grabber/features/inventory/presentation/blocs/inventory/has_item_cubit.dart';
import 'package:grabber/features/orders/domain/entities/dummy_product.dart';
import 'package:grabber/features/orders/presentation/widgets/available_product_card.dart';
import 'package:grabber/features/orders/presentation/widgets/available_product_card_button.dart';
import 'package:grabber/generated/l10n.dart';
import 'package:injectable/injectable.dart';

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
          'Simular pedido',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SafeArea(
        child: BlocBuilder<HasItemCubit, HasItemState>(
          bloc: _hasItemCubit,
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kSpacingXS,
              ),
              child: state.when(
                loading: () => const Center(
                  child: DSLoading(
                    size: kIconSizeXXL,
                  ),
                ),
                noItemRegistred: () => Animate(
                  effects: const [FadeEffect()],
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
                hasItemRegisters: (products) => _SimulateOrderContent(
                  productsAvailable: products,
                ),
                error: () => Animate(
                  effects: const [FadeEffect()],
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
                        'Não é possível realizar um pedido agora. Clique aqui para tentar novamente ou contate a equipe de suporte.',
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
            );
          },
        ),
      ),
    );
  }
}

class _SimulateOrderContent extends StatefulWidget {
  const _SimulateOrderContent({
    required this.productsAvailable,
  });

  final List<Product> productsAvailable;

  @override
  State<_SimulateOrderContent> createState() => __SimulateOrderContentState();
}

class __SimulateOrderContentState extends State<_SimulateOrderContent> {
  List<DummyProduct> selectedProducts = [];

  late List<Product> availableProducts;

  @override
  void initState() {
    super.initState();
    availableProducts = widget.productsAvailable;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (_, index) => AvailableProductCard(
                    onAddItemTap: () {
                      _onAddItem(index);
                    },
                    onRemoveItemTap: () {},
                    product: availableProducts.elementAt(index),
                    hasProductOnCart: _checkIfHasntProductOnCart(index),
                  ),
                  separatorBuilder: (_, __) => const VerticalGap.xxxs(),
                  itemCount: availableProducts.length,
                ),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (_, index) => SizedBox.shrink(),
                  separatorBuilder: (_, __) => const VerticalGap.xxxs(),
                  itemCount: 15,
                ),
              ],
            ),
          ),
        ),
        DSButton.primary(onPressed: () {}, label: 'Finalizar pedido,'),
        const VerticalGap.xxxs(),
      ],
    );
  }

  bool _checkIfHasntProductOnCart(int index) {
    final int position = selectedProducts.indexWhere(
      (product) => product.name == availableProducts.elementAt(index).name,
    );
    if (position != -1) return false;
    return true;
  }

  void _onAddItem(int index) {
    final productSelected = availableProducts.elementAt(index);
    late DummyProduct? productOnCart;
    try {
      productOnCart = selectedProducts.firstWhere(
        (product) => product.name == productSelected.name,
      );
    } catch (_) {
      productOnCart = null;
    }
    if (productOnCart == null) {
      productOnCart = DummyProduct(
        name: productSelected.name,
        amount: 1,
      );
    } else {
      selectedProducts.remove(productOnCart);
      productOnCart = productOnCart.copyWith(amount: productOnCart.amount + 1);
    }
    setState(() {
      selectedProducts.add(productOnCart!);
    });
  }
}
