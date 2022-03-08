import std.stdio;

void main() {
  // In D, `string` is just an alias to this: immutable(char)[]
  // That means, strings here basically an array of `char` (like in C)
  // The keyword `alias` isn't for create new data types, is just that,
  // a thing that creates an alias to something, like in Bash:
  alias Age = uint;

  // `Age` is replaced by `uint`
  Age me = 21;
  writeln(me);

  // I think there's not so much interesting things about `alias` so...
  // More info here: https://dlang.org/spec/declaration.html#alias
}