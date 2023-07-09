part of 'session_manager_cubit.dart';

@freezed
class SessionManagerState with _$SessionManagerState {
  const factory SessionManagerState.initial() = _Initial;
  const factory SessionManagerState.authenticated(
    Stockist user,
  ) = _Authenticated;
  const factory SessionManagerState.unauthenticated() = _Unauthenticated;
  const factory SessionManagerState.loading() = _Loading;
}
