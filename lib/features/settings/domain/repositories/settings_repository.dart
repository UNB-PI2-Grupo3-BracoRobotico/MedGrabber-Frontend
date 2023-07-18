import 'package:dartz/dartz.dart';

import '../../../../core/failures.dart';

abstract class SettingsRepository {
  Future<Option<Failure>> updateStoreName({
    required String storeName,
    required String userId,
  });
  Future<Option<Failure>> updatePhoneNumber({
    required String phoneNumber,
    required String userId,
  });
  Future<Option<Failure>> updateEmail({
    required String email,
    required String userId,
  });
}
