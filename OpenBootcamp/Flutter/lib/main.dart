import "package:flutter/material.dart";

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Scaffold(
          appBar: AppBar(title: const Text("Flutter Notes")),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Text("Module ${index + 1}");
                }
              ),
            ),
          ),
        ),
      )
    );
  }
}