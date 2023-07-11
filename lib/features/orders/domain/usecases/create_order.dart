import 'package:dartz/dartz.dart';
import 'package:grabber/core/failures.dart';
import 'package:injectable/injectable.dart';

import '../entities/dummy_product.dart';
import '../repositories/order_repository.dart';

abstract class CreateOrder {
  Future<Option<Failure>> call({
    required List<DummyProduct> products,
  });
}

@Injectable(as: CreateOrder)
class CreateOrderImpl implements CreateOrder {
  final OrderRepository repository;

  const CreateOrderImpl({
    required this.repository,
  });

  @override
  Future<Option<Failure>> call({
    required List<DummyProduct> products,
  }) async {
    return await repository.createOrder(
      products: products,
    );
  }
}
