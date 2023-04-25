import std.stdio : writeln;

void main() {
  // Well D has that `goto` thing...
  // This will be an infinite loop

  A: {
    writeln("Welcome to A");
  }

  writeln("Go to E");
  goto E;

  E: {
    writeln("Welcome to E");
    writeln("Now go to A");
    goto A;
  }
}