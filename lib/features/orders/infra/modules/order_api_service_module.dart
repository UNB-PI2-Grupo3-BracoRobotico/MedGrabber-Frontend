import 'package:dio/dio.dart';
import 'package:grabber/core/api_client.dart';
import 'package:grabber/core/injection.dart';
import 'package:grabber/features/orders/infra/orders_api_service.dart';
import 'package:injectable/injectable.dart';

@module
abstract class OrderApiServiceModule {
  @Named('dioInstance')
  Dio get dioInstance => getIt.get<ApiClient>().dioInstance;

  OrdersApiService getService(@Named('dioInstance') Dio dio) =>
      OrdersApiService(dio);
}
