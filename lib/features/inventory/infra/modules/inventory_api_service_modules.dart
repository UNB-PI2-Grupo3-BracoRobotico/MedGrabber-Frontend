import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../inventory_api_service.dart';

@module
abstract class InventoryApiServiceModule {
  InventoryApiService getService(@Named('dioInstance') Dio dio) =>
      InventoryApiService(dio);
}
