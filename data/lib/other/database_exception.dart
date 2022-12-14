class ServerException implements Exception {}

class DatabaseException implements Exception {
  final String message;

  DatabaseException(this.message);
}

class AuthException implements Exception {
  final String message;

  AuthException(this.message);
}