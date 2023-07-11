import 'package:grabber/features/orders/data/models/order_model.dart';

abstract class OrderDatasource {
  Future<List<OrderModel>> getOrders();
}
