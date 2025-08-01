void main() {
    // classes are blueprint of an objects


    // call the class
    // print(Cookie()); //Instance of 'Cookie' this mean like an object of bookie
    // Cookie().baking();  //Baking has started

    // final cookie = Cookie("Rec", 15.6); // final cookie cannot be reused or modified;
    // cookie.isCompleted();

    // var circle = cookie.shape = "square"; // shape inside the class so its not final meaning it can be modified(can change the value inside);
    // print(circle);


    // calling named constructor
    // final cookie = Cookie(shape: "Rec", size: 15.6);
    // // print(cookie.calculate());

    // // print(cookie.height = 100); // error because we cant modify with getter instead use setter

    // var setValue = cookie.setHeight = 100; // this is used to set || modify the value

    // print(setValue);






    // static variables and static functions call
    final constance = Constants();

    // print(constance.greeting); // if the value inside the class is static then this will not work because it an instance | object;
    print(Constants.greeting);
    print(constance.bye);

    // print static function
    print(Constants.isGetMalt());


}

// to start a function we use camelCase
// in class use PascalCase 


// classes can contain variables, functions
// class Cookie{

//     // variable
//       String shape;
//       double size;

//      // constrictor is something that run whenever we call the instance of the class
//     //  Cookie(this.shape, this.size){  //basic constructor
//     //     print(shape);
//     //     print("cookie constructor called");
//     //     baking();
//     //     isCompleted();
//     //  }
    

//         // Named constructor... it is used when we have many data
//      Cookie({required this.shape, required this.size}){  //basic constructor
//         // print(shape);
//         // print("cookie constructor called");
//         baking();
//      }


//     //  Private variable
//     int _height = 5;  // Private variables are only private in the file and not class
//     int _width = 10;

//     int calculate(){  // this can be used outside the class and it will work
//         return _height * _width;
//     }

//     // Getters
//     int get height => _height; // this is a readonly value (can only read from it and cannot modify from it)
//     // Setters
//     set setHeight(int h){
//         _height = h;
//     }

//     // functions || method
//     void baking(){
//         print("Baking has started with shape of $shape and size of $size");
//     }

//     // another method || function
//     bool isCompleted(){
//         return false;
//     }

// }


class Constants {
//     // static variables // this is used when the class has a constants
    static String greeting = "Hello, how are you";
    String bye = "Bye";


    // static function | method
    static bool isGetMalt(){
        return true;
    }
}