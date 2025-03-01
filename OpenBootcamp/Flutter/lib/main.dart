import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

import "package:flutter_notes/widgets/listitem.dart";
import "package:flutter_notes/routes/routes.dart";

void main() => runApp(const App());

final class App extends StatelessWidget {
  static const _titleStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  const App({super.key});

  ThemeData _buildTheme(Brightness mode) {
    final baseTheme = ThemeData(brightness: mode, colorSchemeSeed: Colors.amber);

    return baseTheme.copyWith(
      textTheme: GoogleFonts.latoTextTheme(baseTheme.textTheme)
    );
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
    theme: _buildTheme(Brightness.light),
    darkTheme: _buildTheme(Brightness.dark),
    title: "Flutter Notes",
    routes: buildRoutes(),
    home: Material(child: Scaffold(
      appBar: AppBar(title: const Text("Flutter Notes", style: _titleStyle)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text("Flutter Notes is a personal project I made while learning Flutter."),
          ),
          Expanded(child: ListView(children: const [
            ListItem(title: "Getting started", subtitle: "Module 04", page: "/module04"),
            ListItem(title: "Color and logic", subtitle: "Module 05", page: "/module05"),
            ListItem(title: "Displaying information", subtitle: "Module 06", page: "/module06"),
            ListItem(title: "User inputs", subtitle: "Module 07", page: "/module07"),
            ListItem(title: "Dynamic content and Inkwell", subtitle: "Module 08", page: "/module08"),
            ListItem(title: "Location and image picker", subtitle: "Module 09", page: "/module09"),
            ListItem(title: "Networking", subtitle: "Module 10", page: "/module10"),
          ],),),
        ],
      ),
    ),),
  );
}