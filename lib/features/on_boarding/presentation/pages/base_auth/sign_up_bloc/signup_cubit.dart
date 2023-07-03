import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grabber/features/on_boarding/domain/repository/auth_repository.dart';
import 'package:grabber/features/on_boarding/domain/usecases/create_user.dart';
import 'package:grabber/features/on_boarding/domain/usecases/validate_token.dart';
import 'package:grabber/generated/l10n.dart';
import 'package:injectable/injectable.dart';

part 'signup_state.dart';
part 'signup_cubit.freezed.dart';

@singleton
class SignupCubit extends Cubit<SignupState> {
  final AuthRepository _authRepository = AuthRepository();
  final ValidateToken _validateToken;
  final CreateUser _createUser;

  SignupCubit({
    required ValidateToken validateToken,
    required CreateUser createUser,
  })  : _validateToken = validateToken,
        _createUser = createUser,
        super(SignupState.initial());

  Future<bool> validateToken(String token) async {
    final tokenIsValidOrFailure = await _validateToken.call(token);
    final errorText = tokenIsValidOrFailure.fold(() => S.current.empty_string,
        (_) => S.current.default_invalid_token_label);
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
        tokenFailureText: S.current.empty_string,
        tokenIsValid: true,
      ),
    );
    return true;
  }

  Future<bool> validateEmail(String email) async {
    if (!await _authRepository.emailIsAlreadyInUse(email: email)) {
      emit(
        state.copyWith(
          email: '',
          emailIsValid: false,
        ),
      );
      return false;
    }
    emit(
      state.copyWith(
        email: email,
        emailIsValid: true,
      ),
    );
    return true;
  }

  Future<void> savePassword(String password) async {
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

  Future<bool> createUser() async {
    final createUserValidOrFailure = await _createUser.call(
        state.token, state.email, state.password, state.phoneNumber);
    final errorText = createUserValidOrFailure.fold(
        () => S.current.empty_string,
        (_) => S.current.default_invalid_signup_title);
    if (errorText.isEmpty) {
      return false;
    }
    try {
      await _authRepository.signUp(
        email: state.email,
        password: state.password,
      );
    } catch (e) {
      return false;
    }

    return true;
  }

  void cleanTokenFailure() {
    emit(
      state.copyWith(
        tokenFailureText: S.current.empty_string,
      ),
    );
  }
}
