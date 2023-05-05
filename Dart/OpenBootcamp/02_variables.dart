void main() {
  // This is a single-line comment.

  /*
    This is a multi-line comment.
  */

  // Naming rules for variables (and more) in Dart
  // are like other programming languages, like:
  //    - Can't start with a number
  //    - Can start with a dollar symbol ($)
  //    - Can start with an underscore
  //    - Etc...
  var name = "Miqueas";
  var age = 22;

  print(name);
  print(age);

  // We can know the value type of a variable using
  // the `runtimeType` property:
  print(name.runtimeType);
  print(age.runtimeType);

  // In Dart we also have types, the difference between using
  // `var` and specific types is that `var` allows changing
  // to any type of value.
  String email = "name@example.com";
  int year = 2022;
  double pi = 3.14159;
  bool dartIsCool = true;
  // There's also `List`, `Set`, `Map` and more, but
  // I'll see that later.

  print(email.runtimeType);
  print(year.runtimeType);
  print(pi.runtimeType);
  print(dartIsCool.runtimeType);

  // Note that Dart is null-safe, so Dart code is usually secure.
  // There's also `final` and `const` in Dart and the difference
  // is that:
  //     - `final` can be set only once, but can be any value.
  //     - `const` must be a compile-time constant value, that
  //       means, you can't use a function call to set the value
  //       (by example).
  final result = (29 * 69) / 420;
  const PI = 3.14159;

  print(result);
  print(PI);

  // Multi-line string are done using triple quote
  String message = """
    Lorem
    Ipsum
""";

  // String concatenation is done using the plus (+) symbol
  print(message + " dolor sit amet");
}