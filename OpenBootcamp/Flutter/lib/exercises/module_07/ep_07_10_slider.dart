import "package:flutter/material.dart";
import "package:format/format.dart";

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Slider"),
          ),
          body: const Sliders()
        )
      ),
    );
  }
}

class Sliders extends StatefulWidget {
  const Sliders({super.key});

  @override
  State<Sliders> createState() => _SlidersState();
}

class _SlidersState extends State<Sliders> {
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
                Text("{:03}".format([ _alpha ])),
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
                Text("{:03}".format([ _red ])),
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
                Text("{:03}".format([ _green ]),),
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
                Text("{:03}".format([ _blue ]),),
              ]
            )
          )
        ),
      ]
    );
  }
}