import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'injection.dart';

@singleton
class ApiClient {
  String ipAddress = 'filipe.local';
  final BaseOptions _baseOptions = BaseOptions(
    baseUrl: "http://filipe.local:8000",
    connectTimeout: const Duration(milliseconds: 10000),
    receiveTimeout: const Duration(milliseconds: 10000),
  );

  final Dio dioInstance = Dio();

  ApiClient() {
    onBaseOptionsUpdate(ipAddress);
  }

  void onBaseOptionsUpdate(String ipAddress) {
    _baseOptions.baseUrl = "http://$ipAddress:8000";
    dioInstance.options = _baseOptions;
  }
}

@module
abstract class DioInstance {
  @Named('dioInstance')
  Dio get dioInstance => getIt.get<ApiClient>().dioInstance;
}
