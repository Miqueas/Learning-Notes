import "package:flutter/material.dart";
import "package:gap/gap.dart";

final class FnExercise0707Switch extends StatefulWidget {
  const FnExercise0707Switch({super.key});

  @override
  State<FnExercise0707Switch> createState() => _FnExercise0707SwitchState();
}

final class _FnExercise0707SwitchState extends State<FnExercise0707Switch> {
  var _active = false;

  void _onChange(bool setting) => setState(() => _active = setting);

  @override
  Widget build(BuildContext context) => Center(child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Switch(
        value: _active,
        onChanged: _onChange,
      ),
      const Gap(8),
      Text(_active ? 'On' : 'Off'),
    ],
  ),);
}