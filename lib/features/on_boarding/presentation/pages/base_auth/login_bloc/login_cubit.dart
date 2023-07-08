import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grabber/features/on_boarding/domain/repository/auth_repository.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepository _authRepository = AuthRepository();
  LoginCubit() : super(const LoginState.initial());

  Future<void> login(String email, String password) async {
    emit(const LoginState.loading());
    final successOrFailure = await _authRepository.signIn(
      email: email,
      password: password,
    );
    emit(
      successOrFailure.fold(
        LoginState.success,
        (_) => const LoginState.error(),
      ),
    );
  }

  Future<void> reset() async {
    emit(const LoginState.initial());
  }
}
