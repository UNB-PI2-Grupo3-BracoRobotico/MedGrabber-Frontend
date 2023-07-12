import 'package:grabber/features/settings/data/datasources/settings_datasource.dart';
import 'package:grabber/features/settings/data/models/update_email_body_model.dart';
import 'package:grabber/features/settings/data/models/update_phone_number_body_model.dart';
import 'package:grabber/features/settings/data/models/update_store_name_body_model.dart';
import 'package:injectable/injectable.dart';

import '../settings_api_service.dart';

@Injectable(as: SettingsDatasource)
class SettingsDatasourceImpl implements SettingsDatasource {
  final SettingsApiService apiService;

  const SettingsDatasourceImpl({
    required this.apiService,
  });

  @override
  Future<void> updateEmail({
    required String email,
    required String userId,
  }) async {
    try {
      await apiService.updateEmail(
        body: UpdateEmailBodyResponse(email: email),
        userId: userId,
      );
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> updatePhoneNumber({
    required String phoneNumber,
    required String userId,
  }) async {
    try {
      await apiService.updatePhoneNumber(
        body: UpdatePhoneNumberBodyModel(phoneNumber: phoneNumber),
        userId: userId,
      );
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> updateStoreName({
    required String storeName,
    required String userId,
  }) async {
    try {
      await apiService.updateStoreName(
        body: UpdateStoreNameBodyModel(storeName: storeName),
        userId: userId,
      );
    } catch (_) {
      rethrow;
    }
  }
}
