void main() {
  final printSomething = Truck();

  print(printSomething.numberOfWheels);
  printSomething.accelerate();
}

abstract class Vehicle {
  void accelerate();
  int numberOfWheels = 4;
}

class Car extends Vehicle {
  @override
  void accelerate() {
    print('accelerating $numberOfWheels');
  }
}

class Truck implements Vehicle {
  @override
  void accelerate() {
    print('accelerating');
  }

  @override
  int numberOfWheels = 6;
}
