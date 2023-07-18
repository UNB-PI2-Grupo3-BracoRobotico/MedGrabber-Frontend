import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failures.dart';
import '../repositories/settings_repository.dart';

abstract class UpdateStoreName {
  Future<Option<Failure>> call(
    String storeName,
    String userId,
  );
}

@Injectable(as: UpdateStoreName)
class UpdateStoreNameImpl implements UpdateStoreName {
  final SettingsRepository repository;

  const UpdateStoreNameImpl({
    required this.repository,
  });

  @override
  Future<Option<Failure>> call(
    String storeName,
    String userId,
  ) async {
    return await repository.updateStoreName(
      storeName: storeName,
      userId: userId,
    );
  }
}
