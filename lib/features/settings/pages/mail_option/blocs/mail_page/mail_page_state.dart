part of 'mail_page_cubit.dart';

@freezed
class MailPageState with _$MailPageState {
  const factory MailPageState.initial() = _Initial;
  const factory MailPageState.loading() = _Loading;
  const factory MailPageState.success() = _success;
  const factory MailPageState.error() = _Error;
}
