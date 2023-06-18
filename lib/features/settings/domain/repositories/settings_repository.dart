import 'package:dartz/dartz.dart';

import '../../../../core/failures.dart';

abstract class SettingsRepository {
  Future<Option<Failure>> updateTrack(String storeName);
}
