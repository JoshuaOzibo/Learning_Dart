
// import http/http.dart as http;
// import 'package:http/http.dart' as http;


void main() async {
  // Maps Key/Value Pairs
  var toppings = {
    "John": "Pepperoni",
    "Mary": "Cheese",
  }; //note john and mary are keys while pepperoni and cheese are values;
  // print(toppings["John"]);

  // Show Values:
  // print(toppings.values);

  // Show Keys
  // print(toppings.keys);

  // Show Length
  // print(toppings.length);

  // Add Something
  // toppings["Tim"] = "Sausage";

  // Add Many things
  toppings.addAll({"joshua": "ozibo", "michael": "chinedu"});

  // Remove Something
  toppings.remove("michael"); // Note you can only remove key pairs

  // Remove Everything
  toppings.clear();
  print(toppings);

  List<Map<String, String>> marks = [ // list of map more like array of object in javascript
    {"josh": "10"},

    {"mark": "20"},

    {"sam": "30"},
  ];

  marks.map((e){
    e.forEach((key, value){
      print("$key, $value");
    });
  }).toList();

  // print(marks["sonner"] == null ? "this key dosent exist" : "is there");


// final result = await getResult();

// print(result);
  
}


// Future<List<Map>> getResult() async {
//     return Future.delayed(Duration(seconds: 2));
//   }
