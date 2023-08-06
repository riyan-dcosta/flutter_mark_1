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

  @override
  void initState() {
    super.initState();
    registry = JsonWidgetRegistry.instance;
  }

  Future<Map> loadJsonWidget() async {
    var jsonString = await rootBundle
        .loadString("assets/json/dynamic_widgets/dy_widget_v1.json");
    return jsonDecode(jsonString);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map>(
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
    );
  }
}
