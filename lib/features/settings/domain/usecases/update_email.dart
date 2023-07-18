import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failures.dart';
import '../repositories/settings_repository.dart';

abstract class UpdateEmail {
  Future<Option<Failure>> call(
    String email,
    String userId,
  );
}

@Injectable(as: UpdateEmail)
class UpdateEmailImpl implements UpdateEmail {
  final SettingsRepository repository;

  const UpdateEmailImpl({
    required this.repository,
  });

  @override
  Future<Option<Failure>> call(
    String email,
    String userId,
  ) async {
    return await repository.updateEmail(
      email: email,
      userId: userId,
    );
  }
}
