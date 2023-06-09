part of 'setup_status_bloc.dart';

@freezed
class SetupStatusEvent with _$SetupStatusEvent {
  const factory SetupStatusEvent.pairMachine() = _PairMachine;
}
