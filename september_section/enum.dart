void main() {
  // Enums // Enumerations

  final employee1 = Employee('josh', EmployeeType.swe);
  final employee2 = Employee('sam', EmployeeType.finance);
  final employee3 = Employee('mich', EmployeeType.marketing);

  employee3.func();
  employee2.func();
  employee1.func();
}

enum EmployeeType { 
  swe(2000), 
  finance(1500), 
  marketing(1000);

  final int salary;
  const EmployeeType(this.salary);

}

class Employee {
  final String name;
  final EmployeeType type;

  Employee(this.name, this.type);

  void func() {
    switch (type) {
      case EmployeeType.swe:
        print({type.name: type.salary});
      case EmployeeType.finance:
        print({type.name: type.salary});
      default:
       print({type.name: type.salary});
    }
  }
}
