import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grabber/features/orders/domain/usecases/get_orders.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/order.dart';

part 'get_orders_cubit.freezed.dart';
part 'get_orders_state.dart';

@lazySingleton
class GetOrdersCubit extends Cubit<GetOrdersState> {
  final GetOrders getOrdersUsecase;
  GetOrdersCubit({
    required this.getOrdersUsecase,
  }) : super(const GetOrdersState.loading());

  Future<void> getOrders() async {
    emit(const GetOrdersState.loading());
    final failureOrOrders = await getOrdersUsecase();
    emit(failureOrOrders.fold(
      (_) => const GetOrdersState.error(),
      (orders) => GetOrdersState.loaded(
        orders: orders,
        ordersInProgress: orders
            .where((order) => order.status != OrderStatus.finished)
            .toList(),
      ),
    ));
  }
}
