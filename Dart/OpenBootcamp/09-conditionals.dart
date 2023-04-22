void main(List<String> args) {
  // Conditionals in Dart are just `if` and `switch`, that's it
  int n = 29;

  if (n > 29) {
    print("n is major than 30");
  } else if (n < 29) {
    print("n is minor than 29");
  } else {
    print("n is $n");
  }

  String day = "monday";

  switch (day) {
    case "saturday":
    case "sunday":
      print("No work today");
      break;
    default:
      print("TIME TO WORK");
  }

  // Dart also has `assert`, which will throw and error if the
  // given expression is `false`. Note that `assert` is disabled
  // by default, so you need to pass the '--enable-asserts' flag
  // to the Dart compiler to make them work properly
  assert(n != 29, "n is 29!!!");
}