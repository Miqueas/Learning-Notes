import "package:flutter/material.dart";

final class FnExercise0601Snackbar extends StatelessWidget {
  const FnExercise0601Snackbar({super.key});

  @override
  Widget build(BuildContext context) => Center(child: ElevatedButton(
    child: const Text("Show SnackBar"),
    onPressed: () {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Hi there!"),),
      );
    },
  ),);
}