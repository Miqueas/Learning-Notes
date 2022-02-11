import std.stdio;

struct Person {
  string name;
  uint age;
  bool can_vote;

  // Custom constructor for Person
  this(uint age, string name) {
    this.age = age;
    this.name = name;
    this.can_vote = (age >= 18) ? true : false;
  }

  void greet() {
    writeln("Hi, my name is ", this.name, " and I'm ", this.age, "yo!");
  }

  void say(string msg = "yo!") {
    writeln(this.name, ": ", msg);
  }
}

void main() {
  auto j = Person(32, "Juan");
  writeln(j);
  j.greet();
  j.say();
  j.say("wanna try D?");
}