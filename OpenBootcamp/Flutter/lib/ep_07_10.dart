import "package:flutter/material.dart";
import "package:sprintf/sprintf.dart";

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
          body: const MySliders()
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
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(_alpha, _red, _green, _blue),
            borderRadius: const BorderRadius.all(Radius.circular(10))
          ),
          width: 200,
          height: 200,
        ),
        Center(
          child: SizedBox(
            width: 380,
            child: Row(
              children: [
                const Text("Alpha"),
                const Spacer(),
                Slider(
                  value: _alpha.toDouble(),
                  max: 255,
                  onChanged: (value) => setState(() => _alpha = value.round())
                ),
                Text(sprintf("%03d", [_alpha]))
              ]
            )
          )
        ),
        Center(
          child: SizedBox(
            width: 380,
            child: Row(
              children: [
                const Text("Red"),
                const Spacer(),
                Slider(
                  value: _red.toDouble(),
                  max: 255,
                  onChanged: (value) => setState(() => _red = value.round())
                ),
                Text(sprintf("%03d", [_red]))
              ]
            )
          )
        ),
        Center(
          child: SizedBox(
            width: 380,
            child: Row(
              children: [
                const Text("Green"),
                const Spacer(),
                Slider(
                  value: _green.toDouble(),
                  max: 255,
                  onChanged: (value) => setState(() => _green = value.round())
                ),
                Text(sprintf("%03d", [_green]))
              ]
            )
          )
        ),
        Center(
          child: SizedBox(
            width: 380,
            child: Row(
              children: [
                const Text("Blue"),
                const Spacer(),
                Slider(
                  value: _blue.toDouble(),
                  max: 255,
                  onChanged: (value) => setState(() => _blue = value.round())
                ),
                Text(sprintf("%03d", [_blue]))
              ]
            )
          )
        ),
      ]
    );
  }
}