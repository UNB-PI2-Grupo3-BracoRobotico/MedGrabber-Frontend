import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../inventory/domain/entities/product.dart';
import '../../../domain/entities/order.dart';

part 'get_orders_cubit.freezed.dart';
part 'get_orders_state.dart';

@lazySingleton
class GetOrdersCubit extends Cubit<GetOrdersState> {
  GetOrdersCubit() : super(const GetOrdersState.loading());

  static const List<OrderEntity> orders = [
    OrderEntity(
      id: '1234',
      status: OrderStatus.finished,
      products: [
        Product(
          name: 'Prod 1 fkjhf hfjkh fkjhfjkfhkjf hjkfhfjkhfjk',
          amount: 1,
          description: 'Description 1 example',
          position: 'A0',
          price: 10,
        ),
        Product(
          name: 'Prod 2',
          amount: 2,
          description: 'Description 1 example',
          position: 'A1',
          price: 10,
        ),
      ],
      totalOrderValue: 30,
    ),
    OrderEntity(
      id: '1235',
      status: OrderStatus.processing,
      products: [
        Product(
          name: 'Prod 1 fkjhf hfjkh fkjhfjkfhkjf hjkfhfjkhfjk',
          amount: 1,
          description: 'Description 1 example',
          position: 'A0',
          price: 10,
        ),
        Product(
          name: 'Prod 2',
          amount: 2,
          description: 'Description 1 example',
          position: 'A1',
          price: 10,
        ),
      ],
      totalOrderValue: 30,
    ),
    OrderEntity(
      id: '1236',
      status: OrderStatus.processing,
      products: [
        Product(
          name: 'Prod 1 fkjhf hfjkh fkjhfjkfhkjf hjkfhfjkhfjk',
          amount: 1,
          description: 'Description 1 example',
          position: 'A0',
          price: 10,
        ),
        Product(
          name: 'Prod 2',
          amount: 2,
          description: 'Description 1 example',
          position: 'A1',
          price: 10,
        ),
      ],
      totalOrderValue: 30,
    ),
  ];

  Future<void> getOrders() async {
    emit(const GetOrdersState.loading());
    //TODO(Mauricio): Integrate with usecase
    await Future.delayed(
      const Duration(
        seconds: 2,
      ),
    );
    // emit(const GetOrdersState.noItemRegistred());
    emit(
      GetOrdersState.loaded(
        orders: orders,
        ordersInProgress: orders
            .where((order) => order.status == OrderStatus.processing)
            .toList(),
      ),
    );
  }
}
