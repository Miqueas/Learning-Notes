import "package:flutter/material.dart";

const appTitle = "Flutter OpenBootcamp";

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _themeMode = ThemeMode.system;

  void doChangeThemeMode(ThemeMode? setting) {
    setState(() {
      _themeMode = (setting != null) ? setting : _themeMode;
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
              SizedBox(
                width: 300,
                child: ListTile(
                  title: const Text("Light"),
                  leading: Radio<ThemeMode>(
                    value: ThemeMode.light,
                    groupValue: _themeMode,
                    onChanged: doChangeThemeMode,
                  ),
                )
              ),
              SizedBox(
                width: 300,
                child: ListTile(
                  title: const Text("Dark"),
                  leading: Radio<ThemeMode>(
                    value: ThemeMode.dark,
                    groupValue: _themeMode,
                    onChanged: doChangeThemeMode,
                  ),
                )
              ),
              SizedBox(
                width: 300,
                child: ListTile(
                  title: const Text("Follow system"),
                  leading: Radio<ThemeMode>(
                    value: ThemeMode.system,
                    groupValue: _themeMode,
                    onChanged: doChangeThemeMode,
                  ),
                )
              ),
            ]
          ),
        ),
      ),
    );
  }
}