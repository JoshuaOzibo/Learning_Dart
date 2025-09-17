void main(){
  print(Car().numberOfWheels);

  final car = Car();
  car.accelerate();
  print(car.speed);
}

class someClass {
  int speed = 10;
  
   
  void accelerate (){
    speed += 30;
  }
}

class Vehicle extends someClass {
  int speed = 18;
  bool isEngineWorking = false;
  bool isLightOn = true;

 @override
  void accelerate(){
    speed += 10;
  }
}

class Car extends Vehicle{
  int numberOfWheels = 4;

  void printSomething() => print(numberOfWheels);
}