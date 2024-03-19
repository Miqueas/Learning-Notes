import "package:flutter/material.dart";
import "dart:math";

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Color")),
        body: const Center(
          child: Home()
        )
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
  var red = 0;
  var green = 0;
  var blue = 0;
  var color = Color(Colors.black.value);

  void _doChangeColor() {
    red = Random.secure().nextInt(256);
    green = Random.secure().nextInt(256);
    blue = Random.secure().nextInt(256);

    setState(() {
      color = Color.fromRGBO(red, green, blue, 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: _doChangeColor,
            child: const Text("Change color")
          ),
        )
      ],
    );
  }
}