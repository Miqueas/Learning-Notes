void main() {
  // `const` can also be used to create "constant values"
  var foo = const [];
  // This isn't allowed (runtime error):
  //   foo[0] = true;
  //   foo[1] = false;
  // Cuz foo has an immutable value

  // But this is allowed
  foo = [ true, false ];
  print(foo);
}