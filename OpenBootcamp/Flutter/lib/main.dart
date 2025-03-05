import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_notes/router/fn_router.dart";
import "package:flutter_notes/fn_paths.dart";
import "package:format/format.dart";
import "package:gap/gap.dart";
import "package:google_fonts/google_fonts.dart";
import "package:flutter_notes/widgets/fn_list_item.dart";

void main() => runApp(const FnApp());

final class FnApp extends StatefulWidget {
  const FnApp({ super.key });

  @override
  State<FnApp> createState() => _FnAppState();
}

final class _FnAppState extends State<FnApp> {
  var _themeMode = ThemeMode.system;

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
    themeMode: _themeMode,
    darkTheme: _buildTheme(Brightness.dark),
    debugShowCheckedModeBanner: kDebugMode,
    home: Material(child: Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Notes", style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),),
        actions: [
          IconButton(
            icon: Icon(switch (_themeMode) {
              ThemeMode.system => Icons.brightness_medium_rounded,
              ThemeMode.light => Icons.light_mode_rounded,
              ThemeMode.dark => Icons.dark_mode_rounded,
            }),
            onPressed: () => setState(() {
              _themeMode = switch (_themeMode) {
                ThemeMode.system => ThemeMode.light,
                ThemeMode.light => ThemeMode.dark,
                ThemeMode.dark => ThemeMode.system,
              };
            }),
          ),
          const Gap(8),
          Builder(builder: (context) => IconButton(
            icon: const Icon(Icons.info_rounded),
            onPressed: () => Navigator.of(context).pushNamed(FnPaths.about),
          ),),
          const Gap(12),
        ],
      ),
      body: ListView(children: [
        for (final module in FnRouter.modules) FnListItem(
          title: module.topic,
          route: module.route,
          subtitle: 'Module {mod:02}'.format({ #mod: module.id}),
        ),
      ],),
    ),),
  );
}