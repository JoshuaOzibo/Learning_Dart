import "dart:io";


void main(){
    // user input
    print("enter your name:");

    // allow user to enter something...
    var name = stdin.readLineSync(); // note that this is for only string; if int it will throw an error;

    print("hello $name");
    
}