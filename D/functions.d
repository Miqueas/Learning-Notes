import std.stdio;

/*
  Functions are written like in C, but also can use `auto`.
  This allows functions to return values of different types.
*/
auto some_fn(bool h) {
  if (h) return 29;
  return 3.14159;
}

void main() {
  // I'm not sure, but it seems like this kind of functions
  // can arbitrary return one or other type, so using `auto`
  // can be the best option to store values in this case.
  auto a = some_fn(true);
  auto b = some_fn(false);

  writeln("Value: ", a, ". Type: ", typeid(a));
  writeln("Value: ", b, ". Type: ", typeid(b));
}