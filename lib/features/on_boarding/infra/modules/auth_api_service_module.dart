import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../auth_api_service.dart';

@module
abstract class AuthApiServiceModule {
  AuthApiService getService(@Named('dioInstance') Dio dio) =>
      AuthApiService(dio);
}
