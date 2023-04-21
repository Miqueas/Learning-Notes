void main(List<String> args) {
  // Idk why the teacher decided to talk about this so late...
  // Anyway, Dart operators are mostly the usual as in other languages.
  // Some of these can be slightly different, for more details, check:
  // https://dart.dev/language/operators
  int x = 29;
  int y = 92;

  print("Add: ${x + y}");
  print("Sub: ${x - y}");
  print("Mult: ${x * y}");
  print("Div: ${x / y}");
  // Integer division
  print("Int Div: ${x ~/ y}");
  print("Mod: ${x % y}");

  // So, these was the "basics", let's check more operators
  num z = 22;
  // Type casting, there are some "terms and conditions", so check the
  // docs please
  print("Conv: ${z as int}");
  // `true` if `z` is `double`
  print("Check: ${z is double}");
  // `true` if `z` isn't `double`
  print("Check: ${z is! double}");

  bool? yes;
  // If `yes` isn't `null`, then it will be use, otherwise, the
  // expression in the right side will be used
  print("Is null: ${yes ?? true}");

  // There are more operators, but for more details, check the docs :)
}