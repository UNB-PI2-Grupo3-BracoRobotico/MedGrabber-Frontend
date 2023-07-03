// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgotten_password_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForgottenPasswordState {
  bool get isValidEmail => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgottenPasswordStateCopyWith<ForgottenPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgottenPasswordStateCopyWith<$Res> {
  factory $ForgottenPasswordStateCopyWith(ForgottenPasswordState value,
          $Res Function(ForgottenPasswordState) then) =
      _$ForgottenPasswordStateCopyWithImpl<$Res, ForgottenPasswordState>;
  @useResult
  $Res call({bool isValidEmail});
}

/// @nodoc
class _$ForgottenPasswordStateCopyWithImpl<$Res,
        $Val extends ForgottenPasswordState>
    implements $ForgottenPasswordStateCopyWith<$Res> {
  _$ForgottenPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValidEmail = null,
  }) {
    return _then(_value.copyWith(
      isValidEmail: null == isValidEmail
          ? _value.isValidEmail
          : isValidEmail // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ForgottenPasswordStateCopyWith<$Res>
    implements $ForgottenPasswordStateCopyWith<$Res> {
  factory _$$_ForgottenPasswordStateCopyWith(_$_ForgottenPasswordState value,
          $Res Function(_$_ForgottenPasswordState) then) =
      __$$_ForgottenPasswordStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isValidEmail});
}

/// @nodoc
class __$$_ForgottenPasswordStateCopyWithImpl<$Res>
    extends _$ForgottenPasswordStateCopyWithImpl<$Res,
        _$_ForgottenPasswordState>
    implements _$$_ForgottenPasswordStateCopyWith<$Res> {
  __$$_ForgottenPasswordStateCopyWithImpl(_$_ForgottenPasswordState _value,
      $Res Function(_$_ForgottenPasswordState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValidEmail = null,
  }) {
    return _then(_$_ForgottenPasswordState(
      isValidEmail: null == isValidEmail
          ? _value.isValidEmail
          : isValidEmail // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ForgottenPasswordState implements _ForgottenPasswordState {
  const _$_ForgottenPasswordState({required this.isValidEmail});

  @override
  final bool isValidEmail;

  @override
  String toString() {
    return 'ForgottenPasswordState(isValidEmail: $isValidEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForgottenPasswordState &&
            (identical(other.isValidEmail, isValidEmail) ||
                other.isValidEmail == isValidEmail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isValidEmail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForgottenPasswordStateCopyWith<_$_ForgottenPasswordState> get copyWith =>
      __$$_ForgottenPasswordStateCopyWithImpl<_$_ForgottenPasswordState>(
          this, _$identity);
}

abstract class _ForgottenPasswordState implements ForgottenPasswordState {
  const factory _ForgottenPasswordState({required final bool isValidEmail}) =
      _$_ForgottenPasswordState;

  @override
  bool get isValidEmail;
  @override
  @JsonKey(ignore: true)
  _$$_ForgottenPasswordStateCopyWith<_$_ForgottenPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
