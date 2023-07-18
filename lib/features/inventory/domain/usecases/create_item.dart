import 'package:dartz/dartz.dart';
import 'package:grabber/features/inventory/domain/entities/product.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failures.dart';
import '../repositories/inventory_repository.dart';

abstract class CreateItem {
  Future<Option<Failure>> call({
    required Product product,
  });
}

@Injectable(as: CreateItem)
class CreateItemImpl implements CreateItem {
  final InventoryRepository repository;

  const CreateItemImpl({
    required this.repository,
  });

  @override
  Future<Option<Failure>> call({
    required Product product,
  }) async {
    return await repository.createProduct(
      product: product,
    );
  }
}
