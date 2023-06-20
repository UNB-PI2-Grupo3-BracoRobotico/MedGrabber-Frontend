import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failures.dart';

abstract class CreateUser {
  Future<Option<Failure>> call(
    String token,
    String storeName,
    String phoneNumber,
  );
}

@Injectable(as: CreateUser)
class CreateUserImpl implements CreateUser {
  // final SettingsRepository repository;

  CreateUserImpl();

  @override
  Future<Option<Failure>> call(String storeName) async {
    return const None();
  }
}
