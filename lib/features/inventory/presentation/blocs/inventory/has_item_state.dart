part of 'has_item_cubit.dart';

@freezed
class HasItemState with _$HasItemState {
  const factory HasItemState.loading() = _Initial;
  const factory HasItemState.noItemRegistred() = _NoItemRegistered;
  const factory HasItemState.hasItemRegisters({
    required List<Product> products,
  }) = _hasItemRegistered;
  const factory HasItemState.error() = _Error;
}
