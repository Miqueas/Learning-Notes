import std.stdio;

void main() {
  int num = 29;
  int* nump = &num;
  // Memory can be allocated using `new`
  int* np = new int;

  int[3] a = [ 2, 4, 6 ];
  auto ap = &a;
  writeln(typeid(ap)); // int[3]*

  int x, y, z;
  x = a[0];
  y = a[1];
  z = a[2];

  // Ok i hate pointers

  // array of pointers
  int*[] h = [ &x, &y, &z ];
  // pointer to an array of pointers
  int*[]* hp = &h;
  // ?
  int*[]*[] hph = [ hp ];
  // ?  ?  ?
  int*[]*[]* hphp = &hph;

  writeln(typeid(h));
  writeln(typeid(hp));
  writeln(typeid(hph));
  writeln(typeid(hphp));

  writeln(num);
  writeln(nump);
  writeln(*nump);
  writeln(np);
  writeln(*np);
  *np = 36;
  writeln(*np);
}