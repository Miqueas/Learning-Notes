void main() {
  // About the null safety in Dart, any variable can't be `null` (except if
  // you indicates it):
  //   int h;
  //   print(h); // Error!

  // Also there's no default values in Dart, the only default value is `null`
  // and follows the above rule.
  int? h;
  print(h); // Ok
}