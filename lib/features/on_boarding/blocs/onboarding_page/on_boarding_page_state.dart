part of 'on_boarding_page_cubit.dart';

@freezed
class OnBoardingPageState with _$OnBoardingPageState {
  const factory OnBoardingPageState.initial() = _Initial;
  const factory OnBoardingPageState.loading() = _Loading;
  const factory OnBoardingPageState.success() = _Success;
  const factory OnBoardingPageState.error() = _Error;
}
