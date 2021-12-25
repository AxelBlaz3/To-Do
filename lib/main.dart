import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task/routes/app_routes.dart';
import 'package:task/routes/route_generator.dart';

void main() {
  runApp(const ProviderScope(child: TaskApp()));
}

class TaskApp extends StatelessWidget {
  const TaskApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        onGenerateRoute: AppRoutesGenerator.onGenerateRoute,
        initialRoute: AppRoutes.home,);
  }
}
