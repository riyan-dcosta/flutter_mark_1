import 'package:flutter/material.dart';
import 'package:flutter_mark_1/core/core_route/go_router/go_router_core.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const _appBarTitle = "Home Page";

  @override
  void initState() {
    super.initState();
  }

  void onClickDynamicWidget({required BuildContext context}) {
    const DynamicPageRoute().go(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(_appBarTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            ElevatedButton(
                onPressed: () => onClickDynamicWidget(context: context),
                child: const Text("Dynamic Widget Page"))
          ],
        ),
      ),
    );
  }
}
