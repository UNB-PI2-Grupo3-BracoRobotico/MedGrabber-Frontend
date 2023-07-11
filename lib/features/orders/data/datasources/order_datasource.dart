import 'package:grabber/features/orders/data/models/create_order_body_model.dart';
import 'package:grabber/features/orders/data/models/order_model.dart';

abstract class OrderDatasource {
  Future<List<OrderModel>> getOrders();

  Future<void> createOrder({
    required CreateOrderBodyModel body,
  });
}
