import 'package:dartz/dartz.dart';
import 'package:grabber/core/failures.dart';
import 'package:grabber/features/orders/data/datasources/order_datasource.dart';
import 'package:grabber/features/orders/domain/entities/order.dart';
import 'package:grabber/features/orders/domain/repositories/order_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: OrderRepository)
class OrderRepositoryImpl implements OrderRepository {
  final OrderDatasource datasource;

  const OrderRepositoryImpl({
    required this.datasource,
  });

  @override
  Future<Either<Failure, List<OrderEntity>>> getOrders() async {
    try {
      final model = await datasource.getOrders();
      return Right(
        model
            .map(
              (orderModel) => orderModel.toEntity(
                orderModel,
              ),
            )
            .toList(),
      );
    } catch (e) {
      return Left(
        UnhandledFailure(
          message: e.toString(),
        ),
      );
    }
  }
}
