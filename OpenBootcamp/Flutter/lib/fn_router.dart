import 'package:flutter/material.dart';
import 'package:flutter_notes/exercises/module_04/fn_exercise_04_01_hello.dart';
import 'package:flutter_notes/exercises/module_04/fn_exercise_04_02_stateful.dart';
import 'package:flutter_notes/fn_router_paths.dart';
import 'package:flutter_notes/types/fn_exercise.dart';
import 'package:flutter_notes/types/fn_module.dart';
import 'package:flutter_notes/widgets/fn_list_item.dart';
import 'package:sprintf/sprintf.dart';

final class FnRouter {
  final _modules = const {
    FnModule(
      id: 1,
      topic: 'Getting started',
      route: FnRouterPaths.module04,
      exercises: {
        FnExercise(
          id: 1,
          topic: 'Hello, world!',
          route: FnRouterPaths.module04Exercise01,
          content: FnExercise0401Hello(),
        ),
        FnExercise(
          id: 2,
          topic: 'Stateful widget',
          route: FnRouterPaths.module04Exercise02,
          content: FnExercise0402Stateful(),
        ),
      }
    ),
  };

  Map<String, WidgetBuilder> get routes => _buildRoutes();

  Map<String, WidgetBuilder> _buildRoutes() {
    final routes = <String, WidgetBuilder>{};

    for (final module in _modules) {
      routes[module.route] = (context) => _buildScreen(module);
      for (final exercise in module.exercises) {
        routes[exercise.route] = (context) => _buildScreen(module, exercise);
      }
    }

    return routes;
  }

  Widget _buildScreen(FnModule module, [ FnExercise? exercise ]) => Material(
    child: Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(exercise?.topic ?? module.topic,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              sprintf(
                switch (exercise != null) {
                  true => 'Exercise %02d - Module %02d',
                  false => 'Module %02d'
                },
                [ if (exercise != null) exercise.id, module.id, ],
              ),
              style: const TextStyle(fontSize: 14,),
            ),
          ],
        ),
      ),
      body: exercise?.content ?? ListView(children: [
        for (final exercise in module.exercises) FnListItem(
          title: exercise.topic,
          subtitle: sprintf('Exercise %02d', [ exercise.id ]),
          route: exercise.route,
        ),
      ],),
    ),
  );
}