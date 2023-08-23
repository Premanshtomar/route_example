import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:route_example/app_routes.dart';

class DetailsView extends StatefulWidget {
  const DetailsView({Key? key}) : super(key: key);

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            children: [
              const Text("Detail View"),
              ElevatedButton(
                onPressed: () {
                  context.go(
                    AppRoutes.dashboardRoute,
                  );
                },
                child: Container(
                  height: 100,
                  width: 300,
                  color: Colors.blue,
                  child: const Text('To Dashboard View'),
                ),
              )
            ],
          )),
    );
  }
}
