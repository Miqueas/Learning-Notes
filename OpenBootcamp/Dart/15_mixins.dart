mixin Runner {
  void run() {
    print("Running at max speed!");
  }
}

class Car with Runner {
  String model;

  Car(this.model);
}

void main() {
  final c = Car("Ford Fiesta");
  c.run();
}