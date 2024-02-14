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
        child: Scaffold(
          body: MyAlertDialog(),
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