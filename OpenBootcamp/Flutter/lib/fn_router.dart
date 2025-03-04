import 'package:flutter/material.dart';
import 'package:flutter_notes/exercises/module_04/fn_exercise_04_01_hello.dart';
import 'package:flutter_notes/exercises/module_04/fn_exercise_04_02_stateful.dart';
import 'package:flutter_notes/exercises/module_04/fn_exercise_04_03_scaffold.dart';
import 'package:flutter_notes/exercises/module_04/fn_exercise_04_04_drawer.dart';
import 'package:flutter_notes/exercises/module_04/fn_exercise_04_05_cupertino.dart';
import 'package:flutter_notes/exercises/module_04/fn_exercise_04_06_platform.dart';
import 'package:flutter_notes/exercises/module_04/fn_exercise_04_07_buttons.dart';
import 'package:flutter_notes/exercises/module_04/fn_exercise_04_09_icons.dart';
import 'package:flutter_notes/exercises/module_04/fn_exercise_04_10_images.dart';
import 'package:flutter_notes/exercises/module_04/fn_exercise_04_11_fonts.dart';
import 'package:flutter_notes/exercises/module_04/fn_exercise_04_12_alignment.dart';
import 'package:flutter_notes/exercises/module_04/fn_exercise_04_13_layout.dart';
import 'package:flutter_notes/exercises/module_04/fn_exercise_04_14_container.dart';
import 'package:flutter_notes/exercises/module_04/fn_exercise_04_15_stepper.dart';
import 'package:flutter_notes/exercises/module_05/fn_exercise_05_01_color.dart';
import 'package:flutter_notes/exercises/module_05/fn_exercise_05_02_provider.dart';
import 'package:flutter_notes/exercises/module_05/fn_exercise_05_03_streamcontroller.dart';
import 'package:flutter_notes/fn_about_screen.dart';
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
        FnExercise(
          id: 6,
          topic: 'Platform',
          route: FnRouterPaths.module04Exercise06,
          content: FnExercise0406Platform(),
        ),
        FnExercise(
          id: 7,
          topic: 'Buttons',
          route: FnRouterPaths.module04Exercise07,
          content: FnExercise0407Buttons(),
        ),
        FnExercise(
          id: 9,
          topic: 'Icons',
          route: FnRouterPaths.module04Exercise09,
          content: FnExercise0409Icons(),
        ),
        FnExercise(
          id: 10,
          topic: 'Images',
          route: FnRouterPaths.module04Exercise10,
          content: FnExercise0410Images(),
        ),
        FnExercise(
          id: 11,
          topic: 'Fonts',
          route: FnRouterPaths.module04Exercise11,
          content: FnExercise0411Fonts(),
        ),
        FnExercise(
          id: 12,
          topic: 'Alignment',
          route: FnRouterPaths.module04Exercise12,
          content: FnExercise0412Alignment(),
        ),
        FnExercise(
          id: 13,
          topic: 'Layout',
          route: FnRouterPaths.module04Exercise13,
          content: FnExercise0413Layout(),
        ),
        FnExercise(
          id: 14,
          topic: 'Container',
          route: FnRouterPaths.module04Exercise14,
          content: FnExercise0414Container(),
        ),
        FnExercise(
          id: 15,
          topic: 'Stepper',
          route: FnRouterPaths.module04Exercise15,
          content: FnExercise0415Stepper(),
        ),
      },
    ),
    FnModule(
      id: 5,
      topic: 'Color and logic',
      route: FnRouterPaths.module05,
      exercises: {
        FnExercise(
          id: 1,
          topic: 'Color',
          route: FnRouterPaths.module05Exercise01,
          content: FnExercise0501Color(),
        ),
        FnExercise(
          id: 2,
          topic: 'Provider',
          route: FnRouterPaths.module05Exercise02,
          content: FnExercise0502Provider(),
        ),
        FnExercise(
          id: 3,
          topic: 'StreamController',
          route: FnRouterPaths.module05Exercise03,
          content: FnExercise0503StreamController(),
        ),
      },
    ),
  };

  static Map<String, WidgetBuilder> buildRoutes() {
    final routes = <String, WidgetBuilder>{};
    routes[FnRouterPaths.about] = (context) => const FnAboutScreen();

    for (final module in modules) {
      routes[module.route] = (context) => _buildScreen(module);
      for (final exercise in module.exercises) {
        routes[exercise.route] = (context) => _buildScreen(module, exercise);
      }
    }

    return routes;
  }
}