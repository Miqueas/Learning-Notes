abstract class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

class Employee extends Person {
  int salary;

  Employee(super.name, super.age, this.salary);
}

abstract class Container {
  int maxItems;
  List items;

  Container(this.maxItems) : items = List.filled(maxItems, 0);
}

class Backpack implements Container {
  int _maxItems = 20;
  late List _items;

  Backpack() {
    this._items = List.filled(this._maxItems, 0);
  }

  @override int get maxItems => this._maxItems;
  @override set maxItems(int _maxItems) => throw "Read-only!";

  @override List get items => this._items;
  @override set items(List _items) => throw "Read-only!";
}