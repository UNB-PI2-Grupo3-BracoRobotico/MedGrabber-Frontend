import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grabber/features/inventory/domain/usecases/get_products_list.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/product.dart';

part 'has_item_cubit.freezed.dart';
part 'has_item_state.dart';

@lazySingleton
class HasItemCubit extends Cubit<HasItemState> {
  final GetProductsList _getProductsList;

  HasItemCubit({
    required GetProductsList getProductsList,
  })  : _getProductsList = getProductsList,
        super(const HasItemState.loading());

  Future<void> hasItemRegistered() async {
    emit(const HasItemState.loading());
    final failureOrProducts = await _getProductsList.call();
    emit(
      failureOrProducts.fold(
        (_) => const HasItemState.error(),
        (products) {
          if (products.isEmpty) {
            return const HasItemState.noItemRegistred();
          }
          return HasItemState.hasItemRegisters(
            products: products,
          );
        },
      ),
    );
  }
}
