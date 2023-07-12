import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grabber/features/on_boarding/domain/entities/stockist.dart';
import 'package:grabber/features/on_boarding/domain/usecases/sign_in.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final SignIn signIn;

  LoginCubit({
    required this.signIn,
  }) : super(const LoginState.initial());

  Future<void> login(String email, String password) async {
    emit(const LoginState.loading());
    final successOrFailure = await signIn(
      email: email,
      password: password,
    );
    emit(
      successOrFailure.fold(
        (_) => const LoginState.error(),
        (user) => LoginState.success(
          user: user,
        ),
      ),
    );
  }

  Future<void> reset() async {
    emit(const LoginState.initial());
  }
}
