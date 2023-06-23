part of 'navigation_cubit.dart';

@freezed
class NavigationState with _$NavigationState {
  factory NavigationState({
    required int currentIndex,
  }) = _NavigationState;
}
