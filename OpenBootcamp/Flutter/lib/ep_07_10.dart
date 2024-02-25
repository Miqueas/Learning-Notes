import "package:flutter/material.dart";

const appTitle = "Flutter OpenBootcamp";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Material(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Slider"),
          ),
          body: const SizedBox(
            width: 300,
            child: MySliders(),
          )
        )
      ),
    );
  }
}

class MySliders extends StatefulWidget {
  const MySliders({super.key});

  @override
  State<MySliders> createState() => _MySlidersState();
}

class _MySlidersState extends State<MySliders> {
  var _alpha = 255;
  var _red = 0;
  var _green = 0;
  var _blue = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 200,
          height: 200,
          color: Color.fromARGB(_alpha, _red, _green, _blue),
        ),
        Wrap(
          children: [
            Row(
              children: [
                const Text("Alpha"),
                Slider(
                  value: _alpha.toDouble(),
                  max: 255,
                  onChanged: (value) => setState(() => _alpha = value.round())
                ),
              ]
            ),
          ]
        ),
        Wrap(
          children: [
            Row(
              children: [
                const Text("Red"),
                Slider(
                  value: _red.toDouble(),
                  max: 255,
                  onChanged: (value) => setState(() => _red = value.round())
                ),
              ]
            )
          ]
        ),
        Wrap(
          children: [
            Row(
              children: [
                const Text("Green"),
                Slider(
                  value: _green.toDouble(),
                  max: 255,
                  onChanged: (value) => setState(() => _green = value.round())
                ),
              ]
            ),
          ]
        ),
        Wrap(
          children: [
              Row(
              children: [
                const Text("Blue"),
                Slider(
                  value: _blue.toDouble(),
                  max: 255,
                  onChanged: (value) => setState(() => _blue = value.round())
                ),
              ]
            ),
          ]
        ),
      ],
    );
  }
}