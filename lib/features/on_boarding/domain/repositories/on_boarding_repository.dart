import 'package:dartz/dartz.dart';

import '../../../../core/failures.dart';

abstract class OnBoardingRepository {
  Future<Option<Failure>> createUser(String token, String storeName, String phoneNumber);
}
