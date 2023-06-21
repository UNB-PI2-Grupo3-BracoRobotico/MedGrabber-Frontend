import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failures.dart';

abstract class RegisterToken {
  Future<Option<Failure>> call(
    String token,
  );
}

@Injectable(as: RegisterToken)
class RegisterTokenImpl implements RegisterToken {
  // final SettingsRepository repository;

  RegisterTokenImpl();

  @override
  Future<Option<Failure>> call(String token) async {
    //TODO(Mauricio): Integrate with settings repository
    return const None();
  }
}
