import "package:flutter/material.dart";

final class FnExercise0402Stateful extends StatefulWidget {
  const FnExercise0402Stateful({super.key});

  @override
  State<FnExercise0402Stateful> createState() => _FnExercise0402StatefulState();
}

final class _FnExercise0402StatefulState extends State<FnExercise0402Stateful> {
  var _icon = Icons.favorite_border_rounded;
  var _liked = false;

  @override
  Widget build(BuildContext context) => Center(
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      IconButton(
        icon: Icon(_icon),
        onPressed: () => setState(() {
          _liked = !_liked;
          _icon = switch (_liked) {
            true => Icons.favorite_rounded,
            false => Icons.favorite_border_rounded,
          };
        }),
      ),
      Text('You ${ _liked ? 'like this now!' : 'don\'t like this yet!' }'),
    ],),
  );
}