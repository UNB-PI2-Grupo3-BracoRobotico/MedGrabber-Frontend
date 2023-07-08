import 'package:dartz/dartz.dart';
import 'package:grabber/features/on_boarding/domain/entities/stockist.dart';

import '../../../../core/failures.dart';

abstract class AuthRepository {
  Future<Option<Failure>> signUp({
    required String email,
    required String password,
  });

  Future<Option<Failure>> signIn({
    required String email,
    required String password,
  });

  Future<bool> emailIsAlreadyInUse({
    required String email,
  });

  Future<Option<Failure>> resetPassword({
    required String email,
  });

  Option<Stockist> getSignedUser();

  Future<void> signOutUser();
}
