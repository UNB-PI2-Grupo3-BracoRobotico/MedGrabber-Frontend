abstract class SettingsDatasource {
  Future<void> updateStoreName({
    required String storeName,
    required String userId,
  });

  Future<void> updatePhoneNumber({
    required String phoneNumber,
    required String userId,
  });

  Future<void> updateEmail({
    required String email,
    required String userId,
  });
}
