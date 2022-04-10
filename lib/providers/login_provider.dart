import 'package:flutter/cupertino.dart';
import 'package:login_loveapp/common/auth_exception.dart';
import 'package:login_loveapp/locator.dart';
import 'package:login_loveapp/models/login_result.dart' as login;
import 'package:login_loveapp/models/login_state.dart';
import 'package:login_loveapp/services/auth_service.dart';

class LoginProvider extends ChangeNotifier {
  LoginProvider();

  LoginState _state = const LoginState(result: login.LoginResult.notReady());
  LoginState get state => _state;

  final AuthService _authService = locator<AuthService>();

  final emailTextEditingController = TextEditingController();
  final passwordTextEditingController = TextEditingController();

  Future<void> attemptLogin({
    required VoidCallback navigateAfterLogin,
  }) async {
    final _currentEmail = emailTextEditingController.text.trim();
    final _currentPassword = passwordTextEditingController.text;

    _state = _state.copyWith(result: const login.LoginResult.inProgress());
    notifyListeners();

    final result = await _authService.login(
      email: _currentEmail,
      password: _currentPassword,
    );
    final error = result.when(success: (_) {
      return null;
    }, error: (error) {
      if (error is AuthException) {
        return error.message;
      } else {
        return 'Unknown error';
      }
    });

    if (error != null) {
      _state = _state.copyWith(
        result: const login.LoginResult.failure(),
      );
      notifyListeners();
    } else {
      navigateAfterLogin();
      emailTextEditingController.text = '';
      passwordTextEditingController.text = '';
      _state = _state.copyWith(
        result: const login.LoginResult.notReady(),
      );
      notifyListeners();
    }
  }
}
