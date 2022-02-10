import std.stdio;

void main() {
  int num = 29;
  int* nump = &num;

  writeln(num);
  writeln(nump);
  writeln(*nump);
}