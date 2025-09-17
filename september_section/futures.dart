void main() {
  //Futures (Promises); // in javascript it is also known as promises;
  // Future is a class that represent a function or some computation may complete in a future , and this will produce a result or an error .. Note this is related to asyncronious programming;

  Future<String> getData() async {
   return Future.delayed(Duration(seconds: 2), () async {
     return 'Hello';
   });
  }

  getData().then((val){
    print(val);
  });
}
