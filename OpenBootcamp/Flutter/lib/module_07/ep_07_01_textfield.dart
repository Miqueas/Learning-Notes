import "package:flutter/material.dart";

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
  String _input = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextField"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text("Escribe algo"),
          ),
          Center(
            child: SizedBox(
              width: 220,
              child: TextField(
                onChanged: (String value) {
                  setState(() {
                    _input = value;
                  });
                },
              )
            )
          ),
          Center(
            child: Text("\"$_input\""),
          )
        ],
      ),
    );
  }
}