import 'package:flutter/material.dart';
import 'package:task/routes/app_routes.dart';
import 'package:task/screens/home/screen_home.dart';
import 'package:task/utils/exceptions/unknown_route_exception.dart';

class AppRoutesGenerator {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(
            builder: (_) => const HomeScreen(), settings: settings);
      default:
        throw UnknownRouteException('Route \'${settings.name}\' not found.');
    }
  }
}
