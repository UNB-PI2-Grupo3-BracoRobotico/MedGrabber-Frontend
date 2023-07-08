import 'package:dartz/dartz.dart';
import 'package:grabber/features/on_boarding/domain/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failures.dart';

abstract class ResetPassword {
  Future<Option<Failure>> call({
    required String email,
  });
}

@Injectable(as: ResetPassword)
class ResetPasswordImpl implements ResetPassword {
  final AuthRepository _authRepository;

  const ResetPasswordImpl({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;

  @override
  Future<Option<Failure>> call({
    required String email,
  }) async {
    return await _authRepository.resetPassword(email: email);
  }
}
