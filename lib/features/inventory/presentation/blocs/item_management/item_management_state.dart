part of 'item_management_cubit.dart';

@freezed
class ItemManagementState with _$ItemManagementState {
  const ItemManagementState._();
  const factory ItemManagementState.loading() = _Loading;
  const factory ItemManagementState.initial() = _Initial;
  const factory ItemManagementState.error(
      {required Map<String, String> errors}) = _Error;
  const factory ItemManagementState.success() = _Success;

  bool get hasError => this is _Error;
  Map<String, String> get listErrors => maybeWhen(
        orElse: () => {},
        error: (errors) => errors,
      );
}
