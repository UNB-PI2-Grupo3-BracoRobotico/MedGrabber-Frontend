import 'package:dartz/dartz.dart';
import 'package:grabber/core/failures.dart';
import 'package:grabber/features/orders/domain/entities/dummy_product.dart';
import 'package:grabber/features/orders/domain/entities/order.dart';

abstract class OrderRepository {
  //TODO(Mauricio): Define if get will have any parameters
  Future<Either<Failure, List<OrderEntity>>> getOrders();

  Future<Option<Failure>> createOrder({
    required List<DummyProduct> products,
  });
}
