part of 'fn_router.dart';

const _module10 = FnModule(
  id: 10,
  topic: "Networking",
  route: FnPaths.module10,
  exercises: {
    FnExercise(
      id: 1,
      topic: 'HTTP GET',
      route: FnPaths.module10Exercise01,
      content: FnExercise1001HttpGet(),
    ),
    FnExercise(
      id: 2,
      topic: 'HTTP POST',
      route: FnPaths.module10Exercise02,
      content: FnExercise0902Location(),
    ),
  }
);