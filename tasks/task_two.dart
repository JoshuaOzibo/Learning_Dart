void main() {
  // Q1 answers
  // final libraryData = Library();
  // libraryData.addBook('Joshua', 'book of the ring');
  // libraryData.removeBook('The Alchemist');
  // libraryData.findBook('Things Fall Apart');
  // libraryData.listBooks();

  // Q2 answers
  // final cartItem = ShoppingCart();
  // cartItem.addItem('Phone');
  // cartItem.removeItem('Phone');
  // cartItem.viewCart();
  // cartItem.checkout();

  // Q3 answers
  final studentgrade = Student('Joshua');
  studentgrade.averageGrade();
  // studentgrade.printGrades();

  // Q4 answers
  // final transportData = Transport();

  // Q5 answers
  // final accInfo = Account(50);
  // final accData = Bank(50);
  // accInfo.SavingsAccount(40);
  // accData.addAccount('josh', Account(40));

  // print(accInfo._balance);
  // accData.listAccounts();

  // Q6 Answers
  // List<Product> products = [
  //   Product("Shoes", 200),
  //   Product("Bag", 150),
  //   Product("Watch", 300),
  // ];

  // products.forEach((item) {
  //   final price = item.price;
  //   Product(item.name, price).applyDiscount(price);
  // });

  //Q7 answers
  // Employee workInfo = Employee('joshua', 5000);
  // final managerInfo = Manager('IT', 'sam', 4000);
  // final developerInfo = Developer('IT', 'sam', 4000);

  // workInfo.printInfo();
  // managerInfo.printInfo();
  // developerInfo.printInfo();

  //Q8 answers
  final passwordManagerInfo = PasswordManager('josh');

  print(passwordManagerInfo.getPassword);
  passwordManagerInfo.setPassword = 'Joshua123';

  //Q9 answers
  // final classInfo = Classroom(20, 'sam');
  // classInfo.addStudent(StudentBio(50, 'sam'));

  //Q10 answers
  final mathUtil = MathUtil();
  mathUtil.square(5);
  mathUtil.cube(5);
  mathUtil.factorial(5);
}

class Library {
  Map<String, String> _books = {
    "The Alchemist": "Paulo Coelho",
    "Things Fall Apart": "Chinua Achebe",
    "1984": "George Orwell",
  };

  void addBook(title, author) {
    _books[title] = author;
    print('Book $title added successfully');
  }

  void removeBook(title) {
    if (_books.containsKey(title)) {
      _books.remove(title);
    } else {
      print('book by $title cant be removed');
    }
  }

  void findBook(title) {
    //→ prints author if exists, else "Not found"
    if (_books.containsKey(title)) {
      _books.remove(title);
      print('$title found');
    } else {
      print('Book $title not found');
    }
  }

  void listBooks() {
    //→ prints all books
    return _books.forEach((key, value) => print('$key: $value'));
  }
}

// Q2
class ShoppingCart {
  List<String> _items = ["Shoes", "Bag", "Laptop"];

  void addItem(item) {
    _items.add(item);
    print('$item added to the our cart $_items');
  }

  void removeItem(item) {
    _items.remove(item);

    print('item $item has been removed from our cart $_items');
  }

  void viewCart() {
    _items.forEach((item) {
      print(item);
    });
  }

  void checkout() {
    final listOfItems = _items;
    print(listOfItems);
    listOfItems.clear();
    print(listOfItems);
  } // → prints total items then clears cart
}

//Q3
class Student {
  String name;
  Map<String, int> _grades = {"Math": 80, "English": 75, "Science": 90};

  Student(this.name);

  void addGrade(subject, score) {
    _grades[subject] = score;
    print('$subject with $score successfully added');
  }

  void averageGrade() {
    final total = _grades.values.reduce((a, b) => a + b);
    final avg = total / _grades.length;
    print('Average grade: ${avg.floor()}');
  } // → returns average

  printGrades() {
    _grades.forEach((key, value) => print('$key: $value'));
  } //→ prints all subjects & scores
}

//Q4
sealed class Transport {
  Car(int numDoors) {}
  Bike(bool hasCarrier) {}
  Bus(int capacity) {}
  describeTransport(Transport t) {
    print(Transport);
  }
}

// Q5
base class Account {
  double _balance;

  Account(double balance) : _balance = balance;

  void SavingsAccount(int interestRate) {
    print(_balance += interestRate);
  }

  CheckingAccount(int overdraftLimit) {}
}

base class Bank extends Account {
  Bank(super.balance);
  Map<String, Account> _accounts = {};

  addAccount(id, account) {
    _accounts[id] = account;
  }

  void listAccounts() {
    print(_accounts);
  } // → print balances of all accounts
}

//Q6
class Product {
  String name;
  double price;
  Product(this.name, this.price);

  void applyDiscount(double percent) {
    final discount = price * (percent / 100);
    final newPrice = price - discount;
    print('$name new price: $newPrice (after $percent% off)');
  }
}

//Q7
class Employee {
  String name;
  double salary;
  Employee(this.name, this.salary);

  void printInfo() => print('Employee: $name, salary: $salary');
}

class Manager extends Employee {
  String department;
  Manager(this.department, super.name, super.salary);

  @override
  void printInfo() {
    print('Manager: $name, dept: $department, salary: $salary');
  }
}

class Developer extends Employee {
  String language;
  Developer(this.language, super.name, super.salary);
  void printInfo() =>
      print('Developer: $name, language: $language, salary: $salary');
}

//Q8
class PasswordManager {
  String _password;

  PasswordManager(String password) : _password = password;

  set setPassword(String passcode) {
    if (passcode.length < 6) {
      print('Password must be at least 6 characters');
      return;
    }
    _password = passcode;
  }

  String get getPassword => '*' * _password.length;
}

// Q9
class StudentBio {
  String name;
  int age;

  StudentBio(this.age, this.name);
}

class Classroom extends StudentBio {
  List<StudentBio> students = [];
  Classroom(super.age, super.name);
  void addStudent( StudentBio student) {
    students.add(student);
    print(students.first.name);
  }

  void listStudents() {
    print(students);
  }
}

//Q10
class MathUtil {
  void square(int num) {
    print(num * num);
  }

  void cube(int num) {
    print(num * num * num);
  }

  void factorial(int num) {
  int result = 1;
  for (int i = 1; i <= num; i++) {
    result *= i;
  }
  print('Factorial of $num = $result');
}
}
