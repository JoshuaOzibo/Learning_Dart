void main() {
  var printData = Car();

  printData.accelerate();
}

class OtherClass {
  bool isEngineWorking = false;
  bool isLightOn = true;
  int noOfWheels = 10;
}

class Vehicle {
  int noOfWheels = 4;
  void accelerate() {
    print('accelerateing ');
  }
}
// Note: we can extend and implement two different classes , but we cant implement two thesame class

class Car extends OtherClass implements Vehicle {
  @override
  int noOfWheels = 6;

  @override
  void accelerate() {
    print(isEngineWorking);
    print(isLightOn);
    print(noOfWheels);
  }
}

class Truck implements OtherClass {
  @override
  bool isEngineWorking = true;

  @override
  bool isLightOn = true;

  @override
  int noOfWheels = 15;

  void accelerate() {
    print('accelerateing Truck ');
  }
}



// class Bike extends Vehicle {
//   int numberOfWheels = 2;

//   void printSomething(){
//     print(numberOfWheels);
//   }
// }


