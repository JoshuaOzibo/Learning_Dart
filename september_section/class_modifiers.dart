void main(){
  Animal animal = Dog();

  switch(animal){
    case Dog():
    print('Dog');
    case Cat():
    print('Cat');
    case Human():
    print('Human');
  }

}

sealed class Animal {}

class Human implements Animal{}
class Dog implements Animal{}
class Cat implements Animal{}


// other modifiers 
sealed class Animal1 {}
final class Animal2 {}// Note that final class cant be extended by a class, except we use either sealed, final or base class;
base class Animal3 {} // Note that base class cant be extended by a class, except we use either sealed, final or base class;
interface class Home {}

// example:
sealed class Human1 extends Animal3{}
sealed class Human2 extends Animal2{}
class Human3 implements Home{}