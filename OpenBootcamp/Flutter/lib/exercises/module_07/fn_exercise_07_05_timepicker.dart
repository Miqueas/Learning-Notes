import "package:flutter/material.dart";
import "package:format/format.dart";

final class FnExercise0705TimePicker extends StatefulWidget {
  const FnExercise0705TimePicker({super.key});

  @override
  State<FnExercise0705TimePicker> createState()
    => _FnExercise0705TimePickerState();
}

final class _FnExercise0705TimePickerState
extends State<FnExercise0705TimePicker>
{
  TimeOfDay? _time;

  Future<void> doShowTimePicker() async {
    _time = await showTimePicker(
      context: context,
      initialTime: const TimeOfDay(hour: 0, minute: 0),
    );
    
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var template = switch (_time) {
      null => 'You haven\'t selected a time yet',
      _ => 'Time selected: {h:02}:{m:02}'.format({
        'h': _time?.hour,
        'm': _time?.minute,
      }),
    };

    return Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: doShowTimePicker,
          child: const Text('Select a time'),
        ),
        Text(template),
      ]
    ),);
  }
}