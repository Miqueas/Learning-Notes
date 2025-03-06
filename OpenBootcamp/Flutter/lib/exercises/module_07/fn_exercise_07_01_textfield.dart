import "package:flutter/material.dart";
import "package:gap/gap.dart";

final class FnExercise0701TextField extends StatefulWidget {
  const FnExercise0701TextField({super.key});

  @override
  State<FnExercise0701TextField> createState()
    => _FnExercise0701TextFieldState();
}

final class _FnExercise0701TextFieldState
extends State<FnExercise0701TextField>
{
  var _input = '';

  @override
  Widget build(BuildContext context) => Center(child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text('Type something'),
      SizedBox(
        width: 220,
        child: TextField(onChanged: (value) => setState(() => _input = value),),
      ),
      const Gap(8),
      Text('Input: "$_input"'),
    ],
  ),);
}