import 'package:dartz/dartz.dart';
import 'package:grabber/features/on_boarding/domain/entities/stockist.dart';
import 'package:grabber/features/on_boarding/domain/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failures.dart';

abstract class GetSignedUser {
  Future<Either<Failure, Stockist>> call();
}

@Injectable(as: GetSignedUser)
class GetSignedUserImpl implements GetSignedUser {
  final AuthRepository _repository;

  GetSignedUserImpl({
    required AuthRepository repository,
  }) : _repository = repository;
  @override
  Future<Either<Failure, Stockist>> call() {
    return _repository.getSignedUser();
  }
}
