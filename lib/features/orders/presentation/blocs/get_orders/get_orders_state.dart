part of 'get_orders_cubit.dart';

@freezed
class GetOrdersState with _$GetOrdersState {
  const factory GetOrdersState.loading() = _Loading;
  const factory GetOrdersState.loaded({
    required List<Order> ordersInProgress,
    required List<Order> orders,
  }) = _Loaded;
  const factory GetOrdersState.error() = _Error;
}
