import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_cubit.freezed.dart';
part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit()
      : super(
          NavigationState(
            currentIndex: 1,
          ),
        );

  void changeIndex(int index) {
    emit(
      state.copyWith(
        currentIndex: index,
      ),
    );
  }
}
