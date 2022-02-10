// Imports doesn't need to be in the top of the code and can import
// only specified things using `:`
import std.stdio;
import std.conv : to, ConvException;
import std.string : chomp;

void main() {
  /* Basic types are:

      Type                       Size (in bits)
      bool, byte, ubyte, char    8
      short, ushort, wchar       16
      int, uint, dchar, float    32
      long, ulong, double        64
      real                       >= 64 (commonly 64 bits, but 80 bits in some CPU's)

    More details here: https://dlang.org/spec/type.html
  */

  // Big numbers can have a '_' to improve readability
  int i = 69_420_000;
  bool b = true;
  byte B = 64;

  writefln("Damn bro I want %d millions dollars", i);
  writeln("Max int: ", int.max);
  writeln("Min int: ", int.min);
  writeln("Max byte: ", byte.max);
  writeln("Min byte: ", byte.min);
  writeln("Max bool: ", bool.max);
  writeln("Min bool: ", bool.min);

  // `auto` can be used for type inference
  auto name = "Juan";
  writeln(name, " 🐎");
  writefln("`name` is type `%s`", typeid(name));

  // `if` block
  if (b) {
    writeln("Yes");
  } else if (B < 64) {
    writeln("No.");
  } else {
    writeln("Ñ");
  }

  // `for` block
  writeln("Counting...");
  for (auto iter = 0; iter < 10; ++iter) {
    writeln(iter);
    
    if (iter == 9) writeln("Done.");
  }

  // `foreach` block
  auto animals = [ "cat", "dog", "elephant", "c a p y b a r a" ];
  writeln(typeid(animals));
  foreach (animal; animals) {
    writeln(animal);
  }

  write("Input a number: ");
  int input;

  // `try` block
  try {
    input = to!int(chomp(readln()));
  } catch (ConvException) {
    write("Please, input a valid number: ");
    input = to!int(chomp(readln()));
  }

  // `switch` block
  switch (to!int(input)) {
    case 0: .. case 9: {
      writeln("Number is between 0 to 9");
      break;
    }

    case 10: {
      writeln("Number is 10");
      break;
    }

    default: {
      writeln("Number is unknown");
      break;
    }
  }
}