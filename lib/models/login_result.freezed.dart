// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginResultTearOff {
  const _$LoginResultTearOff();

  NotReady notReady() {
    return const NotReady();
  }

  InProgress inProgress() {
    return const InProgress();
  }

  Failure failure({required String description}) {
    return Failure(
      description: description,
    );
  }
}

/// @nodoc
const $LoginResult = _$LoginResultTearOff();

/// @nodoc
mixin _$LoginResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notReady,
    required TResult Function() inProgress,
    required TResult Function(String description) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notReady,
    TResult Function()? inProgress,
    TResult Function(String description)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notReady,
    TResult Function()? inProgress,
    TResult Function(String description)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotReady value) notReady,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotReady value)? notReady,
    TResult Function(InProgress value)? inProgress,
    TResult Function(Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotReady value)? notReady,
    TResult Function(InProgress value)? inProgress,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResultCopyWith<$Res> {
  factory $LoginResultCopyWith(
          LoginResult value, $Res Function(LoginResult) then) =
      _$LoginResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginResultCopyWithImpl<$Res> implements $LoginResultCopyWith<$Res> {
  _$LoginResultCopyWithImpl(this._value, this._then);

  final LoginResult _value;
  // ignore: unused_field
  final $Res Function(LoginResult) _then;
}

/// @nodoc
abstract class $NotReadyCopyWith<$Res> {
  factory $NotReadyCopyWith(NotReady value, $Res Function(NotReady) then) =
      _$NotReadyCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotReadyCopyWithImpl<$Res> extends _$LoginResultCopyWithImpl<$Res>
    implements $NotReadyCopyWith<$Res> {
  _$NotReadyCopyWithImpl(NotReady _value, $Res Function(NotReady) _then)
      : super(_value, (v) => _then(v as NotReady));

  @override
  NotReady get _value => super._value as NotReady;
}

/// @nodoc

class _$NotReady implements NotReady {
  const _$NotReady();

  @override
  String toString() {
    return 'LoginResult.notReady()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NotReady);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notReady,
    required TResult Function() inProgress,
    required TResult Function(String description) failure,
  }) {
    return notReady();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notReady,
    TResult Function()? inProgress,
    TResult Function(String description)? failure,
  }) {
    return notReady?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notReady,
    TResult Function()? inProgress,
    TResult Function(String description)? failure,
    required TResult orElse(),
  }) {
    if (notReady != null) {
      return notReady();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotReady value) notReady,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(Failure value) failure,
  }) {
    return notReady(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotReady value)? notReady,
    TResult Function(InProgress value)? inProgress,
    TResult Function(Failure value)? failure,
  }) {
    return notReady?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotReady value)? notReady,
    TResult Function(InProgress value)? inProgress,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (notReady != null) {
      return notReady(this);
    }
    return orElse();
  }
}

abstract class NotReady implements LoginResult {
  const factory NotReady() = _$NotReady;
}

/// @nodoc
abstract class $InProgressCopyWith<$Res> {
  factory $InProgressCopyWith(
          InProgress value, $Res Function(InProgress) then) =
      _$InProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$InProgressCopyWithImpl<$Res> extends _$LoginResultCopyWithImpl<$Res>
    implements $InProgressCopyWith<$Res> {
  _$InProgressCopyWithImpl(InProgress _value, $Res Function(InProgress) _then)
      : super(_value, (v) => _then(v as InProgress));

  @override
  InProgress get _value => super._value as InProgress;
}

/// @nodoc

class _$InProgress implements InProgress {
  const _$InProgress();

  @override
  String toString() {
    return 'LoginResult.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notReady,
    required TResult Function() inProgress,
    required TResult Function(String description) failure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notReady,
    TResult Function()? inProgress,
    TResult Function(String description)? failure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notReady,
    TResult Function()? inProgress,
    TResult Function(String description)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotReady value) notReady,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(Failure value) failure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotReady value)? notReady,
    TResult Function(InProgress value)? inProgress,
    TResult Function(Failure value)? failure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotReady value)? notReady,
    TResult Function(InProgress value)? inProgress,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class InProgress implements LoginResult {
  const factory InProgress() = _$InProgress;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
  $Res call({String description});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> extends _$LoginResultCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(Failure _value, $Res Function(Failure) _then)
      : super(_value, (v) => _then(v as Failure));

  @override
  Failure get _value => super._value as Failure;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(Failure(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Failure implements Failure {
  const _$Failure({required this.description});

  @override
  final String description;

  @override
  String toString() {
    return 'LoginResult.failure(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Failure &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  $FailureCopyWith<Failure> get copyWith =>
      _$FailureCopyWithImpl<Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notReady,
    required TResult Function() inProgress,
    required TResult Function(String description) failure,
  }) {
    return failure(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notReady,
    TResult Function()? inProgress,
    TResult Function(String description)? failure,
  }) {
    return failure?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notReady,
    TResult Function()? inProgress,
    TResult Function(String description)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotReady value) notReady,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotReady value)? notReady,
    TResult Function(InProgress value)? inProgress,
    TResult Function(Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotReady value)? notReady,
    TResult Function(InProgress value)? inProgress,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements LoginResult {
  const factory Failure({required String description}) = _$Failure;

  String get description;
  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}
