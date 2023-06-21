import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grabber/features/settings/domain/usecases/update_phone_number.dart';

part 'update_phone_cubit.freezed.dart';
part 'update_phone_state.dart';

class UpdatePhoneCubit extends Cubit<UpdatePhoneState> {
  final UpdatePhoneNumber _updatePhoneNumber;
  UpdatePhoneCubit({
    required UpdatePhoneNumber updatePhoneNumber,
  })  : _updatePhoneNumber = updatePhoneNumber,
        super(const UpdatePhoneState.initial());

  Future<void> updatePhoneNumber(
    String newPhoneNumber,
  ) async {
    emit(const UpdatePhoneState.loading());
    final sucessOrFailureUpdate = await _updatePhoneNumber.call(
      newPhoneNumber,
    );
    emit(
      sucessOrFailureUpdate.fold(
        UpdatePhoneState.success,
        (_) => const UpdatePhoneState.error(),
      ),
    );
  }

  Future<void> reset() async {
    emit(const UpdatePhoneState.initial());
  }
}
