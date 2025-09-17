void main() {
  // list of maps

  Map<String, int> studentA = {"Math": 10, "Eng": 20, "Phy": 30};
  Map<String, int> studentB = {"Math": 6, "Eng": 50, "Phy": 20};
  Map<String, int> studentC = {"Math": 30, "Eng": 60, "Phy": 90};

  List<Map<String, int>> studentList = [
      studentA,
      studentB,
      studentC,
  ];

// map them to a list so we can get each values using forEach
final mapdata =studentList.map((e){
  e.forEach((key, value){
    print('$key: $value');
  });
}).toList();

print(mapdata);


}
