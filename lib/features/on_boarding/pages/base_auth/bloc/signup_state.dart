part of 'signup_cubit.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState({
    required String token,
    required String tokenFailureText,
    required bool tokenIsValid,
    required String email,
    required String password,
    required bool isSubmiting,
    required String phoneNumber,
  }) = _SignupState;

  factory SignupState.initial() {
    return SignupState(token: '', tokenFailureText: '', tokenIsValid: false, email: '', password: '', isSubmiting: false, phoneNumber: '', );
  }
}
