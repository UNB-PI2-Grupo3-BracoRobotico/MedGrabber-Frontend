import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grabber/features/settings/domain/usecases/update_email.dart';

part 'mail_page_cubit.freezed.dart';
part 'mail_page_state.dart';

class MailPageCubit extends Cubit<MailPageState> {
  final UpdateEmail _updateEmail;
  MailPageCubit({
    required UpdateEmail updateEmail,
  })  : _updateEmail = updateEmail,
        super(const MailPageState.initial());

  Future<void> updateUserMail(
    String newEmail,
    String userId,
  ) async {
    emit(const MailPageState.loading());
    final sucessOrFailureUpdate = await _updateEmail.call(
      newEmail,
      userId,
    );
    emit(sucessOrFailureUpdate.fold(
      MailPageState.success,
      (_) => const MailPageState.error(),
    ));
  }

  Future<void> reset() async {
    emit(const MailPageState.initial());
  }
}
