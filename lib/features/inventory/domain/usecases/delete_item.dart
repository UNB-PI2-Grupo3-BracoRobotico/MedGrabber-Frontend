import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:grabber/core/failures.dart';
import 'package:injectable/injectable.dart';

import '../repositories/inventory_repository.dart';

abstract class DeleteItem {
  Future<Option<Failure>> call({
    required String productId,
  });
}

@Injectable(as: DeleteItem)
class DeleteItemImpl implements DeleteItem {
  final InventoryRepository repository;

  const DeleteItemImpl({
    required this.repository,
  });

  @override
  Future<Option<Failure>> call({
    required String productId,
  }) async {
    return await repository.deleteProduct(
      productId: productId,
    );
  }
}
