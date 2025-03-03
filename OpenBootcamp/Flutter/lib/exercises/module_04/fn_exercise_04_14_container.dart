import 'package:flutter/material.dart';

final class FnExercise0414Container extends StatelessWidget {
  const FnExercise0414Container({super.key});

  @override
  Widget build(BuildContext context) => Center(child: Row(
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
        height: 100,
        width: 100,
        color: Colors.green,
        alignment: Alignment.bottomRight,
        child: const Text("E"),
      ),
      Container(
        height: 100,
        width: 100,
        color: Colors.indigo,
        alignment: const Alignment(0.4, -0.4),
        child: const Text("F"),
      ),
    ],
  ),);
}