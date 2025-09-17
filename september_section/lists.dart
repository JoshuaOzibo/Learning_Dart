void main() {
  final studentData = Student('ada', 10);
  // print(studentData.name);
  // List

  List<int> list = [10, 20, 30];
  List<String> items = ["Shoes", "Bag", "Laptop"];
final data = items.map((item) {
    return 'Item: $item';
  }).toList();

  print(data);
  print(items);

  // items.forEach((items) {
  //   print(  items);
  // });
  // List student = [
  //   Student('Josh'),
  //   Student('Sam'),
  //   Student('John'),
  //   Student('Polo'),
  //   'String'
  // ];
  final joshName = Student('josh', 20);
  List<Student> student = [
    joshName,
    Student('Sam', 30),
    Student('John', 40),
    Student('Polo', 50),
  ];

  // print(list[1]);

  // student[3] = Student('new Name'); // this is used to update a particular it in the list
  student.add(Student('Joshua', 60)); // add a single item to the list
  student.insert(
    0,
    Student('osama', 70),
  ); // this is used to insert an item to a particular position;
  student.remove(joshName); // this is used to remove this item from the list
  // print(student);

  //filtering student that has grade greater than 50;
  //Todo
  //1. A new list of students empty;
  List<Student> filteredStudents = [];
  //2. run a for loop
  for(int i = 0; i <student.length; i++){
    if(student[i].grade >= 50){
      filteredStudents.add(student[i]);
    }
    // print(filteredStudents);
  }
  //3. check if the grade of 1 student is greater than 50;
  //4. if truw add student to the new empty list of student

  // print(student[1].name);
  // final studentItem = student[4];
  // if(student is Student){
  //   print(studentItem.name);
  // }else{
  //   print(studentItem);
  // }


  // use where instead of for loop

final whereStudent = student.where((studentList) => studentList.grade >= 50);
// print(whereStudent.toList());

// print(student);
}




// Generics
class Student<T> {
  final String name;
  final int grade;

  Student(this.name, this.grade);

  @override
  String toString() => 'Student: $name';
}
