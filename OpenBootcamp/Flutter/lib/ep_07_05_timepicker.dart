import "package:flutter/material.dart";

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Material(
        child: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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