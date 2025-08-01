import 'dart:ffi';

void main() {
  // Inheritance
  // implement
  // abstract

  // when to use inheritance is when we want to achieve relation e.g(all car are vehicle but all car are not thesame but they have similarities like tires , engine etc...)

  Car car = Car();
  print(car.isEngineWorking);

  // SomeClass someClass = SomeClass();
  print(SomeClass().accelerate());
}

class Vehicle {
  int speed = 10;
  bool isEngineWorking = false;

  void accelerate() {
    speed += 30;
  }
}

class Car extends Vehicle {
  // this means we are extending(inheriting) the functionality of the vehicle ... meaning we want thesame functionality from vehicle class in car class
  int numOfWheels = 4;

  void printSomething() {
    super
        .accelerate(); // this will call the accelerate method from the Vehicle class
    print(numOfWheels);
  }
}

class SomeClass extends Vehicle {
  int accelerate() {
    speed += 10;
    return speed;
  }
}
