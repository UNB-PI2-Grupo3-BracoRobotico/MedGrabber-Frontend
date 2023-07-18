import 'package:grabber/features/on_boarding/data/models/get_signed_user_response_model.dart';
import 'package:grabber/features/on_boarding/data/models/user_creation_body_model.dart';

abstract class AuthDatasource {
  Future<void> createUser({
    required UserCreationBodyModel user,
  });

  Future<GetSignedUserResponseModel> getSignedUser({
    required String userId,
  });
}
