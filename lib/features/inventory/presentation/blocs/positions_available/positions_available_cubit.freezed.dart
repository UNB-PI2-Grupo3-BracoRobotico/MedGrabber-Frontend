// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'positions_available_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PositionsAvailableState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() noPositionsAvailable,
    required TResult Function(List<String> positionOptions) availablePositions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? noPositionsAvailable,
    TResult? Function(List<String> positionOptions)? availablePositions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? noPositionsAvailable,
    TResult Function(List<String> positionOptions)? availablePositions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_NoPositionsAvailable value) noPositionsAvailable,
    required TResult Function(_AvailablePositions value) availablePositions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_NoPositionsAvailable value)? noPositionsAvailable,
    TResult? Function(_AvailablePositions value)? availablePositions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_NoPositionsAvailable value)? noPositionsAvailable,
    TResult Function(_AvailablePositions value)? availablePositions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionsAvailableStateCopyWith<$Res> {
  factory $PositionsAvailableStateCopyWith(PositionsAvailableState value,
          $Res Function(PositionsAvailableState) then) =
      _$PositionsAvailableStateCopyWithImpl<$Res, PositionsAvailableState>;
}

/// @nodoc
class _$PositionsAvailableStateCopyWithImpl<$Res,
        $Val extends PositionsAvailableState>
    implements $PositionsAvailableStateCopyWith<$Res> {
  _$PositionsAvailableStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$PositionsAvailableStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'PositionsAvailableState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() noPositionsAvailable,
    required TResult Function(List<String> positionOptions) availablePositions,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? noPositionsAvailable,
    TResult? Function(List<String> positionOptions)? availablePositions,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? noPositionsAvailable,
    TResult Function(List<String> positionOptions)? availablePositions,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_NoPositionsAvailable value) noPositionsAvailable,
    required TResult Function(_AvailablePositions value) availablePositions,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_NoPositionsAvailable value)? noPositionsAvailable,
    TResult? Function(_AvailablePositions value)? availablePositions,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_NoPositionsAvailable value)? noPositionsAvailable,
    TResult Function(_AvailablePositions value)? availablePositions,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PositionsAvailableState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$PositionsAvailableStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'PositionsAvailableState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() noPositionsAvailable,
    required TResult Function(List<String> positionOptions) availablePositions,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? noPositionsAvailable,
    TResult? Function(List<String> positionOptions)? availablePositions,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? noPositionsAvailable,
    TResult Function(List<String> positionOptions)? availablePositions,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_NoPositionsAvailable value) noPositionsAvailable,
    required TResult Function(_AvailablePositions value) availablePositions,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_NoPositionsAvailable value)? noPositionsAvailable,
    TResult? Function(_AvailablePositions value)? availablePositions,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_NoPositionsAvailable value)? noPositionsAvailable,
    TResult Function(_AvailablePositions value)? availablePositions,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements PositionsAvailableState {
  const factory _Error() = _$_Error;
}

/// @nodoc
abstract class _$$_NoPositionsAvailableCopyWith<$Res> {
  factory _$$_NoPositionsAvailableCopyWith(_$_NoPositionsAvailable value,
          $Res Function(_$_NoPositionsAvailable) then) =
      __$$_NoPositionsAvailableCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoPositionsAvailableCopyWithImpl<$Res>
    extends _$PositionsAvailableStateCopyWithImpl<$Res, _$_NoPositionsAvailable>
    implements _$$_NoPositionsAvailableCopyWith<$Res> {
  __$$_NoPositionsAvailableCopyWithImpl(_$_NoPositionsAvailable _value,
      $Res Function(_$_NoPositionsAvailable) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NoPositionsAvailable implements _NoPositionsAvailable {
  const _$_NoPositionsAvailable();

  @override
  String toString() {
    return 'PositionsAvailableState.noPositionsAvailable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoPositionsAvailable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() noPositionsAvailable,
    required TResult Function(List<String> positionOptions) availablePositions,
  }) {
    return noPositionsAvailable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? noPositionsAvailable,
    TResult? Function(List<String> positionOptions)? availablePositions,
  }) {
    return noPositionsAvailable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? noPositionsAvailable,
    TResult Function(List<String> positionOptions)? availablePositions,
    required TResult orElse(),
  }) {
    if (noPositionsAvailable != null) {
      return noPositionsAvailable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_NoPositionsAvailable value) noPositionsAvailable,
    required TResult Function(_AvailablePositions value) availablePositions,
  }) {
    return noPositionsAvailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_NoPositionsAvailable value)? noPositionsAvailable,
    TResult? Function(_AvailablePositions value)? availablePositions,
  }) {
    return noPositionsAvailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_NoPositionsAvailable value)? noPositionsAvailable,
    TResult Function(_AvailablePositions value)? availablePositions,
    required TResult orElse(),
  }) {
    if (noPositionsAvailable != null) {
      return noPositionsAvailable(this);
    }
    return orElse();
  }
}

abstract class _NoPositionsAvailable implements PositionsAvailableState {
  const factory _NoPositionsAvailable() = _$_NoPositionsAvailable;
}

/// @nodoc
abstract class _$$_AvailablePositionsCopyWith<$Res> {
  factory _$$_AvailablePositionsCopyWith(_$_AvailablePositions value,
          $Res Function(_$_AvailablePositions) then) =
      __$$_AvailablePositionsCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> positionOptions});
}

/// @nodoc
class __$$_AvailablePositionsCopyWithImpl<$Res>
    extends _$PositionsAvailableStateCopyWithImpl<$Res, _$_AvailablePositions>
    implements _$$_AvailablePositionsCopyWith<$Res> {
  __$$_AvailablePositionsCopyWithImpl(
      _$_AvailablePositions _value, $Res Function(_$_AvailablePositions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? positionOptions = null,
  }) {
    return _then(_$_AvailablePositions(
      positionOptions: null == positionOptions
          ? _value._positionOptions
          : positionOptions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_AvailablePositions implements _AvailablePositions {
  const _$_AvailablePositions({required final List<String> positionOptions})
      : _positionOptions = positionOptions;

  final List<String> _positionOptions;
  @override
  List<String> get positionOptions {
    if (_positionOptions is EqualUnmodifiableListView) return _positionOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_positionOptions);
  }

  @override
  String toString() {
    return 'PositionsAvailableState.availablePositions(positionOptions: $positionOptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AvailablePositions &&
            const DeepCollectionEquality()
                .equals(other._positionOptions, _positionOptions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_positionOptions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AvailablePositionsCopyWith<_$_AvailablePositions> get copyWith =>
      __$$_AvailablePositionsCopyWithImpl<_$_AvailablePositions>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() noPositionsAvailable,
    required TResult Function(List<String> positionOptions) availablePositions,
  }) {
    return availablePositions(positionOptions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? noPositionsAvailable,
    TResult? Function(List<String> positionOptions)? availablePositions,
  }) {
    return availablePositions?.call(positionOptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? noPositionsAvailable,
    TResult Function(List<String> positionOptions)? availablePositions,
    required TResult orElse(),
  }) {
    if (availablePositions != null) {
      return availablePositions(positionOptions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_NoPositionsAvailable value) noPositionsAvailable,
    required TResult Function(_AvailablePositions value) availablePositions,
  }) {
    return availablePositions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_NoPositionsAvailable value)? noPositionsAvailable,
    TResult? Function(_AvailablePositions value)? availablePositions,
  }) {
    return availablePositions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_NoPositionsAvailable value)? noPositionsAvailable,
    TResult Function(_AvailablePositions value)? availablePositions,
    required TResult orElse(),
  }) {
    if (availablePositions != null) {
      return availablePositions(this);
    }
    return orElse();
  }
}

abstract class _AvailablePositions implements PositionsAvailableState {
  const factory _AvailablePositions(
      {required final List<String> positionOptions}) = _$_AvailablePositions;

  List<String> get positionOptions;
  @JsonKey(ignore: true)
  _$$_AvailablePositionsCopyWith<_$_AvailablePositions> get copyWith =>
      throw _privateConstructorUsedError;
}
