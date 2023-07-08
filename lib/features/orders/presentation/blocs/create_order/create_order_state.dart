part of 'create_order_cubit.dart';

@freezed
class CreateOrderState with _$CreateOrderState {
  const factory CreateOrderState.initial() = _Initial;
  const factory CreateOrderState.loading() = _Loading;
  const factory CreateOrderState.success() = _Success;
  const factory CreateOrderState.error({
    required List<DummyProduct> products,
  }) = _Error;
}
