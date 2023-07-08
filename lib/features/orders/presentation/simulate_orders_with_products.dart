import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/generated/l10n.dart';

import '../../../core/injection.dart';
import '../../inventory/domain/entities/product.dart';
import '../../shared/base_error_page.dart';
import '../../shared/base_loading_page.dart';
import '../../shared/base_success_page.dart';
import '../domain/entities/dummy_product.dart';
import 'blocs/create_order/create_order_cubit.dart';
import 'blocs/get_orders/get_orders_cubit.dart';
import 'widgets/available_product_card.dart';
import 'widgets/create_order_error_footer.dart';
import 'widgets/selected_product_card.dart';

class SimulateOrderWithProducts extends StatefulWidget {
  const SimulateOrderWithProducts({
    super.key,
    required this.productsAvailable,
  });

  final List<Product> productsAvailable;

  @override
  State<SimulateOrderWithProducts> createState() =>
      _SimulateOrderWithProductsState();
}

class _SimulateOrderWithProductsState extends State<SimulateOrderWithProducts> {
  List<DummyProduct> selectedProducts = [];

  late List<Product> availableProducts;
  late CreateOrderCubit _createOrderCubit;

  @override
  void initState() {
    super.initState();
    availableProducts = List.from(widget.productsAvailable);
    _createOrderCubit = CreateOrderCubit();
  }

  @override
  void dispose() {
    _createOrderCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateOrderCubit, CreateOrderState>(
      bloc: _createOrderCubit,
      listener: (context, state) => state.whenOrNull(
        success: () async {
          final navigator = Navigator.of(context);
          getIt.get<GetOrdersCubit>().getOrders();
          await Future.delayed(
            const Duration(
              milliseconds: 1500,
            ),
          );
          navigator.pop();
        },
      ),
      builder: (context, state) {
        return state.when(
          loading: () => BaseLoadingPage(
            title: S.current.simulate_order_create_order_loading_title,
          ),
          success: () => BaseSuccessPage(
            canPop: false,
            title: S.current.simulate_order_create_order_success_title,
          ),
          error: (products) => BaseErrorPage(
            title: S.current.something_went_wrong,
            description:
                S.current.simulate_order_create_order_error_description,
            footer: CreateOrderErrorFooter(
              primaryLabel: S.current.try_again,
              secondaryLabel: S.current.got_it,
              primaryOnTap: () => _createOrderCubit.createOrder(products),
              secondaryOnTap: Navigator.of(context).pop,
            ),
          ),
          initial: () => Scaffold(
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
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kSpacingXS,
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        physics: const AlwaysScrollableScrollPhysics(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const VerticalGap.xs(),
                            Text(
                              S.current.simulate_order_available_products_title,
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const VerticalGap.nano(),
                            ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (_, index) => AvailableProductCard(
                                onAddItemTap: () {
                                  _onAddItem(index);
                                },
                                onRemoveItemTap: () {
                                  _onRemoveItem(index);
                                },
                                product: availableProducts.elementAt(index),
                                hasProductOnCart:
                                    _checkIfHasntProductOnCart(index),
                              ),
                              separatorBuilder: (_, __) =>
                                  const VerticalGap.xxxs(),
                              itemCount: availableProducts.length,
                            ),
                            const VerticalGap.xs(),
                            if (selectedProducts.isNotEmpty) ...[
                              Animate(
                                effects: const [FadeEffect()],
                                child: Text(
                                  S.current
                                      .simulate_order_selected_products_title,
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              ),
                              const VerticalGap.nano(),
                            ],
                            ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (_, index) => SelectedProductCard(
                                product: selectedProducts.elementAt(index),
                              ),
                              separatorBuilder: (_, __) =>
                                  const VerticalGap.xxxs(),
                              itemCount: selectedProducts.length,
                            ),
                            const VerticalGap.xs(),
                          ],
                        ),
                      ),
                    ),
                    DSButton.primary(
                      onPressed: () => _createOrderCubit.createOrder(
                        selectedProducts,
                      ),
                      label: S.current.simulate_order_finish_order_button_title,
                      enabled: selectedProducts.isNotEmpty,
                    ),
                    const VerticalGap.xxxs(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
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
    availableProducts[index] = productSelected.copyWith(
      amount: productSelected.amount - 1,
    );
    setState(() {
      selectedProducts.add(productOnCart!);
    });
  }

  void _onRemoveItem(int index) {
    final productSelected = availableProducts.elementAt(index);
    late DummyProduct? productOnCart;
    late int? productPosition;
    for (int i = 0; i < selectedProducts.length; i++) {
      if (productSelected.name == selectedProducts.elementAt(i).name) {
        productPosition = i;
        productOnCart = selectedProducts.elementAt(i);
        break;
      }
    }
    if (productOnCart == null || productPosition == null) {
      return;
    }
    if (productOnCart.amount == 1) {
      selectedProducts.removeAt(productPosition);
    } else {
      productOnCart = productOnCart.copyWith(amount: productOnCart.amount - 1);
      selectedProducts[productPosition] = productOnCart;
    }
    availableProducts[index] =
        productSelected.copyWith(amount: productSelected.amount + 1);
    setState(() {});
  }
}
