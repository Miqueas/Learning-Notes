import "package:flutter/material.dart";
import "package:format/format.dart";

final class FnExercise0710Slider extends StatefulWidget {
  const FnExercise0710Slider({super.key});

  @override
  State<FnExercise0710Slider> createState() => _FnExercise0710SliderState();
}

final class _FnExercise0710SliderState extends State<FnExercise0710Slider> {
  var _alpha = 255;
  var _red = 0;
  var _green = 0;
  var _blue = 0;

  @override
  Widget build(BuildContext context) => Center(child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: Color.fromARGB(_alpha, _red, _green, _blue),
          borderRadius: const BorderRadius.all(Radius.circular(10))
        ),
      ),
      SizedBox(
        width: 380,
        child: Row(children: [
          const Text("Alpha"),
          const Spacer(),
          Slider(
            max: 255,
            value: _alpha.toDouble(),
            onChanged: (value) => setState(() => _alpha = value.round())
          ),
          Text("{:03}".format([ _alpha ])),
        ],),
      ),
      SizedBox(
        width: 380,
        child: Row(children: [
          const Text("Red"),
          const Spacer(),
          Slider(
            max: 255,
            value: _red.toDouble(),
            onChanged: (value) => setState(() => _red = value.round())
          ),
          Text("{:03}".format([ _red ])),
        ],),
      ),
      SizedBox(
        width: 380,
        child: Row(children: [
          const Text("Green"),
          const Spacer(),
          Slider(
            value: _green.toDouble(),
            max: 255,
            onChanged: (value) => setState(() => _green = value.round())
          ),
          Text("{:03}".format([ _green ]),),
        ],),
      ),
      SizedBox(
        width: 380,
        child: Row(children: [
          const Text("Blue"),
          const Spacer(),
          Slider(
            value: _blue.toDouble(),
            max: 255,
            onChanged: (value) => setState(() => _blue = value.round())
          ),
          Text("{:03}".format([ _blue ]),),
        ],),
      ),
    ],
  ),);
}