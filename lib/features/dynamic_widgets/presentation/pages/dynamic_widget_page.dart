import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';

class DynamicWidgetsPage extends StatefulWidget {
  const DynamicWidgetsPage({super.key});

  @override
  State<DynamicWidgetsPage> createState() => _DynamicWidgetsPageState();
}

class _DynamicWidgetsPageState extends State<DynamicWidgetsPage> {
  late final JsonWidgetRegistry registry;
  int incrementValue = 0;
  Future<JsonWidgetData>? jsonWidget;

  @override
  void initState() {
    super.initState();
    registerJsonWidget();
  }

  registerJsonWidget() {
    registry = JsonWidgetRegistry.instance;
    registry.registerFunctions({
      'func1': ({args, required registry}) => () {},
      'incrementButtonClick': ({args, required registry}) => () {
            incrementValue++;
            setState(() {});
          }
    });
    // registry.registerFunction('func1', ({args, required registry})=>() {
    //   print("object");
    // });
  }

  Future<Map> loadJsonWidget() async {
    var jsonString = await rootBundle
        .loadString("assets/json/dynamic_widgets/dy_widget_v2.json");
    return jsonDecode(jsonString);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Dynamic Widgets Build"),
        ),
        body: Column(
          children: [
            FutureBuilder<Map>(
              future: loadJsonWidget(),
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                if (snapshot.hasData &&
                    snapshot.connectionState == ConnectionState.done) {
                  Map jsonMap = snapshot.data;
                  final jsonData =
                      JsonWidgetData.fromDynamic(jsonMap, registry: registry)!;
                  return jsonData.build(
                    context: context,
                  );
                } else {
                  return const CircularProgressIndicator();
                }
              },
            ),
            Text(incrementValue.toString()),
          ],
        ),
      ),
    );
  }
}
