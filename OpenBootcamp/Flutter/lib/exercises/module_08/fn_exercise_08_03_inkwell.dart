import "package:flutter/material.dart";

final class FnExercise0803InkWell extends StatelessWidget {
  const FnExercise0803InkWell({super.key});

  @override
  Widget build(BuildContext context) => Center(child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      InkWell(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: const Text("Tap me"),
        ),
        onTap: () => ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Tapped"),),
        ),
      ),
      InkWell(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: const Text("Double tap me"),
        ),
        onDoubleTap: () => ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Double tapped"),),
        ),
      ),
      InkWell(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: const Text("Long press me"),
        ),
        onLongPress: () => ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Long pressed"),),
        ),
      ),
    ],
  ),);
}