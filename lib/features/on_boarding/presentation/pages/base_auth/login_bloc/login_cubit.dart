import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grabber/features/on_boarding/domain/repository/auth_repository.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepository _authRepository = AuthRepository();
  LoginCubit() : super(LoginState.initial());

  Future<bool> login(String email, String password) async {
    try {
      await _authRepository.signIn(
        email: email,
        password: password,
      );
      emit(
        state.copyWith(
          isAuthenticated: true,
        ),
      );
    } catch (e) {
      return false;
    }
    return true;
  }
}
