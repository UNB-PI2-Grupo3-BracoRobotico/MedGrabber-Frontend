import 'package:dartz/dartz.dart';
import 'package:grabber/core/failures.dart';
import 'package:grabber/features/on_boarding/domain/entities/stockist.dart';
import 'package:injectable/injectable.dart';

import '../repository/auth_repository.dart';

abstract class SignIn {
  Future<Either<Failure, Stockist>> call({
    required String email,
    required String password,
  });
}

@Injectable(as: SignIn)
class SignInImpl implements SignIn {
  final AuthRepository _authRepository;

  const SignInImpl({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;

  @override
  Future<Either<Failure, Stockist>> call({
    required String email,
    required String password,
  }) async {
    return await _authRepository.signIn(
      email: email,
      password: password,
    );
  }
}
