import "package:flutter/material.dart";
import "package:gap/gap.dart";

final class FnExercise0703TextEditingController extends StatefulWidget {
  const FnExercise0703TextEditingController({super.key});

  @override
  State<FnExercise0703TextEditingController> createState()
    => _FnExercise0703TextEditingControllerState();
}

final class _FnExercise0703TextEditingControllerState
extends State<FnExercise0703TextEditingController>
{
  final _controller = TextEditingController();
  var _input = '';

  void _doChangeSate() => setState(() => _input = _controller.text);

  @override
  void initState() {
    _controller.addListener(_doChangeSate);
    // _controller.value = TextEditingValue(text: _input);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Center(child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text("Type something"),
      SizedBox(
        width: 220,
        child: TextField(
          controller: _controller,
          onChanged: (value) => setState(() => _input = value),
        ),
      ),
      const Gap(8),
      Text('Input: "$_input"'),
    ],
  ),);
}