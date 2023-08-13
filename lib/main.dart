import 'package:flutter/material.dart';
import 'package:flutter_mark_1/core/core_route/go_router/go_router_core.dart';

void main() {
  runApp(const MarkOne());
}

class MarkOne extends StatelessWidget {
  const MarkOne({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouterCore.instance,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}

