// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  _LoginState call(
      {required LoginResult result,
      String? emailProblem,
      String? passwordProblem}) {
    return _LoginState(
      result: result,
      emailProblem: emailProblem,
      passwordProblem: passwordProblem,
    );
  }
}

/// @nodoc
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  LoginResult get result => throw _privateConstructorUsedError;
  String? get emailProblem => throw _privateConstructorUsedError;
  String? get passwordProblem => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call(
      {LoginResult result, String? emailProblem, String? passwordProblem});

  $LoginResultCopyWith<$Res> get result;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? emailProblem = freezed,
    Object? passwordProblem = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as LoginResult,
      emailProblem: emailProblem == freezed
          ? _value.emailProblem
          : emailProblem // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordProblem: passwordProblem == freezed
          ? _value.passwordProblem
          : passwordProblem // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $LoginResultCopyWith<$Res> get result {
    return $LoginResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
abstract class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(
          _LoginState value, $Res Function(_LoginState) then) =
      __$LoginStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {LoginResult result, String? emailProblem, String? passwordProblem});

  @override
  $LoginResultCopyWith<$Res> get result;
}

/// @nodoc
class __$LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(
      _LoginState _value, $Res Function(_LoginState) _then)
      : super(_value, (v) => _then(v as _LoginState));

  @override
  _LoginState get _value => super._value as _LoginState;

  @override
  $Res call({
    Object? result = freezed,
    Object? emailProblem = freezed,
    Object? passwordProblem = freezed,
  }) {
    return _then(_LoginState(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as LoginResult,
      emailProblem: emailProblem == freezed
          ? _value.emailProblem
          : emailProblem // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordProblem: passwordProblem == freezed
          ? _value.passwordProblem
          : passwordProblem // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {required this.result, this.emailProblem, this.passwordProblem});

  @override
  final LoginResult result;
  @override
  final String? emailProblem;
  @override
  final String? passwordProblem;

  @override
  String toString() {
    return 'LoginState(result: $result, emailProblem: $emailProblem, passwordProblem: $passwordProblem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginState &&
            const DeepCollectionEquality().equals(other.result, result) &&
            const DeepCollectionEquality()
                .equals(other.emailProblem, emailProblem) &&
            const DeepCollectionEquality()
                .equals(other.passwordProblem, passwordProblem));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(result),
      const DeepCollectionEquality().hash(emailProblem),
      const DeepCollectionEquality().hash(passwordProblem));

  @JsonKey(ignore: true)
  @override
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {required LoginResult result,
      String? emailProblem,
      String? passwordProblem}) = _$_LoginState;

  @override
  LoginResult get result;
  @override
  String? get emailProblem;
  @override
  String? get passwordProblem;
  @override
  @JsonKey(ignore: true)
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
