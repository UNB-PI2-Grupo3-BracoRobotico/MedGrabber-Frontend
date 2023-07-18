import 'package:dartz/dartz.dart';
import 'package:grabber/features/inventory/domain/entities/product.dart';

import '../../../../core/failures.dart';

abstract class InventoryRepository {
  Future<Either<Failure, List<Product>>> getProductsList();

  Future<Option<Failure>> createProduct({
    required Product product,
  });

  Future<Option<Failure>> editProduct({
    required Product product,
  });

  Future<Option<Failure>> deleteProduct({
    required String productId,
    required String userId,
  });

  Future<Either<Failure, List<String>>> getAvailablePositions();
}
