import 'package:dartz/dartz.dart';
import 'package:grabber/core/failures.dart';
import 'package:grabber/features/orders/data/datasources/order_datasource.dart';
import 'package:grabber/features/orders/data/models/create_order_body_model.dart';
import 'package:grabber/features/orders/data/models/order_item_creation_model.dart';
import 'package:grabber/features/orders/domain/entities/dummy_product.dart';
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

  @override
  Future<Option<Failure>> createOrder({
    required List<DummyProduct> products,
    required String userId,
  }) async {
    try {
      double totalPrice = 0;
      List<String> productsIds = [];
      List<OrderItemCreationModel> orderItems = [];
      for (final product in products) {
        final amountForProduct = product.price * product.amount;
        totalPrice += amountForProduct;
        productsIds.add(product.id);
        orderItems.add(
          OrderItemCreationModel(
            productId: product.id,
            amount: product.amount,
            price: product.price,
          ),
        );
      }
      await datasource.createOrder(
        body: CreateOrderBodyModel(
          orderItems: orderItems,
          totalPrice: totalPrice,
          user: userId,
          paymentMethod: 'PIX',
        ),
      );
      return const None();
    } catch (e) {
      return Some(
        UnhandledFailure(
          message: e.toString(),
        ),
      );
    }
  }
}
