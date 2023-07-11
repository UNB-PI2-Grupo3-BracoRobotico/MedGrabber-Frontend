import 'package:dartz/dartz.dart';
import 'package:grabber/features/on_boarding/domain/entities/stockist.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failures.dart';
import '../repository/auth_repository.dart';

abstract class SignUp {
  Future<Either<Failure, Stockist>> call({
    required String token,
    required String email,
    required String password,
    required String phoneNumber,
  });
}

@Injectable(as: SignUp)
class SignUpImpl implements SignUp {
  final AuthRepository _authRepository;

  const SignUpImpl({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;

  @override
  Future<Either<Failure, Stockist>> call({
    required String token,
    required String email,
    required String password,
    required String phoneNumber,
  }) async {
    return await _authRepository.signUp(
      email: email,
      password: password,
      token: token,
      phoneNumber: phoneNumber,
    );
  }
}
