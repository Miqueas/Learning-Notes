import "package:flutter/material.dart";

final class FnExercise0602AlertDialog extends StatelessWidget {
  const FnExercise0602AlertDialog({super.key});

  @override
  Widget build(BuildContext context) => Center(child: ElevatedButton(
    child: const Text("Show AlertDialog"),
    onPressed: () => showDialog(
      context: context,
      builder: (BuildContext dialogContext) => AlertDialog(
        title: const Text("Alert!"),
        content: const Text("Something dangerous happened!"),
        actions: [
          ElevatedButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text("Cancel")
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text("Ok")
          ),
        ],
      )
    ),
  ),);
}