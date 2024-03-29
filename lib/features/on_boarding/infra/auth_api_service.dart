import 'package:dio/dio.dart' hide Headers;
import 'package:grabber/features/on_boarding/data/models/get_signed_user_response_model.dart';
import 'package:grabber/features/on_boarding/data/models/user_creation_body_model.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api_service.g.dart';

@RestApi()
abstract class AuthApiService {
  factory AuthApiService(
    Dio dio, {
    String baseUrl,
  }) = _AuthApiService;

  @POST("/users/")
  @Headers({'Content-type': 'application/json'})
  Future<void> createUser({
    @Body() required UserCreationBodyModel user,
  });

  @GET("/users/{userId}")
  @Headers({'Content-type': 'application/json'})
  Future<GetSignedUserResponseModel> getSignedUser({
    @Path("userId") required String userId,
  });
}
