import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:grabber/core/failures.dart';
import 'package:injectable/injectable.dart';

abstract class DeleteItem {
  Future<Option<Failure>> call();
}

@Injectable(as: DeleteItem)
class DeleteItemImpl implements DeleteItem {
  @override
  Future<Option<Failure>> call() async {
    await Future.delayed(const Duration(seconds: 2));
    log(
      'Item excluído(mock)',
      name: 'Delete item',
    );
    //TODO(Mauricio): Implement integration with data layer
    return const None();
  }
}
