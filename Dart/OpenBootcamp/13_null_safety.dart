void main() {
  // Non-nullable
  int x;
  // Nullable
  int? y;
  // Non-nullable, will be initialized later
  late int z;

  // Error: `x` isn't initialized yet
  print(x);
  // Ok, `y` is nullable
  print(y);
  // Same as `x`, don't have a value yet
  print(z);

  x = 29;
  // Error: `y` is nullable and is `null` here, because isn't initialized yet
  z = x + y;

  // Ok
  print(x);
  // Sometimes you may need to use the "null assertion operator" (!), which
  // will throw an error during runtime if the operands is `null`
  print(y!);
  print(z);
}