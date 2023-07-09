part of 'signup_cubit.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState({
    required String token,
    required String emailFailureText,
    required String passwordFailureText,
    required String phoneFailureText,
    required bool phoneIsValid,
    required String email,
    required String password,
    required bool isSubmiting,
    required String phoneNumber,
    required Stockist? user,
  }) = _SignupState;

  factory SignupState.initial() {
    return const SignupState(
      token: '',
      emailFailureText: '',
      passwordFailureText: '',
      phoneFailureText: '',
      email: '',
      password: '',
      phoneNumber: '',
      phoneIsValid: false,
      isSubmiting: false,
      user: null,
    );
  }
}
