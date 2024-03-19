import "package:flutter/material.dart";

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Container")),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.amber,
                child: const Text("A"),
              ),
              Container(
                color: Colors.blue,
                height: 60,
                width: 60,
                child: const Text("B"),
              ),
              Container(
                height: 60,
                width: 60,
                decoration: const BoxDecoration(
                  color: Colors.cyan,
                  shape: BoxShape.circle,
                ),
                child: const Text("C"),
              ),
              Container(
                height: 60,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                    style: BorderStyle.solid,
                  )
                ),
                child: const Text("D"),
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.green,
                alignment: Alignment.bottomRight,
                child: const Text("E"),
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.indigo,
                alignment: const Alignment(0.4, -0.4),
                child: const Text("E"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}