import 'package:flutter/material.dart';
import 'package:flutter_mark_1/core/core_route/go_router/go_router_core.dart';
import 'package:flutter_mark_1/counter_class.dart';
import 'package:flutter_mark_1/features/home_page/presentation/widgets/bottom_nav_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final counterClass = Counter();

  void _incrementCounter() {
    setState(() {
      counterClass.increment();
    });
  }

  void onClickDynamicWidget({required BuildContext context}) {
    const DynamicPageRoute().go(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${counterClass.val}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
                onPressed: () => onClickDynamicWidget(context: context),
                child: const Text("Dynamic Widget Page"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
