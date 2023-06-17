import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failures.dart';

abstract class UpdateStoreName {
  Future<Option<Failure>> call(
    String storeName,
  );
}

@Injectable(as: UpdateStoreName)
class UpdateStoreNameImpl implements UpdateStoreName {
  // final SettingsRepository repository;

  UpdateStoreNameImpl();

  @override
  Future<Option<Failure>> call(String storeName) async {
    //TODO(Mauricio): Integrate with settings repository
    return const None();
  }
}
