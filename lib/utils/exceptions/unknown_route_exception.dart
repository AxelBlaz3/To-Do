class UnknownRouteException implements Exception {
  final String? message;

  UnknownRouteException(this.message);

  @override
  String toString() {
    if (message == null) {
      return 'UnknownRouteException: The given route is unknown or not defined in AppRoutes';
    }
    return 'UnknownRouteException: $message';
  }
}
