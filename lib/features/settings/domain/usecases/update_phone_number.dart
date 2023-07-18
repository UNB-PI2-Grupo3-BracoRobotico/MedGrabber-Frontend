import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failures.dart';
import '../repositories/settings_repository.dart';

abstract class UpdatePhoneNumber {
  Future<Option<Failure>> call(
    String phoneNumber,
    String userId,
  );
}

@Injectable(as: UpdatePhoneNumber)
class UpdatePhoneNumberImpl implements UpdatePhoneNumber {
  final SettingsRepository repository;

  const UpdatePhoneNumberImpl({
    required this.repository,
  });

  @override
  Future<Option<Failure>> call(
    String phoneNumber,
    String userId,
  ) async {
    return await repository.updatePhoneNumber(
      phoneNumber: phoneNumber,
      userId: userId,
    );
  }
}
