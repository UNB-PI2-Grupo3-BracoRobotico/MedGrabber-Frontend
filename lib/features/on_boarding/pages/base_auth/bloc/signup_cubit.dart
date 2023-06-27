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
      state.copyWith(
        token: token,
        tokenFailureText: '',
        tokenIsValid: true,
      ),
    );
    return true;
  }

  Future<bool> validateEmail(String email) async {
    try {
      final FirebaseAuth auth = FirebaseAuth.instance;
      final signInMethods = await auth.fetchSignInMethodsForEmail(email);
      final result = signInMethods.isEmpty;
      if (result) {
        emit(
          state.copyWith(
            email: email,
            emailIsValid: true,
          ),
        );
      }
      return result;
    } catch (e) {
      emit(
        state.copyWith(
          email: '',
          emailIsValid: false,
        ),
      );
      return false;
    }
  }

  Future<void> savePassword(String password, String confirmPassword) async {
    emit(
      state.copyWith(
        password: password,
        passwordIsValid: true,
      ),
    );
  }

  Future<void> savePhone(String phone) async {
    emit(
      state.copyWith(
        phoneNumber: phone,
        phoneIsValid: true,
      ),
    );
  }

  Future<void> createUser() async {
    //TODO(Natanael) create user in database when its available
  }

  void cleanTokenFailure() {
    emit(
      state.copyWith(
        tokenFailureText: '',
      ),
    );
  }
}
