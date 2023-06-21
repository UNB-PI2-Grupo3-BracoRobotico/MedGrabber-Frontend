part of 'on_boarding_token_cubit.dart';

@freezed
class OnBoardingTokenState with _$OnBoardingTokenState {
  const factory OnBoardingTokenState.initial() = _Initial;
  const factory OnBoardingTokenState.loading() = _Loading;
  const factory OnBoardingTokenState.success() = _Success;
  const factory OnBoardingTokenState.error() = _Error;
}
