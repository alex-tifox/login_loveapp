import 'package:injectable/injectable.dart';
import 'package:login_loveapp/common/auth_exception.dart';

@LazySingleton()
class AuthApiRepository {
  Future<bool> loginWithEmail({
    required String email,
    required String password,
  }) async {
    final mockResult = [true, false];
    await Future<void>.delayed(const Duration(seconds: 2));

    final result = (mockResult..shuffle()).first;
    if (result) {
      throw AuthException.somethingWentWrong();
    } else {
      return result;
    }
  }
}
