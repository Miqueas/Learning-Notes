import "package:flutter/material.dart";

const appTitle = "Flutter OpenBootcamp";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Material(
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TimeOfDay? _time;

  Future<void> doShowTimePicker() async {
    _time = await showTimePicker(
      context: context,
      initialTime: const TimeOfDay(hour: 0, minute: 0),
    );
    
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var template = (_time == null)
      ? "Aún no has seleccionado una hora"
      : "Hora seleccionada: ${_time?.hour}:${_time?.minute}";

    return Scaffold(
      appBar: AppBar(
        title: const Text("TimePicker"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: doShowTimePicker,
              child: const Text("Seleccionar hora")
            ),
          ),
          Center(
            child: Text(template)
          ),
        ]
      ),
    );
  }
}