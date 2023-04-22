void main(List<String> args) {
  // Dart has the same loops as much other languages:
  //   while, do-while, for, for-in
  int n = 0;

  print("While:");
  while (n < 10) {
    print(n);
    ++n;
  }

  print("Do-While:");
  do {
    --n;
    print(n);
  } while (n > 0);

  print("For:");
  for (int i = 0; i < 10; i++) {
    print(i);
  }

  var animals = [ "cat", "dog", "bug", "elephant", "tiger", "lion" ];

  print("For-In:");
  for (final animal in animals) {
    print(animal);
  }
}