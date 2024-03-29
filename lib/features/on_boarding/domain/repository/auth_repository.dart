import 'package:dartz/dartz.dart';
import 'package:grabber/features/on_boarding/domain/entities/stockist.dart';

import '../../../../core/failures.dart';

abstract class AuthRepository {
  Future<Either<Failure, Stockist>> signUp({
    required String token,
    required String email,
    required String password,
    required String phoneNumber,
  });

  Future<Either<Failure, Stockist>> signIn({
    required String email,
    required String password,
  });

  Future<bool> emailIsAlreadyInUse({
    required String email,
  });

  Future<Option<Failure>> resetPassword({
    required String email,
  });

  Future<Either<Failure, Stockist>> getSignedUser();

  Future<void> signOutUser();
}
