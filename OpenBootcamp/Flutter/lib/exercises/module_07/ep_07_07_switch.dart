import "package:flutter/material.dart";

void main() => runApp(const App());

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  var _themeMode = ThemeMode.light;
  var _active = false;

  void doChangeThemeMode(bool setting) {
    setState(() {
      _themeMode = (setting) ? ThemeMode.dark : ThemeMode.light;
      _active = setting;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _themeMode,
      home: Material(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Switch"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: Text("Change theme mode")
              ),
              Center(
                child: Switch(
                  value: _active,
                  onChanged: doChangeThemeMode,
                )
              ),
            ]
          ),
        ),
      ),
    );
  }
}