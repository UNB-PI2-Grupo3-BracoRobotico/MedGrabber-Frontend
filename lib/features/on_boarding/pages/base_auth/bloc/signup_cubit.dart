import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grabber/features/on_boarding/domain/usecases/validate_token.dart';
import 'package:injectable/injectable.dart';

part 'signup_state.dart';
part 'signup_cubit.freezed.dart';

@singleton
class SignupCubit extends Cubit<SignupState> {
  final ValidateToken _validateToken;
  SignupCubit({
    required ValidateToken validateToken,
  })  : _validateToken = validateToken,
        super(SignupState.initial());

  Future<void> validateToken(String token) async {
    final tokenIsValidOrFailure = await _validateToken.call(token);
    final errorText =
        tokenIsValidOrFailure.fold(() => '', (_) => 'Token invalido');
    if (errorText.isNotEmpty) {
      emit(
        state.copyWith(
          tokenFailureText: errorText,
          tokenIsValid: false,
        ),
      );
    } else {
      emit(
        state.copyWith(token: token, tokenFailureText: '', tokenIsValid: true),
      );
    }
  }

  Future<void> validateEmail(String email) async {
    //TODO(Natanael) create email validation
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    try {
      print(email);
      await firebaseAuth.fetchSignInMethodsForEmail(email);
      emit(
        state.copyWith(email: email, emailIsValid: true),
      );
    } catch (e) {
      emit(
        state.copyWith(email: '', emailIsValid: false),
      );
      print('email ja existe tauba');
    }
  }

  Future<void> validatePassword(String password, String confirmPassword) async {
    if (password == confirmPassword &&
        password.isNotEmpty &&
        password.length > 8) {
      emit(
        state.copyWith(password: password, passwordIsValid: true),
      );
    } else {
      emit(
        state.copyWith(passwordIsValid: false),
      );
    }
  }

  Future<void> validatePhone(String phone) async {
    //TODO(Natanael) create email validation
    emit(
      state.copyWith(phoneNumber: phone, phoneIsValid: true),
    );
  }

  Future<void> createUser() async {
    print(state.email);
  }

  void cleanTokenFailure() {
    emit(
      state.copyWith(
        tokenFailureText: '',
      ),
    );
  }
}
