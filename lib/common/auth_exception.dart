class AuthException implements Exception {
  final String message;
  AuthException.somethingWentWrong() : message = 'Something went wrong on auth';

  @override
  String toString() => 'AuthException: $message';
}
