part of 'forgotten_password_cubit.dart';

@freezed
class ForgottenPasswordState with _$ForgottenPasswordState {
  const factory ForgottenPasswordState.initial() = _Initial;
  const factory ForgottenPasswordState.loading() = _Loading;
  const factory ForgottenPasswordState.success() = _Success;
  const factory ForgottenPasswordState.error() = _Error;
}
