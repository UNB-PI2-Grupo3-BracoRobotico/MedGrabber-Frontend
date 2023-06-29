part of 'positions_available_cubit.dart';

@freezed
class PositionsAvailableState with _$PositionsAvailableState {
  const factory PositionsAvailableState.loading() = _Loading;
  const factory PositionsAvailableState.error() = _Error;
  const factory PositionsAvailableState.noPositionsAvailable() =
      _NoPositionsAvailable;
  const factory PositionsAvailableState.availablePositions({
    required List<String> positionOptions,
  }) = _AvailablePositions;
}
