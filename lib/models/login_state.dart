import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:login_loveapp/models/login_result.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required LoginResult result,
    String? emailProblem,
    String? passwordProblem,
  }) = _LoginState;
}
