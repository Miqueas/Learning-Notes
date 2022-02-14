// An small overview of Dart
void main(List<String> args) {
  print("E");

  if (args.isNotEmpty) {
    print("Arguments:");

    for (var arg in args) {
      print(arg);
    }
  }
}