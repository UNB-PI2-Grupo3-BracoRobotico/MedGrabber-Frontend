import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grabber/features/on_boarding/domain/repository/auth_repository.dart';

part 'forgotten_password_state.dart';
part 'forgotten_password_cubit.freezed.dart';

class ForgottenPasswordCubit extends Cubit<ForgottenPasswordState> {
  final AuthRepository _authRepository = AuthRepository();
  ForgottenPasswordCubit() : super(ForgottenPasswordState.initial());

  Future<bool> resetPassword(String email) async {
    try {
      await _authRepository.resetPassword(
        email: email,
      );
      emit(
        state.copyWith(
          isValidEmail: true,
        ),
      );
    } catch (e) {
      return false;
    }
    return true;
  }
}
