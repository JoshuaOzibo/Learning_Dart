void main() {
  //Object Oriented Programming (oop)

  // concepts in oop
  // 1 Polymorphism
  Animal cat = Cat();
  cat.sound();

  cat = Dog();
  cat.sound();
  


  // 2 Abstraction
  Bird birdFeature = Chicken();
  birdFeature.feature();
  Bird bird = Duck();
  bird.feature();
  // 3 Inheritance
  // 4 Encapsulation

  // 1 Polymorphism : this is the ability of an object to take on many forms
}

class Animal {
  void sound() {
    print('Animal making sounds');
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print('Cat making sound');
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print('Dog making sound');
  }
}

abstract class Bird {
  void feature();
}

class Chicken extends Bird{
  @override
  void feature(){
    print('chicken cannot fly');
  }
}
class Duck extends Bird{
  @override
  void feature(){
    print('Duck cannot fly');
  }
}
