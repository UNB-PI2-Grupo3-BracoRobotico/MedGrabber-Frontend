import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grabber/features/inventory/domain/usecases/get_available_positions.dart';

part 'positions_available_cubit.freezed.dart';
part 'positions_available_state.dart';

class PositionsAvailableCubit extends Cubit<PositionsAvailableState> {
  final GetAvailablePositions getAvailablePositions;
  PositionsAvailableCubit({
    required this.getAvailablePositions,
  }) : super(
          const PositionsAvailableState.loading(),
        );

  Future<void> checkAvailablePositions() async {
    emit(const PositionsAvailableState.loading());
    final positionsOrFailure = await getAvailablePositions();
    emit(
      positionsOrFailure.fold(
        (_) => const PositionsAvailableState.error(),
        (positions) {
          if (positions.isEmpty) {
            return const PositionsAvailableState.noPositionsAvailable();
          }
          return PositionsAvailableState.availablePositions(
            positionOptions: positions,
          );
        },
      ),
    );
  }
}
