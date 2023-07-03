part of 'forgotten_password_cubit.dart';

@freezed
class ForgottenPasswordState with _$ForgottenPasswordState {
  const factory ForgottenPasswordState({
    required bool isValidEmail,
  }) = _ForgottenPasswordState;

  factory ForgottenPasswordState.initial() {
    return ForgottenPasswordState(
      isValidEmail: false,
    );
  }
}
