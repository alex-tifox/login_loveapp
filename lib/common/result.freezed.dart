// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResultTearOff {
  const _$ResultTearOff();

  Success<T, E> success<T, E>(T data) {
    return Success<T, E>(
      data,
    );
  }

  Error<T, E> error<T, E>(E error) {
    return Error<T, E>(
      error,
    );
  }
}

/// @nodoc
const $Result = _$ResultTearOff();

/// @nodoc
mixin _$Result<T, E> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(E error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(E error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(E error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T, E> value) success,
    required TResult Function(Error<T, E> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Success<T, E> value)? success,
    TResult Function(Error<T, E> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T, E> value)? success,
    TResult Function(Error<T, E> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<T, E, $Res> {
  factory $ResultCopyWith(
          Result<T, E> value, $Res Function(Result<T, E>) then) =
      _$ResultCopyWithImpl<T, E, $Res>;
}

/// @nodoc
class _$ResultCopyWithImpl<T, E, $Res> implements $ResultCopyWith<T, E, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  final Result<T, E> _value;
  // ignore: unused_field
  final $Res Function(Result<T, E>) _then;
}

/// @nodoc
abstract class $SuccessCopyWith<T, E, $Res> {
  factory $SuccessCopyWith(
          Success<T, E> value, $Res Function(Success<T, E>) then) =
      _$SuccessCopyWithImpl<T, E, $Res>;
  $Res call({T data});
}

/// @nodoc
class _$SuccessCopyWithImpl<T, E, $Res> extends _$ResultCopyWithImpl<T, E, $Res>
    implements $SuccessCopyWith<T, E, $Res> {
  _$SuccessCopyWithImpl(
      Success<T, E> _value, $Res Function(Success<T, E>) _then)
      : super(_value, (v) => _then(v as Success<T, E>));

  @override
  Success<T, E> get _value => super._value as Success<T, E>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(Success<T, E>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Success<T, E> implements Success<T, E> {
  const _$Success(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'Result<$T, $E>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Success<T, E> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $SuccessCopyWith<T, E, Success<T, E>> get copyWith =>
      _$SuccessCopyWithImpl<T, E, Success<T, E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(E error) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(E error)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(E error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T, E> value) success,
    required TResult Function(Error<T, E> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Success<T, E> value)? success,
    TResult Function(Error<T, E> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T, E> value)? success,
    TResult Function(Error<T, E> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<T, E> implements Result<T, E> {
  const factory Success(T data) = _$Success<T, E>;

  T get data;
  @JsonKey(ignore: true)
  $SuccessCopyWith<T, E, Success<T, E>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<T, E, $Res> {
  factory $ErrorCopyWith(Error<T, E> value, $Res Function(Error<T, E>) then) =
      _$ErrorCopyWithImpl<T, E, $Res>;
  $Res call({E error});
}

/// @nodoc
class _$ErrorCopyWithImpl<T, E, $Res> extends _$ResultCopyWithImpl<T, E, $Res>
    implements $ErrorCopyWith<T, E, $Res> {
  _$ErrorCopyWithImpl(Error<T, E> _value, $Res Function(Error<T, E>) _then)
      : super(_value, (v) => _then(v as Error<T, E>));

  @override
  Error<T, E> get _value => super._value as Error<T, E>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(Error<T, E>(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as E,
    ));
  }
}

/// @nodoc

class _$Error<T, E> implements Error<T, E> {
  const _$Error(this.error);

  @override
  final E error;

  @override
  String toString() {
    return 'Result<$T, $E>.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Error<T, E> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<T, E, Error<T, E>> get copyWith =>
      _$ErrorCopyWithImpl<T, E, Error<T, E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(E error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(E error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(E error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T, E> value) success,
    required TResult Function(Error<T, E> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Success<T, E> value)? success,
    TResult Function(Error<T, E> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T, E> value)? success,
    TResult Function(Error<T, E> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error<T, E> implements Result<T, E> {
  const factory Error(E error) = _$Error<T, E>;

  E get error;
  @JsonKey(ignore: true)
  $ErrorCopyWith<T, E, Error<T, E>> get copyWith =>
      throw _privateConstructorUsedError;
}
