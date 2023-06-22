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
        state.copyWith(tokenFailureText: '', tokenIsValid: true),
      );
    }
  }

  void cleanTokenFailure() {
    emit(
      state.copyWith(
        tokenFailureText: '',
      ),
    );
  }
}
