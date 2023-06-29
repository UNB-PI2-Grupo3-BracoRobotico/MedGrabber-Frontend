import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'positions_available_cubit.freezed.dart';
part 'positions_available_state.dart';

class PositionsAvailableCubit extends Cubit<PositionsAvailableState> {
  PositionsAvailableCubit()
      : super(
          const PositionsAvailableState.loading(),
        );

  Future<void> checkAvailablePositions() async {
    emit(const PositionsAvailableState.loading());
    await Future.delayed(const Duration(seconds: 1));
    //TODO(Mauricio): Remove mock info
    emit(
      const PositionsAvailableState.availablePositions(
        positionOptions: ['A3', 'A4', 'A5', 'A6', 'A7', 'A8', 'A9'],
      ),
    );
  }
}
