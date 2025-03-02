import 'package:flutter_notes/types/fn_exercise.dart';

final class FnModule {
  final int id;
  final String topic;
  final String route;
  final Set<FnExercise> exercises;

  const FnModule({
    required this.id,
    required this.topic,
    required this.route,
    required this.exercises,
  });
}