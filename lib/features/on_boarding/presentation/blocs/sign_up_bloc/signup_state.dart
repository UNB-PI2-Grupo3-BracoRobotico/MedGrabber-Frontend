part of 'signup_cubit.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState({
    required String token,
    required String tokenFailureText,
    required String emailFailureText,
    required String passwordFailureText,
    required String phoneFailureText,
    required bool tokenIsValid,
    required bool emailIsValid,
    required bool phoneIsValid,
    required bool passwordIsValid,
    required String email,
    required String password,
    required bool isSubmiting,
    required String phoneNumber,
  }) = _SignupState;

  factory SignupState.initial() {
    return const SignupState(
      token: '',
      tokenFailureText: '',
      emailFailureText: '',
      passwordFailureText: '',
      phoneFailureText: '',
      tokenIsValid: false,
      email: '',
      emailIsValid: false,
      password: '',
      passwordIsValid: false,
      phoneNumber: '',
      phoneIsValid: false,
      isSubmiting: false,
    );
  }
}
