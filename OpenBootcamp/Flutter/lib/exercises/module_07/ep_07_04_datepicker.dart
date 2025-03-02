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
  DateTime? _date;

  Future<void> doShowDatePicker() async {
    _date = await showDatePicker(
      context: context,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      initialDate: DateTime.now(),
    );

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var template = (_date == null)
      ? "Aún no has seleccionado una fecha"
      : "Fecha seleccionada: ${_date?.day}/${_date?.month}/${_date?.year}";

    return Scaffold(
      appBar: AppBar(
        title: const Text("DatePicker"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: doShowDatePicker,
              child: const Text("Seleccionar fecha")
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