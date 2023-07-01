part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required bool isAuthenticated,
  }) = _LoginState;

  factory LoginState.initial() {
    return LoginState(
      isAuthenticated: false,
    );
  }
}
