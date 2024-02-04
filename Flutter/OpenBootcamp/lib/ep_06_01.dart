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
          // Intentar llamar al SnackBar desde aquí da error porque no hay un Scaffold en `context`
          body: Center(child: MySnackBar())
        ),
      ),
    );
  }
}

class MySnackBar extends StatelessWidget {
  const MySnackBar({super.key});

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