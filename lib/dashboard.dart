import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:route_example/app_routes.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          const Text("Dashboard View"),
          ElevatedButton(
            onPressed: () {
              context.go(
                AppRoutes.detailsRoute,
              );
            },
            child: Container(
              height: 100,
              width: 300,
              color: Colors.blue,
              child: const Text('To Detail View'),
            ),
          )
        ],
      )),
    );
  }
}
