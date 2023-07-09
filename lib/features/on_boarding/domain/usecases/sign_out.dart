import 'package:grabber/features/on_boarding/domain/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

abstract class SignOut {
  Future<void> call();
}

@Injectable(as: SignOut)
class SignOutImpl implements SignOut {
  final AuthRepository _repository;

  SignOutImpl({
    required AuthRepository repository,
  }) : _repository = repository;
  @override
  Future<void> call() async {
    return await _repository.signOutUser();
  }
}
