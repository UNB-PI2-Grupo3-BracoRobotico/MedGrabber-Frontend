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

  Future<bool> validateToken(String token) async {
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
      return false;
    }

    emit(
      state.copyWith(token: token, tokenFailureText: '', tokenIsValid: true),
    );
    return true;
  }

  Future<bool> validateEmail(String email) async {
    //TODO(Natanael) create email validation
    try {
      final FirebaseAuth _auth = FirebaseAuth.instance;
      final signInMethods = await _auth.fetchSignInMethodsForEmail(email);
      final result = signInMethods.isEmpty;
      if (result) {
        emit(
          state.copyWith(email: email, emailIsValid: true),
        );
      }
      return result;
    } catch (e) {
      emit(
        state.copyWith(email: '', emailIsValid: false),
      );
      return false;
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
    //TODO(Natanael) create phone validator
    emit(
      state.copyWith(phoneNumber: phone, phoneIsValid: true),
    );
  }

  void cleanTokenFailure() {
    emit(
      state.copyWith(
        tokenFailureText: '',
      ),
    );
  }
}
