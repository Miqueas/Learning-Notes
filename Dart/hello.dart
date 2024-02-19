// An small overview of Dart

/* Some important concepts

  - Everything inside variables is an object (including `null`)
  - Dart is strongly typed (but also has type inference)
  - Dart has null safety since version 2.12
  - Dart support generics

*/

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