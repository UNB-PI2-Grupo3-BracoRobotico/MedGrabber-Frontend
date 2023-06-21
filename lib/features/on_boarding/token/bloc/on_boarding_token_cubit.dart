import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'on_boarding_token_state.dart';
part 'on_boarding_token_cubit.freezed.dart';

class OnBoardingTokenCubit extends Cubit<OnBoardingTokenState> {
  OnBoardingTokenCubit() : super(OnBoardingTokenState.initial());

  Future<void> reset() async {
    emit(const OnBoardingTokenState.initial());
  }
}
