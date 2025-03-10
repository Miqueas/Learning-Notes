import "package:flutter/material.dart";

enum Options {
  n1, n2, n3
}

final class FnExercise0708Radio extends StatefulWidget {
  const FnExercise0708Radio({super.key});

  @override
  State<FnExercise0708Radio> createState() => _FnExercise0708RadioState();
}

final class _FnExercise0708RadioState extends State<FnExercise0708Radio> {
  var _option = Options.n1;

  void _onChange(Options? option) => setState(() => _option = option ?? _option);

  @override
  Widget build(BuildContext context) => Center(child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text('Choose an option'),
      SizedBox(
        width: 300,
        child: ListTile(
          title: const Text('Option 1'),
          leading: Radio<Options>(
            value: Options.n1,
            groupValue: _option,
            onChanged: _onChange,
          ),
        )
      ),
      SizedBox(
        width: 300,
        child: ListTile(
          title: const Text('Option 2'),
          leading: Radio<Options>(
            value: Options.n2,
            groupValue: _option,
            onChanged: _onChange,
          ),
        )
      ),
      SizedBox(
        width: 300,
        child: ListTile(
          title: const Text('Option 3'),
          leading: Radio<Options>(
            value: Options.n3,
            groupValue: _option,
            onChanged: _onChange,
          ),
        )
      ),
    ]
  ),);
}