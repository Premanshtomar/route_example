import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:route_example/auth_service.dart';
import 'package:route_example/dashboard.dart';
import 'package:route_example/detail_view.dart';
import 'package:route_example/main.dart';

class AppRoutes {
  static const loginRoute = "/";
  static const dashboardRoute = "/Dashboard";
  static const detailsRoute = "/Details";

  static final GoRouter routes = GoRouter(routes: <GoRoute>[
    GoRoute(
      path: loginRoute,
      builder: (BuildContext context, state) => LoginView(
        key: state.pageKey,
      ),
    ),
    GoRoute(
      path: dashboardRoute,
      builder: (context, state) {
        return DashboardView(
          key: state.pageKey,
        );
      },
      redirect: (context, state) => _redirect(context),
    ),
    GoRoute(
      path: detailsRoute,
      builder: (context, state) => DetailsView(
        key: state.pageKey,
      ),
      // redirect: (context, state) => _redirect(context),
    ),
  ]);

  static String? _redirect(BuildContext context) {
    return AuthService.authenticated ? null : context.namedLocation("/");
  }
}
