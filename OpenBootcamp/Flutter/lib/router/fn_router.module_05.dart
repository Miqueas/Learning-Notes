part of 'fn_router.dart';

const _module05 = FnModule(
  id: 5,
  topic: 'Color and logic',
  route: FnPaths.module05,
  exercises: {
    FnExercise(
      id: 1,
      topic: 'Color',
      route: FnPaths.module05Exercise01,
      content: FnExercise0501Color(),
    ),
    FnExercise(
      id: 2,
      topic: 'Provider',
      route: FnPaths.module05Exercise02,
      content: FnExercise0502Provider(),
    ),
    FnExercise(
      id: 3,
      topic: 'StreamController',
      route: FnPaths.module05Exercise03,
      content: FnExercise0503StreamController(),
    ),
  },
);