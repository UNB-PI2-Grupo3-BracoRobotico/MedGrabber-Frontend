import 'package:dartz/dartz.dart';
import 'package:grabber/features/inventory/domain/entities/product.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failures.dart';
import '../repositories/inventory_repository.dart';

abstract class EditProduct {
  Future<Option<Failure>> call({
    required Product product,
  });
}

@Injectable(as: EditProduct)
class EditProductImpl implements EditProduct {
  final InventoryRepository repository;

  EditProductImpl({required this.repository});

  @override
  Future<Option<Failure>> call({
    required Product product,
  }) async {
    return await repository.editProduct(
      product: product,
    );
  }
}
