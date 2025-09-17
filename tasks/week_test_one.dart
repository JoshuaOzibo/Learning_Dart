void main() {
  //1
  List<int> numbers = [2, 4, 6, 8, 10];
  // print('first item ${numbers.first} last item: ${numbers.last}');

  // 2
  List<String> item = ['Apple', 'Banana', 'Mango'];
  // print(item.length);

  // 3
  List<int> loopNumOne = [5, 10, 15, 20];
  for (var loop in loopNumOne) {
    // print(loop);
  }

  //4
  List<int> doubleEvery = [1, 2, 3, 4];
  for (var loop in doubleEvery) {
    // print(loop * loop);
  }
  //5
  List<int> largest = [3, 9, 2, 7, 5];
  // print(largest.reduce((int a, int b) => a > b ? a : b)); // explain this

  // Maps (Day 3–4)
  //6
  var student = {"name": "Alice", "age": 20, "grade": "A"};
  student.forEach((key, value) {
    // print('${key} : ${value}');
  });

  // 7
  student['school'] = 'High School';
  // print(student);

  //8
  Map<String, String> africaLoop = {
    "Nigeria": "Abuja",
    "Ghana": "Accra",
    "Kenya": "Nairobi",
  };
  // africaLoop.forEach((key, value) {

  // });
  // print(
  //   'The capital of ${africaLoop.keys.first} is ${africaLoop.values.first}',
  // );

  //9
  final checkIfAgeExist = student.keys.contains('age');
  // print(checkIfAgeExist);

  // 10
  var prices = {"apple": 200, "banana": 100, "mango": 150};
  prices.forEach((key, value) {
    if (value > 120) {
      // print('$key : $value');
    }
  });

  // Functions (Day 3–4)
  // 11
  addNumbers(a, b) {
    return a + b;
  }
  // print(addNumbers(5, 8));

  // 12
  isEven(n) {
    // n % 2 ? print('true') : print('false');
  }
  isEven(2);

  // 13
  listFunc(lists) {
    List<int> listOfNum = lists;
    final sumOfList = listOfNum.reduce((a, b) => a + b);
    final average = sumOfList / listOfNum.length;
    // print(average);
  }

  listFunc([1, 2, 3, 4, 5, 6, 7]);

  // 14
  funcReverse(String text) {
    final stringText = text.split('').reversed.join();
    // print(stringText);
  }

  funcReverse('Hello');

  // 15
  funNames(names) {
    List<String> listOfNames = names;
    for (var name in listOfNames) {
      // print('Hello $name');
    }
  }

  funNames(['joshua', 'michael', 'favour', 'james']);

  // Mixing Concepts (Day 7)
  // 21
 List<int> mixLists(List<int> listOfNums) {
    return listOfNums.where((num) => num % 2 == 0).toList();
  }

  // print(mixLists([1, 2, 3, 4, 5, 6, 7, 8, 9]));

  // 22
  Map<String, int> bananaCount(String item) {
    Map<String, int> counts = {};
    for (var letter in item.split('')){
      counts[letter] = (counts[letter] ?? 0 ) + 1 ;
    }
    return counts;
  }

  // print(bananaCount('Banana'));

  // 23
  listOfNamesFunc(names) {
    List<String> listName = names;
   var sorted = [...listName]..sort();
  //  print(sorted);
  }

  listOfNamesFunc(['Joshua', 'samuel', 'osama', 'ada']);

  // 25
  highestScore() {
    var scores = {"John": 80, "Jane": 95, "Tom": 70};
    // print(scores.entries.reduce((a, b) => a.value > b.value ? a : b));
  }

  highestScore();

  // 26
  int factoriaFunc(int num) {
    if(num <= 1) return 1;
    return num * factoriaFunc(num - 1);
  }
  print(factoriaFunc(10));

  // 27
  multiplicationTable(numbers) {
    List<int> num = numbers;
    for (var number in num) {
      // print(number * 5);
    }
  }

  multiplicationTable([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]);

  // 28
  functionItem() {
    List<int> listOne = [1, 2, 3];
    List<int> listTwo = [4, 5, 6];
    List<int> merge = [];

    var add = [...listOne, ...listTwo];
    for(var item in add){
      merge.addAll({item});
    }

    print(merge);
  }

  functionItem();

  // 30
  storeStudFunc(students){
    Map<String, String> studMap = {'Alice': 'A', 'Josh': 'B', 'Mich': 'C', 'Chi': 'D'};
    studMap.forEach((keys, value){
      print('$keys got $value');
    });
  }
  storeStudFunc('');
}

// Methods + Classes (Day 5–6)
// 16
class Car {
  String brand;
  int year;
  Car(this.brand, this.year);

  // 17
  bool isOld() {
    if (year < 2010) {
      return false;
    } else {
      return true;
    }
  }

  display() {
    print('brand name $brand and year $year');
  }
}

// 18
class Person {
  String name;
  int age;
  Person(this.age, this.name);

  void sayHello() {
    print('Hi i am $name');
  }
}

// 19
class Student extends Person {
  double grade;
  Student(super.age, super.name, this.grade);

  showGrade() {
    print('$grade');
  }
}

// 20
class BankAccount {
  double balance;
  BankAccount(this.balance);

  void deposit(amount) {
    balance += amount;
  }

  void withdraw(amount) {
    if (balance < amount) {
      print('insulficient fund');
      return;
    }
    balance -= amount;
  }
}

// 24
class Library {
  List<String> books = ['Book1', 'Book2', 'Book3', 'Book4', 'Book5'];

  void addBook(book) {
    return books.add(book);
  }

  void showBooks() {
    for (var book in books) {
      print(book);
    }
  }
}

// 29
class Rectangle {
  double width;
  double height;
  Rectangle(this.width, this.height);

  void area() {
    print(' Area of a Rectangle is ${width * height}');
  }
}
