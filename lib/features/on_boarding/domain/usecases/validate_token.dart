import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failures.dart';

abstract class ValidateToken {
  Future<Option<Failure>> call(
    String token,
  );
}

@Injectable(as: ValidateToken)
class ValidateTokenImpl implements ValidateToken {
  ValidateTokenImpl();

  @override
  Future<Option<Failure>> call(String token) async {
    //TODO(Natanael): Integrate with settings repository
    return const None();
  }
}
