import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_notes/fn_router.dart";
import "package:google_fonts/google_fonts.dart";
import "package:flutter_notes/widgets/fn_list_item.dart";
import "package:sprintf/sprintf.dart";

void main() => runApp(const FnApp());

final class FnApp extends StatelessWidget {
  static const _titleStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
  
  static const _subtitleStyle = TextStyle(fontSize: 14,);

  const FnApp({ super.key });

  ThemeData _buildTheme(Brightness mode) {
    final baseTheme = ThemeData.from(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.amber,
        brightness: mode,
        dynamicSchemeVariant: DynamicSchemeVariant.fidelity,
      ),
    );

    return baseTheme.copyWith(
      brightness: mode,
      textTheme: GoogleFonts.latoTextTheme(baseTheme.textTheme)
    );
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: "Flutter Notes",
    theme: _buildTheme(Brightness.light),
    routes: FnRouter.buildRoutes(),
    darkTheme: _buildTheme(Brightness.dark),
    debugShowCheckedModeBanner: kDebugMode,
    home: Material(child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 96,
        centerTitle: true,
        title: const Column(mainAxisSize: MainAxisSize.min, children: [
          Text("Flutter Notes", style: _titleStyle),
          Text("A small app I made while learning Flutter",
            style: _subtitleStyle,
          ),
        ],),
      ),
      body: ListView(children: [
        for (final module in FnRouter.modules) FnListItem(
          title: module.topic,
          subtitle: sprintf('Module %02d', [ module.id ]),
          route: module.route,
        ),
        // FnListItem(
        //   title: "Getting started",
        //   subtitle: "Module 04",
        //   route: FnRouterPaths.module04,
        // ),
        // FnListItem(
        //   title: "Color and logic",
        //   subtitle: "Module 05",
        //   route: FnRouterPaths.module05,
        // ),
        // FnListItem(
        //   title: "Displaying information",
        //   subtitle: "Module 06",
        //   route: FnRouterPaths.module06,
        // ),
        // FnListItem(
        //   title: "User inputs",
        //   subtitle: "Module 07",
        //   route: FnRouterPaths.module07,
        // ),
        // FnListItem(
        //   title: "Dynamic content and Inkwell",
        //   subtitle: "Module 08",
        //   route: FnRouterPaths.module08,
        // ),
        // FnListItem(
        //   title: "Location and image picker",
        //   subtitle: "Module 09",
        //   route: FnRouterPaths.module09,
        // ),
        // FnListItem(
        //   title: "Networking",
        //   subtitle: "Module 10",
        //   route: FnRouterPaths.module10,
        // ),
      ],),
    ),),
  );
}