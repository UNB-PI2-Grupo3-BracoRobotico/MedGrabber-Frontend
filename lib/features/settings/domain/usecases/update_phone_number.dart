import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failures.dart';

abstract class UpdatePhoneNumber {
  Future<Option<Failure>> call(
    String phoneNumber,
  );
}

@Injectable(as: UpdatePhoneNumber)
class UpdatePhoneNumberImpl implements UpdatePhoneNumber {
  // final SettingsRepository repository;

  UpdatePhoneNumberImpl();

  @override
  Future<Option<Failure>> call(String phoneNumber) async {
    //TODO(Mauricio): Integrate with settings repository
    return const None();
  }
}
