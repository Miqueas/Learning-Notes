// An small overview of Dart
int fib(int n) {
  if (n < 2) return n;

  return fib(n - 1) + fib(n - 2);
}

void main(List<String> args) {
  print("E");
  print("fib(10) = ${fib(10)}");

  if (args.isNotEmpty) {
    print("Arguments:");

    for (var arg in args) {
      print(" - $arg");
    }
  }
}