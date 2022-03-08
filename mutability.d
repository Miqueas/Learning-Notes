import std.stdio : writeln;

/*
  In D, `const` are mostly used to indicate that, by example,
  a function will not modify the given value. But `const` isn't
  100% inmutable, it can reference to a mutable value that can
  be changed in other moment of the program lifetime.

  See: https://dlang.org/spec/const3.html#const_and_immutable
*/
int fib(const int n) {
  if (n < 2) return n;

  return fib(n - 1) + fib(n - 2);
}

void main() {
  // `immutable` is truly immutable
  // here the type of `h` is inferred
  immutable h = 29;
  writeln(fib(h));
}