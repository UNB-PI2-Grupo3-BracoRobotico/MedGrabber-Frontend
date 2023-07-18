import 'package:dartz/dartz.dart';
import 'package:grabber/core/failures.dart';
import 'package:grabber/features/settings/data/datasources/settings_datasource.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/settings_repository.dart';

@Injectable(as: SettingsRepository)
class SettingsRepositoryImpl implements SettingsRepository {
  final SettingsDatasource datasource;

  const SettingsRepositoryImpl({required this.datasource});

  @override
  Future<Option<Failure>> updateEmail({
    required String email,
    required String userId,
  }) async {
    try {
      await datasource.updateEmail(
        email: email,
        userId: userId,
      );
      return const None();
    } catch (e) {
      return Some(
        UnhandledFailure(
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Option<Failure>> updatePhoneNumber({
    required String phoneNumber,
    required String userId,
  }) async {
    try {
      await datasource.updatePhoneNumber(
        phoneNumber: phoneNumber,
        userId: userId,
      );
      return const None();
    } catch (e) {
      return Some(
        UnhandledFailure(
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Option<Failure>> updateStoreName({
    required String storeName,
    required String userId,
  }) async {
    try {
      await datasource.updateStoreName(
        storeName: storeName,
        userId: userId,
      );
      return const None();
    } catch (e) {
      return Some(
        UnhandledFailure(
          message: e.toString(),
        ),
      );
    }
  }
}
