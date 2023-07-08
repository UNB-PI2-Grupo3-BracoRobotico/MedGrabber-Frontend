import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grabber/features/on_boarding/domain/repository/auth_repository.dart';

part 'forgotten_password_state.dart';
part 'forgotten_password_cubit.freezed.dart';

class ForgottenPasswordCubit extends Cubit<ForgottenPasswordState> {
  final AuthRepository _authRepository = AuthRepository();
  ForgottenPasswordCubit() : super(const ForgottenPasswordState.initial());

  Future<void> resetPassword(String email) async {
    emit(const ForgottenPasswordState.loading());
    final successOrFailure = await _authRepository.resetPassword(
      email: email,
    );
    emit(
      successOrFailure.fold(
        ForgottenPasswordState.success,
        (_) => const ForgottenPasswordState.error(),
      ),
    );
  }

  Future<void> reset() async {
    emit(const ForgottenPasswordState.initial());
  }
}
