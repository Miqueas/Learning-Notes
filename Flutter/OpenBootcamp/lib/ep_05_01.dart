import "package:flutter/material.dart";
import "dart:math";

const appTitle = "Flutter OpenBootcamp";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Material(child: MyHome()),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  var _red = 0;
  var _green = 0;
  var _blue = 0;
  var _color = Color(Colors.black.value);

  void _doChangeColor() {
    _red = Random.secure().nextInt(256);
    _green = Random.secure().nextInt(256);
    _blue = Random.secure().nextInt(256);

    setState(() {
      _color = Color.fromRGBO(_red, _green, _blue, 1);
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
            color: _color,
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