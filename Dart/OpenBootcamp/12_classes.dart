class Person {
  String name;
  int _age;

  Person(this.name, this._age);

  int get age => this._age;

  set age(int age) {
    if (age > 0) {
      this._age = age;
    } else {
      throw Error();
    }
  }

  void greet() {
    print("Hi! My name is ${this.name} and I'm ${this._age}yo!");
  }

  void say(String message) {
    print("${this.name}: $message");
  }
}

void main() {
  final me = Person("Miqueas", 22);
  me.greet();
  me.say("hey!");
  me.say("wanna try Dart?");
}