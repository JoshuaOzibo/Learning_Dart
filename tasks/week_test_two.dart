void main() {
  // 1 print highest num
  List<int> integers = [3, 7, 2, 9, 5];
  int funcThatReturnMax(List<int> number) {
    return number.reduce((a, b) => a > b ? a : b);
  }

  // print(funcThatReturnMax(integers));

  // 2 reverse a list of string
  List<String> listOfString = ["apple", "banana", "cherry"];
  List<String> funcReverse(List<String> stringVal) {
    return stringVal.reversed.toList();
  }

  // print(funcReverse(listOfString));

  // 3
  List<int> intList = [1, 2, 3, 4, 5];
  intList.remove(3);
  // print(intList);

  // 4 Create a function that takes a list of numbers and returns only the even numbers
  evenFunc(List<int> numbers) {
    numbers.forEach((intNum) {
      if (intNum % 2 == 0) {
        // print(intNum);
      }
    });
  }

  evenFunc([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);

  //5 Write a function that sums all numbers in [10, 20, 30, 40]
  int sunFunc(List<int> numbers) {
    return numbers.reduce((a, b) => a + b);
  }

  // print(sunFunc([10, 20, 30, 40]));

  // 6 Write a program that prints each item in the list ["pen", "book", "laptop"] with its index;
  indexFunc(List<String> word) {
    var indexData = word.indexed.toList();
    indexData.forEach((item) {
      // print('${item.$2} index of ${item.$1}');
    });
  }

  indexFunc(["pen", "book", "laptop"]);

  // 7 Create a function that merges two lists [1, 2, 3] and [4, 5, 6]
  List<int> mergeFunc(List<int> num1, List<int> num2) {
    return [...num1, ...num2];
  }
  // print(mergeFunc([1, 2, 3], [4, 5, 6]));

  // 8 Write a program that removes duplicates from [1, 2, 2, 3, 4, 4, 5]
  void removeDublicate(List<int> numbers) {
    // print(numbers.toSet().toList());
  }
  removeDublicate([1, 2, 2, 3, 4, 4, 5]);

  // 9 Write a function that takes a list of names and sorts them alphabetically
  void takesNames(List<String> names) {
    names.sort();
    // print(names);
  }

  takesNames(['joshua', 'sam', 'hero', 'adamu', 'musa', 'audu']);

  // 10 Write a program that prints the second-largest number from [12, 45, 7, 34, 23]
  secondLargest(List<int> numbers) {
    // var largestNum = numbers.reduce((a, b) => a > b ? a : b);
    // var secondLargest = numbers.where((x) => x != largestNum);
    // print(secondLargest.reduce((a, b) => a > b ? a : b));
    numbers.sort();
    // print(numbers[numbers.length - 2]);
  }

  secondLargest([12, 45, 7, 34, 23]);

  // Maps
  // 11 Create a map of {"name": "John", "age": 25, "city": "Lagos"} and print the keys only
  Map<String, dynamic> mapOfName = {"name": "John", "age": 25, "city": "Lagos"};
  // print(mapOfName.keys);

  // 12 Create a function that takes a map of students {"John": 80, "Jane": 95, "Tom": 70} and returns the student with the highest score
  mapOfStud(Map<String, int> students) {
    return students.entries.reduce((a, b) => a.value > b.value ? a : b);
  }

  // print(mapOfStud({"John": 80, "Jane": 95, "Tom": 70}));

  // 13 Write a program that counts how many times each letter appears in "banana"
  repeatFunc(String value) {
    Map<String, int> newBanana = {};
    var stringVal = value.split('');
    for(var letter in stringVal){
      newBanana[letter] = (newBanana[letter] ?? 0 ) + 1;
    }

    // print(newBanana);
    
  }

  repeatFunc('Banana');

  // 14 Create a map of 3 products with prices, then print only the products that cost more than 50
  Map<String, int> products = {'Garri': 20, 'bread': 150, 'rice': 500};
  products.forEach((key, value) {
    if (value > 50) {
      // print('$key : $value');
    }
  });

  // 15 Write a function that checks if a given key "email" exists inside: {"name": "Sam", "age": 30, "city": "Abuja"}
  checkKey(String key) {
    Map<String, dynamic> lists = {"name": "Sam", "age": 30, "city": "Abuja"};
    return lists.containsKey(key);
  }
  // print(checkKey('email'));

  // 16 Write a program that merges two maps: {"a": 1, "b": 2} and {"c": 3, "d": 4}
  void mergeTwoMaps() {
    Map<String, int> item1 = {"a": 1, "b": 2};
    Map<String, int> item2 = {"c": 3, "d": 4};
    Map<String, int> emptyMap = {...item1, ...item2};
    // print(emptyMap);
  }

  mergeTwoMaps();

  // 17 Write a program that removes the entry "age" from {"name": "Lily", "age": 19, "city": "Enugu"}
  removeEntFunc(String key) {
    Map<String, dynamic> items = {"name": "Lily", "age": 19, "city": "Enugu"};
    items.remove(key);
    // print(items);
  }

  removeEntFunc('age');

  // 18 Create a function that returns all the values of a map:{"red": "#FF0000", "green": "#00FF00", "blue": "#0000FF"}
  returnValueFunc() {
    Map<String, String> itemColors = {
      "red": "#FF0000",
      "green": "#00FF00",
      "blue": "#0000FF",
    };
    itemColors.forEach((key, value) {
      // print(value);
    });
  }

  returnValueFunc();

  // 19 Write a function that updates the score of "Tom" to 90
  funcUpdate() {
    Map<String, int> student = {"John": 80, "Jane": 95, "Tom": 70};
    student['Tom'] = 90;
    // print(student);
  }

  funcUpdate();

  // 20 Create a map of countries and capitals, then print them in the format: Nigeria → Abuja
  funcCountriesCapital() {
    Map<String, String> countriesCapital = {
      "Nigeria": "Abuja",
      "Ghana": "Accra",
      "Kenya": "Nairobi",
    };
    countriesCapital.forEach((key, value) {
      // print('$key → $value');
    });
  }

  funcCountriesCapital();

  // 21 Create a function that converts two lists into a map:
  listToMap() {
    var firstItem = ["name", "age", "city"];
    var secondItem = ["Joshua", 22, "Lagos"];

    var result = Map.fromIterables(firstItem, secondItem);
    // print(result);
  }

  listToMap();

  // 22 Write a program that counts how many students passed (score >= 50) from: {"Sam": 45, "Mary": 78, "John": 50, "Anna": 90}
  funcPass() {
    Map<String, int> studentScore = {
      "Sam": 45,
      "Mary": 78,
      "John": 50,
      "Anna": 90,
    };
    studentScore.forEach((key, value) {
      if (value >= 50) {
        // print('$key : $value');
      }
    });
  }

  funcPass();

  //23 Write a function that takes a map of students and returns a list of only the names.
  funcNames() {
    Map<String, int> students = {"Sam": 45, "Mary": 78, "John": 50, "Anna": 90};
    students.forEach((key, value) {
      // print(key);
    });
  }

  funcNames();

  // 24 Given a list of numbers [1, 2, 3, 4, 5], create a map where each number is the key and its square is the value. Expected: {1: 1, 2: 4, 3: 9, 4: 16, 5: 25}
  List<int> listOfNum = [1, 2, 3, 4, 5];
  Map<int, int> emptyNum = {};

  listOfNum.map((item) {
    emptyNum[item] = item * item;
  }).toList();

  // print(emptyNum);

  // 25 Write a program that finds the most common word in: ["apple", "banana", "apple", "orange", "banana", "apple"]

  // 26 Write a function that takes a map of products {"pen": 10, "book": 50, "bag": 150} and returns the total price of all items.
  mapProducts() {
    Map<String, int> products = {"pen": 10, "book": 50, "bag": 150};
    // products.entries.reduce((a, b) => a.value + b.value)
    // print(products.values.reduce((a, b) => a + b));
    var value = products.entries.map((num) => num.value);
    // print(value.reduce((a, b) => a + b));
  }

  mapProducts();

  //  27 Create a program that finds the longest name from:
  getLongestString() {
    var names = ["John", "Elizabeth", "Sam", "Alexander"];
    var longest = names.reduce((a, b) => a.length > b.length ? a : b);
    // print(longest);
  }

  getLongestString();

  // 28 Write a function that removes all odd numbers from a list [1, 2, 3, 4, 5, 6, 7];
  removeOdd() {
    var numbers = [1, 2, 3, 4, 5, 6, 7];
    var newNum = [];
    numbers.map((num) {
      if (num % 2 == 0) {
        newNum.add(num);
      }
    }).toList();

    // print(newNum);
  }

  removeOdd();

  // 29 Write a program that groups students by grade: {"John": "A", "Sam": "B", "Lily": "A", "Anna": "C"}
  studentGrade() {
    var grade = {"John": "A", "Sam": "B", "Lily": "A", "Anna": "C"};
    var newItem = {};
    grade.forEach((key, value ){
      newItem.putIfAbsent(key, () => []).add(value);
    });

    // print(newItem);
  }

  studentGrade();

  // 30 Write a function that prints each student’s name with their score: Write a function that prints each student’s name with their score:
  nameScore() {
    var student = {"Mary": 85, "Sam": 70, "John": 92};
    student.forEach((key, value) {
      // print('$key scored $value');
    });
  }

  nameScore();

  // Mini project : Student Grade Manager
  // a Use a list of maps to store student info. Example:
  List<Map<String, dynamic>> studentInfo = [
    {"name": "Sam", "score": 45},
    {"name": "Mary", "score": 78},
    {"name": "John", "score": 50},
  ];
  // Add a function to add a new student.
  addStud(List<Map<String, dynamic>> studentData) {
    studentData.add({"name": "Joshua", "score": 99});
    // print(studentData);
  }

  addStud(studentInfo);

  // Add a function to remove a student by name.
  removeStud(name) {
    studentInfo.removeWhere((student) => student['name'] == name);
    // print(studentInfo);
  }

  removeStud('Joshua');

  findTopScore() {
   var result = studentInfo.reduce((a, b) => a['score'] > b['score'] ? a : b);
   print(result);
  }

  findTopScore();

  passAndFail(){
    for(var item in studentInfo){
      if(item['score'] >= 50){
        print('student ${item['name']} pass with score ${item['score']}');
      }else{
         print('student ${item['name']} fail with score ${item['score']}');
      }
    } 
  }

  passAndFail();
}
