// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignupState {
  String get token => throw _privateConstructorUsedError;
  String get tokenFailureText => throw _privateConstructorUsedError;
  bool get tokenIsValid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get isSubmiting => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupStateCopyWith<SignupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(
          SignupState value, $Res Function(SignupState) then) =
      _$SignupStateCopyWithImpl<$Res, SignupState>;
  @useResult
  $Res call(
      {String token,
      String tokenFailureText,
      bool tokenIsValid,
      String email,
      String password,
      bool isSubmiting,
      String phoneNumber});
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res, $Val extends SignupState>
    implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? tokenFailureText = null,
    Object? tokenIsValid = null,
    Object? email = null,
    Object? password = null,
    Object? isSubmiting = null,
    Object? phoneNumber = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      tokenFailureText: null == tokenFailureText
          ? _value.tokenFailureText
          : tokenFailureText // ignore: cast_nullable_to_non_nullable
              as String,
      tokenIsValid: null == tokenIsValid
          ? _value.tokenIsValid
          : tokenIsValid // ignore: cast_nullable_to_non_nullable
              as bool,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmiting: null == isSubmiting
          ? _value.isSubmiting
          : isSubmiting // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignupStateCopyWith<$Res>
    implements $SignupStateCopyWith<$Res> {
  factory _$$_SignupStateCopyWith(
          _$_SignupState value, $Res Function(_$_SignupState) then) =
      __$$_SignupStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String token,
      String tokenFailureText,
      bool tokenIsValid,
      String email,
      String password,
      bool isSubmiting,
      String phoneNumber});
}

/// @nodoc
class __$$_SignupStateCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$_SignupState>
    implements _$$_SignupStateCopyWith<$Res> {
  __$$_SignupStateCopyWithImpl(
      _$_SignupState _value, $Res Function(_$_SignupState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? tokenFailureText = null,
    Object? tokenIsValid = null,
    Object? email = null,
    Object? password = null,
    Object? isSubmiting = null,
    Object? phoneNumber = null,
  }) {
    return _then(_$_SignupState(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      tokenFailureText: null == tokenFailureText
          ? _value.tokenFailureText
          : tokenFailureText // ignore: cast_nullable_to_non_nullable
              as String,
      tokenIsValid: null == tokenIsValid
          ? _value.tokenIsValid
          : tokenIsValid // ignore: cast_nullable_to_non_nullable
              as bool,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmiting: null == isSubmiting
          ? _value.isSubmiting
          : isSubmiting // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignupState implements _SignupState {
  const _$_SignupState(
      {required this.token,
      required this.tokenFailureText,
      required this.tokenIsValid,
      required this.email,
      required this.password,
      required this.isSubmiting,
      required this.phoneNumber});

  @override
  final String token;
  @override
  final String tokenFailureText;
  @override
  final bool tokenIsValid;
  @override
  final String email;
  @override
  final String password;
  @override
  final bool isSubmiting;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'SignupState(token: $token, tokenFailureText: $tokenFailureText, tokenIsValid: $tokenIsValid, email: $email, password: $password, isSubmiting: $isSubmiting, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignupState &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.tokenFailureText, tokenFailureText) ||
                other.tokenFailureText == tokenFailureText) &&
            (identical(other.tokenIsValid, tokenIsValid) ||
                other.tokenIsValid == tokenIsValid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isSubmiting, isSubmiting) ||
                other.isSubmiting == isSubmiting) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token, tokenFailureText,
      tokenIsValid, email, password, isSubmiting, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignupStateCopyWith<_$_SignupState> get copyWith =>
      __$$_SignupStateCopyWithImpl<_$_SignupState>(this, _$identity);
}

abstract class _SignupState implements SignupState {
  const factory _SignupState(
      {required final String token,
      required final String tokenFailureText,
      required final bool tokenIsValid,
      required final String email,
      required final String password,
      required final bool isSubmiting,
      required final String phoneNumber}) = _$_SignupState;

  @override
  String get token;
  @override
  String get tokenFailureText;
  @override
  bool get tokenIsValid;
  @override
  String get email;
  @override
  String get password;
  @override
  bool get isSubmiting;
  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$_SignupStateCopyWith<_$_SignupState> get copyWith =>
      throw _privateConstructorUsedError;
}
