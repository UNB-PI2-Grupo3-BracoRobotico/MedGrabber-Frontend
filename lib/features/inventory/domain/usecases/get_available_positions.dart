import 'package:dartz/dartz.dart';
import 'package:grabber/features/inventory/domain/repositories/inventory_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failures.dart';

abstract class GetAvailablePositions {
  Future<Either<Failure, List<String>>> call();
}

@Injectable(as: GetAvailablePositions)
class GetAvailablePositionsImpl implements GetAvailablePositions {
  final InventoryRepository repository;

  const GetAvailablePositionsImpl({
    required this.repository,
  });

  @override
  Future<Either<Failure, List<String>>> call() async {
    return await repository.getAvailablePositions();
  }
}
