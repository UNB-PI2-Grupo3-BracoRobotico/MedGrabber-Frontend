import 'package:dartz/dartz.dart';
import 'package:grabber/features/inventory/domain/entities/product.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failures.dart';

abstract class GetProductsList {
  Future<Either<Failure, List<Product>>> call();
}

@Injectable(as: GetProductsList)
class GetProductsListImpl implements GetProductsList {
  // final InventoryRepository repository;

  GetProductsListImpl();

  @override
  Future<Either<Failure, List<Product>>> call() async {
    //TODO(Mauricio): Integrate with settings repository
    throw UnimplementedError();
  }
}
