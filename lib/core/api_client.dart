import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class ApiClient {
  final BaseOptions _baseOptions = BaseOptions(
    baseUrl: "http://localhost:8000",
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
