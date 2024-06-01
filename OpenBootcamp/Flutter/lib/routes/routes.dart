import "package:flutter/material.dart";

import "package:flutter_notes/routes/module_04/module_04.dart";

const modules = <ModuleView>[
  Module04(),
];

Map<String, WidgetBuilder> buildRoutes() {
  final result = <String, WidgetBuilder>{};

  for (var module in modules) {
    result.addAll({ module.route: (BuildContext context) {
      return Material(
        child: Scaffold(
          appBar: AppBar(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Flutter Notes", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                Text("${module.title} — ${module.topic}", style: const TextStyle(fontSize: 14),),
              ],
            )
          ),
          body: module as Widget,
        ),
      );
    } });
  }

  return result;
}