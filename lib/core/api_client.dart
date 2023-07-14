import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'injection.dart';

@singleton
class ApiClient {
  final BaseOptions _baseOptions = BaseOptions(
    baseUrl: "http://192.168.149.68:8000",
    connectTimeout: const Duration(milliseconds: 10000),
    receiveTimeout: const Duration(milliseconds: 10000),
  );

  final Dio dioInstance = Dio();

  ApiClient() {
    _onBaseOptionsUpdate();
  }

  void _onBaseOptionsUpdate() {
    dioInstance.options = _baseOptions;
  }
}

@module
abstract class DioInstance {
  @Named('dioInstance')
  Dio get dioInstance => getIt.get<ApiClient>().dioInstance;
}
