import 'package:dio/dio.dart' hide Headers;
import 'package:grabber/features/settings/data/models/update_email_body_model.dart';
import 'package:grabber/features/settings/data/models/update_phone_number_body_model.dart';
import 'package:grabber/features/settings/data/models/update_store_name_body_model.dart';
import 'package:retrofit/retrofit.dart';

part 'settings_api_service.g.dart';

@RestApi()
abstract class SettingsApiService {
  factory SettingsApiService(
    Dio dio, {
    String baseUrl,
  }) = _SettingsApiService;

  @PATCH("/users/{userId}")
  @Headers({'Content-type': 'application/json'})
  Future<void> updateStoreName({
    @Path("userId") required String userId,
    @Body() required UpdateStoreNameBodyModel body,
  });

  @PATCH("/users/{userId}")
  @Headers({'Content-type': 'application/json'})
  Future<void> updatePhoneNumber({
    @Path("userId") required String userId,
    @Body() required UpdatePhoneNumberBodyModel body,
  });

  @PATCH("/users/{userId}")
  @Headers({'Content-type': 'application/json'})
  Future<void> updateEmail({
    @Path("userId") required String userId,
    @Body() required UpdateEmailBodyResponse body,
  });
}
