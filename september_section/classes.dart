void main(){
  final cookie = Cookie('Rectangle');
  print(cookie.calculate());

  cookie.modifyHeight(20);

  print(cookie.height);
  print(cookie._height);
  print(cookie.setHeight = 100);
}


class Cookie {
  String shape;

  Cookie(this.shape){
    baking();
    isBakingStarted();
    calculate();
  }


  // private variable
  int _height = 4;
  int _width = 4;

  int calculate(){
    return _height * _width;
  }


  // Getters  // this is a read only value , we cant modify it outside of this 
  int get height => _height;


  set setHeight (int h){
     _height = h;
  }
  void modifyHeight(int h) => _height = h; // this is a good example to edit a private variable

  void baking(){
    print('baking started');
  }

  bool isBakingStarted(){
    return true;
  }
}