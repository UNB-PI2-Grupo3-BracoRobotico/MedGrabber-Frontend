import 'package:grabber/features/orders/data/datasources/order_datasource.dart';
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
      print(_);
      rethrow;
    }
  }
}
