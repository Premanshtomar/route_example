import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:route_example/app_routes.dart';
import 'package:route_example/auth_service.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginState();
}

class _LoginState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                AuthService.authenticated = true;
                GoRouter.of(context).go(AppRoutes.dashboardRoute);
              },
              child: const Text("Login")),
        ));
  }
}