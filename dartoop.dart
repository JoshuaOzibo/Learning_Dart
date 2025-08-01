
void main(){
  // Inheritance
  Animal animal = Dog();

animal.sound(); // Dog making sounds
  animal = Cat();
animal.sound(); // Cat making sound




  // implement
  // abstract
  // encapsulation
  Person person = Person('John', 30);
  person.age = 25; // allowed, age is public

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
  @override
  void sound(){
    print('Dog is barking');
  }
}

class Cat extends Animal {
  @override
  void sound(){
    print('Cat making sound');
  }
}
// Abstraction // this is the concept of hiding the complex implementation details and showing only the essential features of the object


// Inheritance // this is the mechanism of basing an object or class upon another object or class, retaining similar implementation
// extract the common properties and methods into a base class

// Encapsulation // this is the bundling of data with the methods that operate on that data, restricting direct access to some of the object's components
// this is done by using private and public access modifiers

class Person {
  String _name;
  int age;

  Person(this._name, this.age);

  void _display({required $_name, required $age}) {
    print("Name: $_name, Age: $age");
  }
}
