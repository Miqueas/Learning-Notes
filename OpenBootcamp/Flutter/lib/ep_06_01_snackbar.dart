import "package:flutter/material.dart";

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Material(
        child: Scaffold(
          // Intentar llamar al SnackBar desde aquí da error porque no hay un Scaffold en `context`
          body: Center(child: Snackbar())
        ),
      ),
    );
  }
}

class Snackbar extends StatelessWidget {
  const Snackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text("Mostrar SnackBar"),
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Hola!"))
        );
      },
    );
  }
}