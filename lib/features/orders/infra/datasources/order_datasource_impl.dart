import 'package:grabber/features/orders/data/datasources/order_datasource.dart';
import 'package:grabber/features/orders/data/models/create_order_body_model.dart';
import 'package:grabber/features/orders/data/models/order_model.dart';
import 'package:grabber/features/orders/infra/orders_api_service.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: OrderDatasource)
class OrderDatasourceImpl implements OrderDatasource {
  final OrdersApiService apiService;

  OrderDatasourceImpl({required this.apiService});

  @override
  Future<List<OrderModel>> getOrders() async {
    try {
      final result = await apiService.getOrders();
      return result.orders;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> createOrder({required CreateOrderBodyModel body}) async {
    try {
      await apiService.createOrder(
        model: body,
      );
      return;
    } catch (_) {
      rethrow;
    }
  }
}
