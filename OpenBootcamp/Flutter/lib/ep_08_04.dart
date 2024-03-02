import "package:flutter/material.dart";

void main() => runApp(const App());

final class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Scaffold(
          appBar: AppBar(title: const Text("GridView")),
          body: const HomePage(),
        ),
      ),
    );
  }
}

final class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 5,
      children: [
        Container(color: Colors.amber.shade50),
        Container(color: Colors.amber.shade100),
        Container(color: Colors.amber.shade200),
        Container(color: Colors.amber.shade300),
        Container(color: Colors.amber.shade400),
        Container(color: Colors.amber.shade500),
        Container(color: Colors.amber.shade600),
        Container(color: Colors.amber.shade700),
        Container(color: Colors.amber.shade800),
        Container(color: Colors.amber.shade900),
        Container(color: Colors.blue.shade50),
        Container(color: Colors.blue.shade100),
        Container(color: Colors.blue.shade200),
        Container(color: Colors.blue.shade300),
        Container(color: Colors.blue.shade400),
        Container(color: Colors.blue.shade500),
        Container(color: Colors.blue.shade600),
        Container(color: Colors.blue.shade700),
        Container(color: Colors.blue.shade800),
        Container(color: Colors.blue.shade900),
        Container(color: Colors.red.shade50),
        Container(color: Colors.red.shade100),
        Container(color: Colors.red.shade200),
        Container(color: Colors.red.shade300),
        Container(color: Colors.red.shade400),
        Container(color: Colors.red.shade500),
        Container(color: Colors.red.shade600),
        Container(color: Colors.red.shade700),
        Container(color: Colors.red.shade800),
        Container(color: Colors.red.shade900),
        Container(color: Colors.green.shade50),
        Container(color: Colors.green.shade100),
        Container(color: Colors.green.shade200),
        Container(color: Colors.green.shade300),
        Container(color: Colors.green.shade400),
        Container(color: Colors.green.shade500),
        Container(color: Colors.green.shade600),
        Container(color: Colors.green.shade700),
        Container(color: Colors.green.shade800),
        Container(color: Colors.green.shade900),
        Container(color: Colors.purple.shade50),
        Container(color: Colors.purple.shade100),
        Container(color: Colors.purple.shade200),
        Container(color: Colors.purple.shade300),
        Container(color: Colors.purple.shade400),
        Container(color: Colors.purple.shade500),
        Container(color: Colors.purple.shade600),
        Container(color: Colors.purple.shade700),
        Container(color: Colors.purple.shade800),
        Container(color: Colors.purple.shade900),
        Container(color: Colors.brown.shade50),
        Container(color: Colors.brown.shade100),
        Container(color: Colors.brown.shade200),
        Container(color: Colors.brown.shade300),
        Container(color: Colors.brown.shade400),
        Container(color: Colors.brown.shade500),
        Container(color: Colors.brown.shade600),
        Container(color: Colors.brown.shade700),
        Container(color: Colors.brown.shade800),
        Container(color: Colors.brown.shade900),
        Container(color: Colors.cyan.shade50),
        Container(color: Colors.cyan.shade100),
        Container(color: Colors.cyan.shade200),
        Container(color: Colors.cyan.shade300),
        Container(color: Colors.cyan.shade400),
        Container(color: Colors.cyan.shade500),
        Container(color: Colors.cyan.shade600),
        Container(color: Colors.cyan.shade700),
        Container(color: Colors.cyan.shade800),
        Container(color: Colors.cyan.shade900),
        Container(color: Colors.deepOrange.shade50),
        Container(color: Colors.deepOrange.shade100),
        Container(color: Colors.deepOrange.shade200),
        Container(color: Colors.deepOrange.shade300),
        Container(color: Colors.deepOrange.shade400),
        Container(color: Colors.deepOrange.shade500),
        Container(color: Colors.deepOrange.shade600),
        Container(color: Colors.deepOrange.shade700),
        Container(color: Colors.deepOrange.shade800),
        Container(color: Colors.deepOrange.shade900),
        Container(color: Colors.pink.shade50),
        Container(color: Colors.pink.shade100),
        Container(color: Colors.pink.shade200),
        Container(color: Colors.pink.shade300),
        Container(color: Colors.pink.shade400),
        Container(color: Colors.pink.shade500),
        Container(color: Colors.pink.shade600),
        Container(color: Colors.pink.shade700),
        Container(color: Colors.pink.shade800),
        Container(color: Colors.pink.shade900),
        Container(color: Colors.lime.shade50),
        Container(color: Colors.lime.shade100),
        Container(color: Colors.lime.shade200),
        Container(color: Colors.lime.shade300),
        Container(color: Colors.lime.shade400),
        Container(color: Colors.lime.shade500),
        Container(color: Colors.lime.shade600),
        Container(color: Colors.lime.shade700),
        Container(color: Colors.lime.shade800),
        Container(color: Colors.lime.shade900),
      ],
    );
  }
}