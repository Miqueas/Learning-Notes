part of 'fn_router.dart';

Widget _screenBuilder(FnModule module, [ FnExercise? exercise ]) => Material(
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