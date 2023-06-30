import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failures.dart';

abstract class UpdateEmail {
  Future<Option<Failure>> call(
    String storeName,
  );
}

@Injectable(as: UpdateEmail)
class UpdateEmailImpl implements UpdateEmail {
  // final SettingsRepository repository;

  UpdateEmailImpl();

  @override
  Future<Option<Failure>> call(String storeName) async {
    //TODO(Mauricio): Integrate with settings repository
    return const None();
  }
}
