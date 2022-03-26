import 'package:injectable/injectable.dart';
import 'package:login_loveapp/common/auth_exception.dart';
import 'package:login_loveapp/common/logger.dart';
import 'package:login_loveapp/common/result.dart';
import 'package:login_loveapp/repository/auth_api_repository.dart';

typedef LoginResult = Result<bool, Exception>;

@LazySingleton()
class AuthService {
  static AuthService create(
    AuthApiRepository authApiRepository,
  ) =>
      AuthService(authApiRepository);

  AuthService(this._authApiRepository);

  final AuthApiRepository _authApiRepository;

  Future<LoginResult> login({
    required String email,
    required String password,
  }) async {
    try {
      final authResult = await _authApiRepository.loginWithEmail(
        email: email,
        password: password,
      );
      return LoginResult.success(authResult);
    } on AuthException catch (exception) {
      logger.e(exception);
      return LoginResult.error(exception);
    } catch (e) {
      logger.e(e);
      return LoginResult.error(Exception('Unknown error'));
    }
  }
}
