part of 'name_page_cubit.dart';

@freezed
class NamePageState with _$NamePageState {
  const factory NamePageState.initial() = _Initial;
  const factory NamePageState.loading() = _Loading;
  const factory NamePageState.success() = _success;
  const factory NamePageState.error() = _Error;
}
