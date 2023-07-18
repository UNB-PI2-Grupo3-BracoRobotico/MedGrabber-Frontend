import 'package:dartz/dartz.dart';
import 'package:grabber/core/failures.dart';
import 'package:grabber/features/orders/domain/entities/order.dart';
import 'package:grabber/features/orders/domain/repositories/order_repository.dart';
import 'package:injectable/injectable.dart';

abstract class GetOrders {
  Future<Either<Failure, List<OrderEntity>>> call();
}

@Injectable(as: GetOrders)
class GetOrdersImpl implements GetOrders {
  final OrderRepository repository;

  const GetOrdersImpl({
    required this.repository,
  });

  @override
  Future<Either<Failure, List<OrderEntity>>> call() async {
    final result = await repository.getOrders();
    return result;
  }
}
