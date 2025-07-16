void main(){
    // Maps Key/Value Pairs
    var toppings = {"John": "Pepperoni", "Mary": "Cheese"}; //note john and mary are keys while pepperoni and cheese are values;
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
    toppings.addAll({"joshua":"ozibo", "michael": "chinedu"});

    // Remove Something
    toppings.remove("michael"); // Note you can only remove key pairs

    // Remove Everything
    toppings.clear();


    print(toppings);
}