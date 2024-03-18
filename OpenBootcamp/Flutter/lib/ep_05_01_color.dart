import "package:flutter/material.dart";
import "dart:math";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Color")),
        body: const Center(
          child: MyHome()
        )
      ),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
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