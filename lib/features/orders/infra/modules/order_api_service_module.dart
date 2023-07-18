import 'package:dio/dio.dart';
import 'package:grabber/features/orders/infra/orders_api_service.dart';
import 'package:injectable/injectable.dart';

@module
abstract class OrderApiServiceModule {
  OrdersApiService getService(@Named('dioInstance') Dio dio) =>
      OrdersApiService(dio);
}
