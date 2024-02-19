class Car {
  String model;

  Car(this.model);

  void run() {
    print("Running!");
  }
}

extension CarStop on Car {
  void stop() {
    print("Stopped!");
  }
}

void main() {
  final c = Car("Ford Fiesta");
  c.run();
  c.stop();
}