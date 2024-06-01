import "package:flutter/material.dart";

import "package:flutter_notes/widgets/listitem.dart";

abstract interface class ModuleView {
  final route = "";
  final title = "";
  final topic = "";
}

final class Module04 extends StatelessWidget implements ModuleView {
  @override final route = "/module04";
  @override final title = "Module 04";
  @override final topic = "Getting started";

  const Module04({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: const [
          ListItem(title: "Hello, world!", subtitle: "Episode 01", page: ""),
          ListItem(title: "Stateful widget", subtitle: "Episode 02", page: ""),
          ListItem(title: "Scaffold", subtitle: "Episode 03", page: ""),
          ListItem(title: "Drawer", subtitle: "Episode 04", page: ""),
          ListItem(title: "Cupertino", subtitle: "Episode 05", page: ""),
          ListItem(title: "Platform", subtitle: "Episode 06", page: ""),
          ListItem(title: "Buttons", subtitle: "Episode 07", page: ""),
          ListItem(title: "Icons", subtitle: "Episode 08", page: ""),
          ListItem(title: "Images", subtitle: "Episode 09", page: ""),
          ListItem(title: "Fonts", subtitle: "Episode 10", page: ""),
          ListItem(title: "Alignment", subtitle: "Episode 11", page: ""),
          ListItem(title: "Layout", subtitle: "Episode 12", page: ""),
          ListItem(title: "Container", subtitle: "Episode 13", page: ""),
          ListItem(title: "Stepper", subtitle: "Episode 14", page: ""),
          ListItem(title: "Hello, world!", subtitle: "Episode 15", page: ""),
        ],
      )
    );
  }
}