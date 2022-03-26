import 'package:flutter_test/flutter_test.dart';
import 'package:login_loveapp/common/auth_exception.dart';
import 'package:login_loveapp/repository/auth_api_repository.dart';
import 'package:login_loveapp/services/auth_service.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'auth_service_test.mocks.dart';

@GenerateMocks([AuthApiRepository])
void main() {
  late AuthApiRepository authApiRepository;
  late AuthService sut;

  setUp(() {
    authApiRepository = MockAuthApiRepository();
    sut = AuthService(authApiRepository);
  });

  group('AuthService test', () {
    const email = 'testemail@mail.com';
    const password = '123456789';

    test('success result on success login', () async {
      when(authApiRepository.loginWithEmail(
        email: email,
        password: password,
      )).thenAnswer((_) => Future.value(true));

      final result = await sut.login(email: email, password: password);

      verify(
        authApiRepository.loginWithEmail(email: email, password: password),
      );
      expect(result, const LoginResult.success(true));
    });

    test('failure result on AuthException', () async {
      when(authApiRepository.loginWithEmail(
        email: email,
        password: password,
      )).thenThrow(AuthException.somethingWentWrong());

      final result = await sut.login(email: email, password: password);

      verify(
        authApiRepository.loginWithEmail(email: email, password: password),
      );

      expect(result, isA<LoginResult>());
      result.whenOrNull(
        error: (exception) {
          expect(exception, isA<AuthException>());
        },
      );
    });

    test('failure result on any xception', () async {
      when(authApiRepository.loginWithEmail(
        email: email,
        password: password,
      )).thenThrow(Exception('Something wrong'));

      final result = await sut.login(email: email, password: password);

      verify(
        authApiRepository.loginWithEmail(email: email, password: password),
      );

      expect(result, isA<LoginResult>());
      result.whenOrNull(
        error: (exception) {
          expect(exception, isA<Exception>());
        },
      );
    });
  });
}
