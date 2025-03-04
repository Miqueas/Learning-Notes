import "package:flutter/material.dart";
import "dart:async";

import "package:gap/gap.dart";

final class CountController {
  final _streamController = StreamController<int>();
  var _count = 0;

  Stream<int> get stream => _streamController.stream;
  Sink<int> get sink => _streamController.sink;

  void increment() => sink.add(++_count);
  void dispose() => _streamController.close();
}

final class FnExercise0503StreamController extends StatefulWidget {
  const FnExercise0503StreamController({super.key});

  @override
  State<FnExercise0503StreamController> createState()
    => _FnExercise0503StreamControllerState();
}

final class _FnExercise0503StreamControllerState
extends State<FnExercise0503StreamController>
{
  final countController = CountController();

  @override
  void dispose() {
    countController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => StreamBuilder<int>(
    stream: countController.stream,
    initialData: 0,
    builder: (context, state) => Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("${state.data}"),
        const Gap(8),
        IconButton.filled(
          onPressed: countController.increment,
          icon: const Icon(Icons.add),
        ),
      ],
    ),),
  );
}