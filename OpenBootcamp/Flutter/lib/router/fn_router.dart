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
import 'package:flutter_notes/exercises/module_06/fn_exercise_06_01_snackbar.dart';
import 'package:flutter_notes/exercises/module_06/fn_exercise_06_02_alertdialog.dart';
import 'package:flutter_notes/exercises/module_06/fn_exercise_06_03_simpledialog.dart';
import 'package:flutter_notes/exercises/module_06/fn_exercise_06_04_networkimage.dart';
import 'package:flutter_notes/exercises/module_06/fn_exercise_06_05_navigation.dart';
import 'package:flutter_notes/exercises/module_07/fn_exercise_07_01_textfield.dart';
import 'package:flutter_notes/exercises/module_07/fn_exercise_07_03_texteditingcontroller.dart';
import 'package:flutter_notes/exercises/module_07/fn_exercise_07_04_datepicker.dart';
import 'package:flutter_notes/exercises/module_07/fn_exercise_07_05_timepicker.dart';
import 'package:flutter_notes/exercises/module_07/fn_exercise_07_07_switch.dart';
import 'package:flutter_notes/exercises/module_07/fn_exercise_07_08_radio.dart';
import 'package:flutter_notes/exercises/module_07/fn_exercise_07_09_checkbox.dart';
import 'package:flutter_notes/exercises/module_07/fn_exercise_07_10_slider.dart';
import 'package:flutter_notes/exercises/module_08/fn_exercise_08_01_listview.dart';
import 'package:flutter_notes/exercises/module_08/fn_exercise_08_02_dissmisible_card.dart';
import 'package:flutter_notes/exercises/module_08/fn_exercise_08_03_inkwell.dart';
import 'package:flutter_notes/exercises/module_08/fn_exercise_08_04_gridview.dart';
import 'package:flutter_notes/fn_about_screen.dart';
import 'package:flutter_notes/fn_paths.dart';
import 'package:flutter_notes/types/fn_exercise.dart';
import 'package:flutter_notes/types/fn_module.dart';
import 'package:flutter_notes/widgets/fn_list_item.dart';
import 'package:format/format.dart';

part 'fn_router.module_04.dart';
part 'fn_router.module_05.dart';
part 'fn_router.module_06.dart';
part 'fn_router.module_07.dart';
part 'fn_router.module_08.dart';
part 'fn_router.module_09.dart';
part 'fn_router.module_10.dart';
part 'fn_router.coming_soon.dart';
part 'fn_router.screen_builder.dart';

final class FnRouter {
  static const modules = {
    _module04,
    _module05,
    _module06,
    _module07,
    _module08,
    _module09,
    _module10,
  };

  static Map<String, WidgetBuilder> buildRoutes() {
    final routes = <String, WidgetBuilder>{};
    routes[FnPaths.about] = (_) => const FnAboutScreen();

    for (final module in modules) {
      if (module.exercises.isEmpty) {
        routes[module.route] = (_) => _comingSoonScreen(module);
        continue;
      }

      routes[module.route] = (_) => _screenBuilder(module);
      for (final exercise in module.exercises) {
        routes[exercise.route] = (_) => _screenBuilder(module, exercise);
      }
    }

    return routes;
  }
}