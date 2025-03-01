import 'package:flutter/material.dart';
import 'package:flutter_notes/exercises/module_04/fn_exercise_04_01_hello.dart';
import 'package:flutter_notes/exercises/module_04/fn_exercise_04_02_stateful.dart';
import 'package:flutter_notes/exercises/module_04/fn_exercise_04_03_scaffold.dart';
import 'package:flutter_notes/exercises/module_04/fn_exercise_04_04_drawer.dart';
import 'package:flutter_notes/exercises/module_04/fn_exercise_04_05_cupertino.dart';
import 'package:flutter_notes/fn_router_paths.dart';
import 'package:flutter_notes/types/fn_exercise.dart';
import 'package:flutter_notes/types/fn_module.dart';
import 'package:flutter_notes/widgets/fn_list_item.dart';
import 'package:format/format.dart';

Widget _buildScreen(FnModule module, [ FnExercise? exercise ]) => Material(
  child: Scaffold(
    appBar: AppBar(
      toolbarHeight: 72,
      title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(exercise?.topic ?? module.topic,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          switch (exercise != null) {
            true => 'Exercise {ex:02} - Module {mod:02}',
            false => 'Module {mod:02}',
          }.format({
            if (exercise != null) #ex: exercise.id,
            #mod: module.id,
          }),
          style: const TextStyle(fontSize: 14,),
        ),
      ],),
    ),
    body: exercise?.content ?? ListView(children: [
      for (final exercise in module.exercises) FnListItem(
        title: exercise.topic,
        subtitle: 'Exercise {ex:02}'.format({ #ex: exercise.id }),
        route: exercise.route,
      ),
    ],),
  ),
);

final class FnRouter {
  static const modules = {
    FnModule(
      id: 4,
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
        FnExercise(
          id: 3,
          topic: 'Scaffold',
          route: FnRouterPaths.module04Exercise03,
          content: FnExercise0403Scaffold(),
        ),
        FnExercise(
          id: 4,
          topic: 'Drawer',
          route: FnRouterPaths.module04Exercise04,
          content: FnExercise0404Drawer(),
        ),
        FnExercise(
          id: 5,
          topic: 'Cupertino',
          route: FnRouterPaths.module04Exercise05,
          content: FnExercise0405Cupertino(),
        ),
      },
    ),
  };

  static Map<String, WidgetBuilder> buildRoutes() {
    final routes = <String, WidgetBuilder>{};

    for (final module in modules) {
      routes[module.route] = (context) => _buildScreen(module);
      for (final exercise in module.exercises) {
        routes[exercise.route] = (context) => _buildScreen(module, exercise);
      }
    }

    return routes;
  }
}