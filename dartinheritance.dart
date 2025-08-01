import 'dart:ffi';

void main(){
  // Inheritance
  // implement
  // abstract
  // object oritented programming (oop);


  // when to use inheritance is when we want to achieve relation e.g(all car are vehicle but all car are not thesame but they have similarities like tires , engine etc...)

  Car car = Car();
  print(car.isEngineWorking);



  // SomeClass someClass = SomeClass();
  print(SomeClass().accelerate());



}


class Vehicle {
  int speed = 10;
  bool isEngineWorking = false;

  void accelerate(){
     speed += 30;
   
  }
}

class Car extends Vehicle { // this means we are extending(inheriting) the functionality of the vehicle ... meaning we want thesame functionality from vehicle class in car class
  int numOfWheels = 4;

 void printSomething() {
    print(numOfWheels);
  }
}

class SomeClass extends Vehicle {

 int accelerate (){
     speed += 10;
     return speed;
  }
}



// Object Oriented Programming
// types of oop
// Polymorphism // this is the ability of an object to take on many forms
class Animal {
  void sound(){
    print('Animal making sound');
  }
}

class Dog extends Animal{
  void sound(){
    print('Dog making sounds');
  }
}

class Cat extends Animal {
  @override
  void sound(){
    print('Cat making sound');
  }
}
// Abstraction
// Inheritance
// Encapsulation