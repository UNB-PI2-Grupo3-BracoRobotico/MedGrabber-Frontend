import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failures.dart';

abstract class CreateUser {
  Future<Option<Failure>> call(
    String token,
    String email,
    String password,
    String phoneNumber,
  );
}

@Injectable(as: CreateUser)
class CreateUserImpl implements CreateUser {
  CreateUserImpl();

  @override
  Future<Option<Failure>> call(
    String token,
    String email,
    String password,
    String phoneNumber,
  ) async {
    // TODO(Natanael): implement call create user
    return const None();
  }
}
