import 'package:grabber/features/on_boarding/data/datasources/auth_datasource.dart';
import 'package:grabber/features/on_boarding/data/models/get_signed_user_response_model.dart';
import 'package:grabber/features/on_boarding/data/models/user_creation_body_model.dart';
import 'package:grabber/features/on_boarding/infra/auth_api_service.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthDatasource)
class AuthDatasourceImpl implements AuthDatasource {
  final AuthApiService apiService;

  const AuthDatasourceImpl({required this.apiService});

  @override
  Future<void> createUser({required UserCreationBodyModel user}) async {
    try {
      await apiService.createUser(user: user);
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<GetSignedUserResponseModel> getSignedUser({
    required String userId,
  }) async {
    try {
      return await apiService.getSignedUser(
        userId: userId,
      );
    } catch (_) {
      rethrow;
    }
  }
}
