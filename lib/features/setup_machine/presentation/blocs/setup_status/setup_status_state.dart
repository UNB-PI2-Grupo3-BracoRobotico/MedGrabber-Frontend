part of 'setup_status_bloc.dart';

@freezed
class SetupStatusState with _$SetupStatusState {
  const factory SetupStatusState.initial() = _Initial;
  const factory SetupStatusState.loading() = _Loading;
  const factory SetupStatusState.paired() = _Paired;
  const factory SetupStatusState.error() = _Error;
}
