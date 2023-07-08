import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grabber/features/on_boarding/domain/usecases/sign_up.dart';
import 'package:grabber/features/on_boarding/domain/usecases/validate_token.dart';
import 'package:grabber/features/on_boarding/domain/usecases/verify_if_email_is_in_use.dart';
import 'package:grabber/generated/l10n.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/stockist.dart';

part 'signup_state.dart';
part 'signup_cubit.freezed.dart';

@singleton
class SignupCubit extends Cubit<SignupState> {
  final SignUp _signUp;
  final ValidateToken _validateToken;
  final VerifyIfEmailIsInUse _verifyIfEmailIsInUse;

  SignupCubit({
    required SignUp signUp,
    required ValidateToken validateToken,
    required VerifyIfEmailIsInUse verifyIfEmailIsInUse,
  })  : _signUp = signUp,
        _validateToken = validateToken,
        _verifyIfEmailIsInUse = verifyIfEmailIsInUse,
        super(SignupState.initial());

  Future<bool> validateToken(String token) async {
    final tokenIsValidOrFailure = await _validateToken.call(token);
    final errorText = tokenIsValidOrFailure.fold(
      () => '',
      (_) => S.current.default_invalid_token_label,
    );
    if (errorText.isNotEmpty) {
      return false;
    }
    emit(
      state.copyWith(
        token: token,
      ),
    );
    return true;
  }

  Future<bool> validateEmail(String email) async {
    final emailIsAlreadyOnUse = await _verifyIfEmailIsInUse(email: email);
    if (emailIsAlreadyOnUse) {
      return false;
    }
    emit(
      state.copyWith(
        email: email,
      ),
    );
    return true;
  }

  Future<void> savePassword(String password) async {
    emit(
      state.copyWith(
        password: password,
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
    final createUserValidOrFailure = await _signUp(
      token: state.token,
      email: state.email,
      password: state.password,
      phoneNumber: state.phoneNumber,
    );
    return createUserValidOrFailure.fold(
      (_) => false,
      (user) {
        emit(
          state.copyWith(
            user: user,
          ),
        );
        return true;
      },
    );
  }
}
