import "package:flutter/material.dart";
import "dart:math";

final class FnExercise0501Color extends StatefulWidget {
  const FnExercise0501Color({ super.key });

  @override
  State<FnExercise0501Color> createState() => _FnExercise0501ColorState();
}

final class _FnExercise0501ColorState extends State<FnExercise0501Color> {
  var color = Colors.black;

  void _onChangeColor() {
    final random = Random();
    final red = random.nextInt(256);
    final green = random.nextInt(256);
    final blue = random.nextInt(256);

    setState(() => color = Color.fromRGBO(red, green, blue, 1));
  }

  @override
  Widget build(BuildContext context) => Center(child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10),
        child: ElevatedButton(
          onPressed: _onChangeColor,
          child: const Text("Change color")
        ),
      )
    ],
  ),);
}