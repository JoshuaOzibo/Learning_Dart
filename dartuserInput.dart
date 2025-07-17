import "dart:io";


// void main(){
//     // user input
//     print("enter your name:");

//     // allow user to enter something...
//     var name = stdin.readLineSync(); // note that this is for only string; if int it will throw an error;

//     print("hello $name");
    
// }


// user input type conversion
// void main(){

//     print("Enter a number");
//     var num = stdin.readLineSync();
//     var result = int.parse(num ?? "0");

//     print(result + 10);
// }

/** Task */

void main(){
    int num = 1;
    
    for(var i = 1; i <= 100; i++){
       if(i % 2 == 0 && i % 3 == 0){
            print("$i fizz buzz");
       }else if(i % 2 == 0){
        print("$i fizz");
       }else if(i % 3 == 0){
        print("$i buzz");
       }
    }

    // print("helo");
}