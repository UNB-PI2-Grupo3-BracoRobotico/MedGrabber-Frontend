import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grabber/features/on_boarding/domain/usecases/create_user.dart';
import 'package:grabber/features/on_boarding/domain/usecases/sign_up.dart';
import 'package:grabber/features/on_boarding/domain/usecases/validate_token.dart';
import 'package:grabber/features/on_boarding/domain/usecases/verify_if_email_is_in_use.dart';
import 'package:grabber/generated/l10n.dart';
import 'package:injectable/injectable.dart';

part 'signup_state.dart';
part 'signup_cubit.freezed.dart';

@singleton
class SignupCubit extends Cubit<SignupState> {
  final SignUp _signUp;
  final ValidateToken _validateToken;
  final CreateUser _createUser;
  final VerifyIfEmailIsInUse _verifyIfEmailIsInUse;

  SignupCubit({
    required SignUp signUp,
    required ValidateToken validateToken,
    required CreateUser createUser,
    required VerifyIfEmailIsInUse verifyIfEmailIsInUse,
  })  : _signUp = signUp,
        _validateToken = validateToken,
        _createUser = createUser,
        _verifyIfEmailIsInUse = verifyIfEmailIsInUse,
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
    final emailIsAlreadyOnUse = await _verifyIfEmailIsInUse(email: email);
    if (emailIsAlreadyOnUse) {
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
    if (errorText.isNotEmpty) {
      return false;
    }
    final userCreatedOrFailure = await _signUp(
      email: state.email,
      password: state.password,
    );
    return userCreatedOrFailure.fold(
      () => true,
      (_) => false,
    );
  }

  void cleanTokenFailure() {
    emit(
      state.copyWith(
        tokenFailureText: S.current.empty_string,
      ),
    );
  }
}
