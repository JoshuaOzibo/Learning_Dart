void main(){
  int getNum = Constants.myMethod();
 print(getNum);
}



class Constants {
  static String greetings = 'Hello sam how are you';
  static int myNumber = 200;
  static bool isTrue = true;
  static int myMethod(){
    return myNumber;
  }
  static String name = 'Joshua';
}