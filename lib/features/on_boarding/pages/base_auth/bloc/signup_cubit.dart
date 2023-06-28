import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grabber/features/on_boarding/domain/usecases/create_user.dart';
import 'package:grabber/features/on_boarding/domain/usecases/validate_token.dart';
import 'package:grabber/generated/l10n.dart';
import 'package:injectable/injectable.dart';

part 'signup_state.dart';
part 'signup_cubit.freezed.dart';

@singleton
class SignupCubit extends Cubit<SignupState> {
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
          email: S.current.empty_string,
          emailIsValid: false,
        ),
      );
      return false;
    }
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
    final FirebaseAuth auth = FirebaseAuth.instance;
    final createUserValidOrFailure = await _createUser.call(
        state.token, state.email, state.password, state.phoneNumber);
    final errorText = createUserValidOrFailure.fold(
        () => S.current.empty_string,
        (_) => S.current.default_invalid_signup_title);
    if (errorText.isEmpty) {
      return false;
    }
    try {
      auth.createUserWithEmailAndPassword(
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
