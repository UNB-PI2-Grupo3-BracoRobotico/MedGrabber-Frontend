import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grabber/features/inventory/domain/usecases/get_products_list.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/product.dart';

part 'has_item_cubit.freezed.dart';
part 'has_item_state.dart';

@lazySingleton
class HasItemCubit extends Cubit<HasItemState> {
  final GetProductsList _getProdcutsList;

  HasItemCubit({
    required GetProductsList getProductsList,
  })  : _getProdcutsList = getProductsList,
        super(const HasItemState.loading());

  //TODO(Mauricio): Remove this mock information
  final List<Product> _products = const [
    Product(
      name: 'Prod 1 fkjhf hfjkh fkjhfjkfhkjf hjkfhfjkhfjk',
      amount: 238875975,
      description: 'Description 1 example',
      position: 'A0',
      price: 15.50,
    ),
    Product(
      name: 'Prod 2',
      amount: 24,
      description: 'Description 1 example',
      position: 'A1',
      price: 15.50,
    ),
    Product(
      name: 'Prod 3',
      amount: 23,
      description: 'Description 1 example',
      position: 'A2',
      price: 15.50,
    ),
    Product(
      name: 'Prod 4',
      amount: 1,
      description: 'Description 1 example',
      position: 'A1',
      price: 15.50,
    ),
    Product(
      name: 'Prod 5',
      amount: 1,
      description: 'Description 1 example',
      position: 'A2',
      price: 15.50,
    ),
  ];

  Future<void> hasItemRegistered() async {
    emit(const HasItemState.loading());
    // final productsOrFailure = await _getProdcutsList.call();
    //TODO(Mauricio): Integrate with usecase
    await Future.delayed(
      const Duration(
        seconds: 2,
      ),
    );
    // emit(const HasItemState.noItemRegistred());
    emit(
      HasItemState.hasItemRegisters(
        products: _products,
      ),
    );
  }
}
