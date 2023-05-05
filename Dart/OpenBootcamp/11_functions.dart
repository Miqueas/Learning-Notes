void main() {
  // For more details about functions, please check out the docs:
  // https://dart.dev/language/functions

  // We now call our defined functions here
  sayHello();
  print("Result (29 + 69): ${add(29, 69)}");
  setFlags(verbose: true);
  createUser(userName: "SomePerson", age: 38);
  greet();

  // Dart also supports anonymous functions, the syntax
  // rules looks like this:
  //   ([[Type] param1[, …]]) {
  //     codeBlock;
  //   };
  // Example:
  var animals = [ "dog", "cat", "bug", "tiger", "lion" ];

  // Note that the type of the parameter is omited, sometimes it's
  // inferred or is just `dynamic`
  animals.forEach((animal) {
    print("Animal: $animal");
  });

  // Functions are also first-class object, so you can pass
  // them as function parameter or set them as a variable
  // value
  var mult = (int x, int y) => x * y;
  print(mult(10, 39));
}


// Dart functions are like functions in other languages,
// except for some differences in the syntax, by example:
//   In some cases, we can omit the return type
//
// * NOTE: even if the return type is `void`, avoid this
// *       kind of code and try to always indicate the
// *       return type
sayHello() {
  print("Hello!");
}

// You can also simplify code in some cases. By example,
// the following code:
//   int add(int x, int y) {
//     return x + y;
//   }
// Can be done like this:
int add(int x, int y) => x + y;

// In Dart I think named parameters are ugly honestly, since
// they need to be surrounded by braces.
//
// * NOTE: named parameters are evaluated different, anything
// *       ensures you that these parameters will have a value.
// *       This is because they aren't positional and, conse-
// *       quently, the compiler will not throw an error. In
// *       fact, named parameters are nullables by design, so...
// *       If you want to prevent `null` values, you can set a
// *       default value or indicate what parameters are
// *       required by using `required`, by example:
void setFlags({bool verbose = false, bool version = false}) {
  print("Verbose: $verbose");
  print("Version: $version");
}

// Another example but using `required` and nullable parameters.
// Note that there's a difference between using `required`,
// default parameter values and nullables:
//   - Nullables: CAN be the desired type or `null`
//   - Default values: CAN'T be `null` and always will have a
//     value, even if you don't pass one
//   - `required`: WILL THROW A COMPILER ERROR if you don't pass
//     a value, the other 2 options don't do that's the main 
//     difference 
void createUser({String? firstName, String? lastName, required String userName, required int age, String? gender}) {
  if (age < 18) {
    print("User need to be 18+");
  } else {
    print("""
Created new user '$userName'.
Aditional data:

-> First name: $firstName
-> Last name: $lastName
-> Gender: $gender
""");
  }
}

// Dart also has support for optional positional parameters,
// I think these also looks weird... But anyway, optional
// parameters are written between brackets and are also
// nullables by design
void greet([String name = "guest"]) {
  print("Hello $name!");
}