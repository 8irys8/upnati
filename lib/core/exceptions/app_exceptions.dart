class AppExceptions implements Exception {
  final String? message;
  final bool? isNeedLogin;

  AppExceptions([this.message, this.isNeedLogin]);

  @override
  String toString() {
    return '$message';
  }
}
