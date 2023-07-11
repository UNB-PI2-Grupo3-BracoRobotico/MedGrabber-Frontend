import 'package:dio/dio.dart' hide Headers;
import 'package:grabber/features/orders/data/models/get_orders_model_response.dart';
import 'package:grabber/features/orders/data/models/order_model.dart';
import 'package:retrofit/retrofit.dart';

part 'orders_api_service.g.dart';

@RestApi()
abstract class OrdersApiService {
  factory OrdersApiService(
    Dio dio, {
    String baseUrl,
  }) = _OrdersApiService;

  @GET("/orders")
  @Headers({'Content-type': 'application/json'})
  Future<GetOrdersModelResponse> getOrders();
}
