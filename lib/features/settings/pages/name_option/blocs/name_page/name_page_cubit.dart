import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grabber/features/settings/domain/usecases/update_store_name.dart';

part 'name_page_cubit.freezed.dart';
part 'name_page_state.dart';

class NamePageCubit extends Cubit<NamePageState> {
  final UpdateStoreName _updateStoreName;
  NamePageCubit({
    required UpdateStoreName updateStoreName,
  })  : _updateStoreName = updateStoreName,
        super(const NamePageState.initial());

  Future<void> updateStoreName(
    String newStoreName,
    String userId,
  ) async {
    emit(const NamePageState.loading());
    final sucessOrFailureUpdate = await _updateStoreName.call(
      newStoreName,
      userId,
    );
    emit(sucessOrFailureUpdate.fold(
      NamePageState.success,
      (_) => const NamePageState.error(),
    ));
  }

  Future<void> reset() async {
    emit(const NamePageState.initial());
  }
}
