import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failures.dart';
import '../repository/auth_repository.dart';

abstract class SignUp {
  Future<Option<Failure>> call({
    required String email,
    required String password,
  });
}

@Injectable(as: SignUp)
class SignUpImpl implements SignUp {
  final AuthRepository _authRepository;

  const SignUpImpl({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;

  @override
  Future<Option<Failure>> call({
    required String email,
    required String password,
  }) async {
    return await _authRepository.signUp(
      email: email,
      password: password,
    );
  }
}
