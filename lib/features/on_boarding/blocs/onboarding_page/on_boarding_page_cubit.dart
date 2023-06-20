import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'on_boarding_page_cubit.freezed.dart';
part 'on_boarding_page_state.dart';

class OnBoardingPageCubit extends Cubit<OnBoardingPageState> {
  final UpdateStoreName _updateStoreName;
  OnBoardingPageCubit({
    required UpdateStoreName updateStoreName,
  })  : _updateStoreName = updateStoreName,
        super(const OnBoardingPageState.initial());

  Future<void> updateStoreName(String newStoreName) async {
    emit(const OnBoardingPageState.loading());
    final sucessOrFailureUpdate = await _updateStoreName.call(newStoreName);
    emit(sucessOrFailureUpdate.fold(
      OnBoardingPageState.success,
      (_) => const OnBoardingPageState.error(),
    ));
  }

  Future<void> reset() async {
    emit(const OnBoardingPageState.initial());
  }
}
