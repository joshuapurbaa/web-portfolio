import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home/home.dart';

enum Routes {
  root('/'),
  ;

  const Routes(this.path);
  final String path;
}

class AppRoute {
  AppRoute._();

  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  static final router = GoRouter(
    initialLocation: Routes.root.path,
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
        path: Routes.root.path,
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}
