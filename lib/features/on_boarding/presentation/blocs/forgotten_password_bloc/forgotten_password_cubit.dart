import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grabber/features/on_boarding/domain/usecases/reset_password.dart';

part 'forgotten_password_state.dart';
part 'forgotten_password_cubit.freezed.dart';

class ForgottenPasswordCubit extends Cubit<ForgottenPasswordState> {
  final ResetPassword resetPasswordUsecase;

  ForgottenPasswordCubit({
    required this.resetPasswordUsecase,
  }) : super(const ForgottenPasswordState.initial());

  Future<void> resetPassword(String email) async {
    emit(const ForgottenPasswordState.loading());
    final successOrFailure = await resetPasswordUsecase(
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
