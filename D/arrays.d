import std.stdio : writeln;

void main() {
  // D allows dynamic and static arrays.
  // Static arrays are fixed-size
  int[3] a1 = [ 2, 4, 6 ];
  // Dynamic arrays can grow at runtime
  int[] a2 = new int[3];
  a2[0] = a1[0];
  a2[1] = a1[1];
  a2[2] = a1[2]; // this is the end of this array
  // but size can be changed since this is dynamic
  a2.length = 5;
  a2[3] = 8;
  a2[4] = 10;

  writeln(a1);
  writeln(a2);

  // now look at this
  a1[] *= 2;
  writeln(a1);
  // same as: a2[a2.length - 1]
  writeln(a2[$ - 1]);

  // Now there's slices, wich is basically the same as a dynamic
  // array, but it also can maed in other ways, by example:
  int[10] a3 = [ 4, 8, 12, 16, 20, 24, 28, 32, 36, 40 ];
  // index 7 isn't included
  auto a4 = a3[4 .. 7];

  writeln(a3);
  writeln(a4);

  // Note that slices doesn't create a copy, it still refers
  // to the original array (or any thing that implements `opSlice`).
  // So this will modify `a3`
  a4[] *= 3;
  writeln(a3);
  writeln(a4);
}