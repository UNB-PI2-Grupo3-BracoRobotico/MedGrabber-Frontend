import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'setup_status_bloc.freezed.dart';
part 'setup_status_event.dart';
part 'setup_status_state.dart';

class SetupStatusBloc extends Bloc<SetupStatusEvent, SetupStatusState> {
  SetupStatusBloc() : super(const SetupStatusState.initial()) {
    on<SetupStatusEvent>(
      (event, emit) async {
        await event.when(
          pairMachine: () async {
            emit(const SetupStatusState.loading());
            await Future.delayed(const Duration(seconds: 2));
            //TODO(Mauricio): Integrate method with usecases
            // emit(const SetupStatusState.error());
            emit(const SetupStatusState.paired());
          },
        );
      },
    );
  }
}
