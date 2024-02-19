import "package:flutter/material.dart";

const appTitle = "Flutter OpenBootcamp";

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
      debugShowCheckedModeBanner: false,
      title: appTitle,
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