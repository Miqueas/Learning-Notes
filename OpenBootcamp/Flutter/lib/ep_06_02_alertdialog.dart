import "package:flutter/material.dart";

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Scaffold(
          appBar: AppBar(title: const Text("AlertDialog"),),
          body: const MyAlertDialog(),
        )
      ),
    );
  }
}

class MyAlertDialog extends StatelessWidget {
  const MyAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text("Mostrar AlertDialog"),
        onPressed: () {
          showDialog<String>(
            context: context,
            builder: (BuildContext dialogContext) => AlertDialog(
              title: const Text("Alerta!"),
              content: const Text("Algo malicioso está sucediendo..."),
              actions: [
                ElevatedButton(
                  onPressed: () => Navigator.pop(context, "Cancel"),
                  child: const Text("Cancelar")
                ),
                ElevatedButton(
                  onPressed: () => Navigator.pop(context, "OK"),
                  child: const Text("Aceptar")
                ),
              ],
            )
          );
        },
      ),
    );
  }
}