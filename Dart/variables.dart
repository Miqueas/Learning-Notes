/* Built-in types:

  - Numbers: int, double
  - Strings: String
  - Booleans: bool
  - Arrays: List
  - Sets: Set
  - Maps: Map
  - Runes: Runes
  - Symbols: Symbol
  - The `null` value: Null

*/

void main() {
  // The type is inferred
  var name = "Jhon";
  // Use `Object` or `dynamic` if a variable isn't restricted to one type
  Object e = 29;
  // Note that the string type is capitalized
  String a = "$name Doe";

  print("Hello, I'm $a");
  print("I'm ${e}yo");

  e = true;
  print("e = $e");

  e = name;
  print("e = $e");

  // `final` and `const`
  // A `final` variable is immutable, after it has a value, can't change
  // A `const` variable is like `final` but needs to be known at compile-time
  final finalVar;
  const constant = 3.14159;
  finalVar = [ 2, 4, 6, 8 ];

  print(finalVar);
  print(constant);

  // `late` variables, this kind of variables are created with the keyword
  // `late` and indicates that is a variable initialized after the declaration
  late String h;
  h = "Hh";
  print(h);
}