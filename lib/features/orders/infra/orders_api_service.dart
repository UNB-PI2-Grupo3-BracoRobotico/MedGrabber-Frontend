import 'package:dio/dio.dart' hide Headers;
import 'package:grabber/features/orders/data/models/get_orders_model_response.dart';
import 'package:retrofit/retrofit.dart';

import '../data/models/create_order_body_model.dart';

part 'orders_api_service.g.dart';

@RestApi()
abstract class OrdersApiService {
  factory OrdersApiService(
    Dio dio, {
    String baseUrl,
  }) = _OrdersApiService;

  @GET("/orders/")
  @Headers({'Content-type': 'application/json'})
  Future<GetOrdersModelResponse> getOrders();

  @POST("/orders/")
  @Headers({'Content-type': 'application/json'})
  Future<void> createOrder({
    @Body() required CreateOrderBodyModel model,
  });
}
