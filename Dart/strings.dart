void main() {
  var name = "Miqueas";
  // Dart concatenation is done this way
  var greet = "Hi, my name is " + name;
  // or this way
  var bye = "See ya, " "later!";
  // or you just can use string interpolation
  var age = "$greet and I'm 21'yo!";

  print(name);
  print(greet);
  print(bye);
  print(age);
}