void main() {
  final bookInfo = Book('Joshua', 200, "the evil that men do", 2004);
  final magazine = Magazine(222, 'poor dog', 2010);
  bookInfo.getDetails();
  magazine.getDetails();

  final employeeDetails = Employee('Joshua', 20);
  final managerDetails = Manager('Tech', 'samson', 1000);
  final developerDetails = Developer('python', 'James', 0);
  developerDetails.printEmployeeInfo(employeeDetails);

  // employeeDetails.setSalary= 5000;
  // print(employeeDetails.getSalary);
  // print(managerDetails.getSalary);
  // print(managerDetails.department);
  // print(managerDetails.setSalary = 20000);
  // print(managerDetails.getSalary);
  // developerDetails.printEmployeeInfo(Developer('python', 'josh', 5));



  final userInfo = User('Josh');
 print(userInfo.getPassword);

 final checkBank = BankAccount(20);
 final intrest = SavingsAccount(200, checkBank._balance);
 final checkAcc = CheckingAccount(20, 8);

 checkBank.deposit(500);

 checkBank.withdraw(100);
 intrest.addInterest();
 checkAcc.deposit(4000);
 print(checkBank.getBalance);
  
}

// 🚀 Advanced OOP Test – Dart
// Q1
abstract class LibraryItem {
  String title;
  int year;

  LibraryItem(this.title, this.year);

  void getDetails();
}

class Book extends LibraryItem {
  String author;
  int pages;

  Book(this.author, this.pages, String title, int year) : super(title, year);

  @override
  void getDetails() {
    print(
      'name of author $author, total pages $pages, title of the book $title year $year',
    );
  }
}

class Magazine extends LibraryItem {
  int issueNumber;
  Magazine(this.issueNumber, String title, int year) : super(title, year);

  @override
  void getDetails() {
    print(
      'issueNumber $issueNumber, title $title year the book was produced $year',
    );
  }
}

// Q2
class Employee {
  String _name;
  int _salary;
  Employee(String name, int salary) : _name = name, _salary = salary;

  set setSalary(int amount) {
    if (amount <= 0) {
      print('Amount must be greater than 0');
      return;
    }
    _salary += amount;
  }

  int get getSalary => _salary;
}

class Manager extends Employee {
  String department;
  Manager(this.department, super._name, super._salary);
}

class Developer extends Employee {
  String programmingLanguage;
  Developer(this.programmingLanguage, super._name, super._salary);

  void printEmployeeInfo(Employee e) {
  print('Name: ${e._name}, Salary: ${e.getSalary}');
  if (e is Manager) {
    print('Role: Manager, Department: ${e.department}');
  } else if (e is Developer) {
    print('Role: Developer, Language: ${e.programmingLanguage}');
  }
}
}

// Q3
abstract class Shape {
  int area();
  void perimeter();
}

mixin Resizable {
  resize(int factor);
}

class Square extends Shape with Resizable {
  int resize(int factor) {
    return factor * factor;
  }

  @override
  area() {
    return resize(100);
  }

  @override
  void perimeter() {}
}

class Circle extends Shape with Resizable {
  int resize(int factor){
    return factor * factor;
  }
  @override
  int area() {
    return resize(200);
  }

  @override
  void perimeter() {}
}

// Q4
class User{
  String _password;

  User(String password): _password = password;


 String get getPassword => '*' * _password.length ;

  set setPassword (String passCode) {
    if(passCode.length < 6){
      print('password must be greater than 6');
      return;
    }
    _password += passCode;
  }
}

class Admin extends User {
  
  Admin(super.password);

  resetPassword(User user){
    user._password = 'default123';
    print('user password reset');
  }
}


// Q5
class BankAccount {
  int _balance;
  BankAccount(this._balance);
  deposit(int amount){
    if(amount <=0){
      print('amount must be greater than zero');
    }

    _balance += amount;
  }

  withdraw(int amount){
    if(amount > _balance){
      print('insulficient fund');
    }else {
      _balance -= amount;
    }
  }

  int get getBalance => _balance;
}

class SavingsAccount extends BankAccount{
  int interestRate;
  SavingsAccount(this.interestRate, super._balance);
  addInterest(){
    _balance += interestRate;
  }
}

class CheckingAccount extends BankAccount{
  int overdraftLimit;
  CheckingAccount(this.overdraftLimit, super._balance);

  @override
  withdraw(int amount) {
    return super.withdraw(amount);
  }
}