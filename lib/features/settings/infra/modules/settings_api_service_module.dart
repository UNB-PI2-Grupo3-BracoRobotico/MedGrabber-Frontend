import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../settings_api_service.dart';

@module
abstract class SettingsApiServiceModule {
  SettingsApiService getService(@Named('dioInstance') Dio dio) =>
      SettingsApiService(dio);
}
