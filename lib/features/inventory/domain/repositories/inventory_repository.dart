import 'package:dartz/dartz.dart';

import '../../../../core/failures.dart';

abstract class InventoryRepository {
  Future<Option<Failure>> getProductsList();
}
