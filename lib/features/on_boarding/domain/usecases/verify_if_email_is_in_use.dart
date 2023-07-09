import 'package:injectable/injectable.dart';

import '../repository/auth_repository.dart';

abstract class VerifyIfEmailIsInUse {
  Future<bool> call({
    required String email,
  });
}

@Injectable(as: VerifyIfEmailIsInUse)
class VerifyIfEmailIsInUseImpl implements VerifyIfEmailIsInUse {
  final AuthRepository _authRepository;

  const VerifyIfEmailIsInUseImpl({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;

  @override
  Future<bool> call({
    required String email,
  }) async {
    return await _authRepository.emailIsAlreadyInUse(email: email);
  }
}
