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
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.amber.shade50,
              borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.amber.shade100,
              borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.amber.shade200,
              borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.amber.shade300,
              borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.amber.shade400,
              borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.amber.shade500,
              borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.amber.shade600,
              borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.amber.shade700,
              borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.amber.shade800,
              borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.amber.shade900,
              borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
              borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue.shade200,
              borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue.shade300,
              borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue.shade400,
              borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue.shade500,
              borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue.shade600,
              borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue.shade700,
              borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue.shade800,
              borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue.shade900,
              borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.red.shade50,
              borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.red.shade100,
              borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.red.shade200,
              borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.red.shade300,
              borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.red.shade400,
              borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.red.shade500,
              borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.red.shade600,
              borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.red.shade700,
              borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.red.shade800,
              borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.red.shade900,
              borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),
      ],
    );
  }
}