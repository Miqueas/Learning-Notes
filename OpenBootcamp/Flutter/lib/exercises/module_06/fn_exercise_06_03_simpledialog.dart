import "package:flutter/material.dart";
import "package:gap/gap.dart";

final class FnExercise0603SimpleDialog extends StatefulWidget {
  const FnExercise0603SimpleDialog({super.key});

  @override
  State<FnExercise0603SimpleDialog> createState()
    => _FnExercise0603SimpleDialogState();
}

final class _FnExercise0603SimpleDialogState
extends State<FnExercise0603SimpleDialog>
{
  var _icon = Icons.home;

  Future<void> _showDialog() async {
    var dialogResult = await showDialog<int>(
      context: context,
      builder: (BuildContext context) => SimpleDialog(
        title: const Text("SimpleDialog"),
        children: [
          SimpleDialogOption(
            onPressed: () => Navigator.pop<int>(context, 1),
            child: const Row(children: [
              Icon(Icons.home),
              Gap(4),
              Text("Home"),
            ],),
          ),
          SimpleDialogOption(
            onPressed: () => Navigator.pop<int>(context, 2),
            child: const Row(children: [
              Icon(Icons.explore),
              Gap(4),
              Text("Explore"),
            ],),
          ),
          SimpleDialogOption(
            onPressed: () => Navigator.pop<int>(context, 3),
            child: const Row(children: [
              Icon(Icons.camera),
              Gap(4),
              Text("Camera"),
            ],),
          ),
          SimpleDialogOption(
            onPressed: () => Navigator.pop<int>(context, 4),
            child: const Row(children: [
              Icon(Icons.favorite),
              Gap(4),
              Text("Favorite"),
            ],),
          ),
        ],
      ),
    );

    switch (dialogResult) {
      case 1: setState(() => _icon = Icons.home); break;
      case 2: setState(() => _icon = Icons.explore); break;
      case 3: setState(() => _icon = Icons.camera); break;
      case 4: setState(() => _icon = Icons.favorite); break;
    }
  }

  @override
  Widget build(BuildContext context) => Center(child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(_icon),
      const Gap(8),
      ElevatedButton(
        onPressed: _showDialog,
        child: const Text("Change Icon"),
      ),
    ],
  ),);
}