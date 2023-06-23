import std.stdio;

class Person {
  string name;
  ubyte age;

  this(string name, ubyte age) {
    this.name = name;
    this.age = age;
  }

  void greet() {
    writeln("Hi! My name is ", this.name, " and I'm ", this.age, "yo!");
  }

  void say(string message) {
    writeln(this.name, ": ", message);
  }
}

void main() {
  auto me = new Person("Miqueas", 22);
  me.greet();
  me.say("yo!");
  me.say("wanna try D?");

  writeln(me);
}