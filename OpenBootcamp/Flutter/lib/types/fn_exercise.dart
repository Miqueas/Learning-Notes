import 'package:flutter/material.dart';

final class FnExercise {
  final int id;
  final String topic;
  final String route;
  final Widget content;

  const FnExercise({
    required this.id,
    required this.topic,
    required this.route,
    required this.content,
  });
}