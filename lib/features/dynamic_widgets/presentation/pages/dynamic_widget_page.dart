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
  Map jsonMap = {
    "type": "scaffold",
    "args": {
      "appBar": {
        "type": "app_bar",
        "args": {
          "title": {
            "type": "text",
            "args": {"text": "Hello Dynamic"}
          }
        }
      },
      "body": {
        "type": "text",
        "args": {"text": "press me!"}
      }
    }
  };

  late final registry;

  @override
  void initState() {
    super.initState();
    registry = JsonWidgetRegistry.instance;
    loadJsonWidget();
  }

  Future<Map> loadJsonWidget() async {
    var jsonString = await rootBundle
        .loadString("assets/json/dynamic_widgets/dy_widget_v1.json");
    return jsonDecode(jsonString);
  }

  @override
  Widget build(BuildContext context) {
    JsonWidgetData jsonData;

    loadJsonWidget().then((value) => jsonMap = value);
    jsonData = JsonWidgetData.fromDynamic(jsonMap, registry: registry)!;
    return jsonData.build(
      context: context,
    );
  }
}
