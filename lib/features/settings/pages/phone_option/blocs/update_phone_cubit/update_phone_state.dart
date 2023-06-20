part of 'update_phone_cubit.dart';

@freezed
class UpdatePhoneState with _$UpdatePhoneState {
  const factory UpdatePhoneState.initial() = _Initial;
  const factory UpdatePhoneState.loading() = _Loading;
  const factory UpdatePhoneState.success() = _success;
  const factory UpdatePhoneState.error() = _Error;
}
