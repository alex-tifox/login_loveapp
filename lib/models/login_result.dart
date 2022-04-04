import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_result.freezed.dart';

@freezed
class LoginResult with _$LoginResult {
  const factory LoginResult.notReady() = NotReady;
  const factory LoginResult.inProgress() = InProgress;
  const factory LoginResult.failure() = Failure;
}
