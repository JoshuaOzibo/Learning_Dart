import 'dart:ffi';

void main() {
  final productData = Product('Clothes', 500);
  final electronicsData = Electronics(2000, 'electric', 2500);

  productData.setPrice = 300;
  print(productData.getPrice);
  print(electronicsData.getPrice);

  final teacherInfo = Teacher(true, 40, 'mrs yoro');
  final studentInfo = Student(false, 15, 'sam');

  print(teacherInfo.introduce());
  print(studentInfo.introduce());

  Account accountInfo = Account(200);

  // accountInfo.deposit(300);
  // accountInfo.withdraw(100);
  // print(accountInfo._balance);

  accountInfo = SavingsAccount(300);
  print(accountInfo.withdraw(50));

  final savingInfo = SavingsAccount(300);
  final checkingAcc = CheckingAccount(30, 700);
  print(savingInfo.addIntrest(40));
  print(
    savingInfo.printAccountDetails(
      savingInfo.addIntrest(30),
      SavingsAccount(20),
    ),
  );
  print(
    checkingAcc.printAccountDetails(
      checkingAcc.overdraftLimit,
      CheckingAccount(3, 1000),
    ),
  );


  // Q5 answer
  final securityInfo = PasswordManager('');
  final securityTypeInfo = Admin('');

  securityInfo.setPassword = 'Joshuachinedu';
  securityTypeInfo.resetPasswors(Admin('Joshua'), 'default123');
  print(securityInfo.getPassword);
  // print(securityTypeInfo.resetPasswors(Admin, 20));
}

// Q1 Vehicle system
abstract class Vehicle {
  String brand;
  int year;

  Vehicle(this.brand, this.year);
  start();
  stop();

  void displayInfo() {
    print('car brand $brand year of production $year');
  }
}

mixin class Electric {
  void chargeBattery() {}
}

class Car extends Vehicle with Electric {
  int numOfDoors;
  Car(this.numOfDoors, super.brand, super.year);

  @override
  start() {
    throw UnimplementedError();
  }

  @override
  stop() {
    throw UnimplementedError();
  }
}

class Bike extends Vehicle {
  bool hasCarrier;
  Bike(this.hasCarrier, super.brand, super.year);

  @override
  start() {}

  @override
  stop() {}
}

// Q2 E-Commerce
class Product {
  String _name;
  double _price;

  Product(String name, double price) : _name = name, _price = price;

  static applyDiscount(double price, double percent) {
    return price * (percent / 100);
  }

  double get getPrice => _price;
  set setPrice(int amount) {
    if (amount <= 0) {
      print('amount cannot be less than zero');
      return;
    }
    _price += amount;
  }
}

class Electronics extends Product {
  Electronics(this.WarrantyInYears, super.name, super.price);

  double WarrantyInYears;
}

class Clothing extends Product {
  Clothing(this.size, super.name, super.price);

  double size;
}

// Q3 School System

abstract class Person {
  String name;
  int age;
  Person(this.age, this.name);
  introduce();
}

class Teacher extends Person {
  bool hasSubject;
  Teacher(this.hasSubject, super.age, super.name);

  @override
  introduce() {
    return '${this.runtimeType} name $name, age $age and has subject now $hasSubject';
  }
}

class Student extends Person {
  bool hasGrade;
  Student(this.hasGrade, super.age, super.name);
  @override
  introduce() {
    return '${this.runtimeType} name $name, age $age student has grade $hasGrade';
  }
}

//Q4 Banking (Polymorphism);
class Account {
  double _balance;
  Account(double balance) : _balance = balance;

  double deposit(int amount) {
    return _balance += amount;
  }

  double withdraw(int amount) {
    return _balance -= amount;
  }
}

class SavingsAccount extends Account {
  SavingsAccount(super.balance);
  double addIntrest(double rate) {
    return _balance / rate;
  }

  printAccountDetails(Account, e) {
    return '${e.runtimeType} account with ${Account}% intreast, current balance $_balance';
  }
}

class CheckingAccount extends Account {
  int overdraftLimit;
  CheckingAccount(this.overdraftLimit, super.balance);
  printAccountDetails(Account, e) {
    return '${e.runtimeType} account with overdrift of ${Account} current account balance ${_balance}';
  }
}

//Q5 Security
class PasswordManager {
  String _password;
  PasswordManager(this._password);

  String get getPassword => '*' * _password.length;
  set setPassword(String passKey) {
    if (passKey.length <= 6 && _password.length <= 6) {
      print('password must be greater or equal to 6');
      return;
    }

    _password += passKey;
  }
}

class Admin extends PasswordManager {
  Admin(super._password);

  resetPasswors(Admin, e) {
    
    return super._password += e._password;
  }
}
