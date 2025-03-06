import "package:flutter/material.dart";
import "package:format/format.dart";

final class FnExercise0704DatePicker extends StatefulWidget {
  const FnExercise0704DatePicker({super.key});

  @override
  State<FnExercise0704DatePicker> createState()
    => _FnExercise0704DatePickerState();
}

final class _FnExercise0704DatePickerState
extends State<FnExercise0704DatePicker>
{
  DateTime? _date;

  void doShowDatePicker() async {
    _date = await showDatePicker(
      context: context,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      initialDate: DateTime.now(),
    );

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var template = switch (_date) {
      null => 'You haven\'t selected a date yet',
      _ => 'Date selected: {d:02}-{m:02}-{y:04}'.format({
        'd': _date?.day,
        'm': _date?.month,
        'y': _date?.year,
      }),
    };

    return Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: doShowDatePicker,
          child: const Text('Select a date'),
        ),
        Text(template),
      ],
    ),);
  }
}